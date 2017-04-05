CWD=$(pwd)
BASEDIR=$(cd $(dirname $0); pwd)

TYPESCRIPT_DIR=${CWD}/node_modules/typescript
if [ -s "$1" ]; then
  TYPESCRIPT_DIR=$1
fi
TSSERVER_FILE="${TYPESCRIPT_DIR}/lib/tsserver.js"
TSSERVER_BK_FILE="${TSSERVER_FILE}.bk"

if [ ! -f "${TSSERVER_FILE}" ]; then
  echo "${TSSERVER_FILE} does not exist." >&2
  echo "please execute the following: " >&2
  echo "    npm install typescript" >&2
  exit 1
fi

if [ ! -f "${TSSERVER_BK_FILE}" ]; then
  cp ${TSSERVER_FILE} ${TSSERVER_BK_FILE}
fi

cat << EOF > ${TSSERVER_FILE}
if (typeof ts === "undefined") {
  ts =  {};
}
var ts;
try {
  const NgLanguageServicePlugin = require("@angular/language-service")().default;
  var delegate;
  Object.defineProperty(ts, "createLanguageService", {
    get: function() {
      return function(host, documentRegistry) {
        const ls = delegate(host, documentRegistry);
        const nglsp = new NgLanguageServicePlugin({
          host: host,
          service: ls,
          registry: documentRegistry
        });
        const completionFn = ls.getCompletionsAtPosition;
        const samnticCheckFn = ls.getSemanticDiagnostics;
        ls.getCompletionsAtPosition = (filename, position) => {
          const ngResult = nglsp.getCompletionsAtPosition(filename, position);
          if (ngResult)
            return ngResult;
          return completionFn(filename, position);
        };
        ls.getSemanticDiagnostics = (fileName) => {
          return nglsp.getSemanticDiagnosticsFilter(fileName, samnticCheckFn(fileName));
        };
        return ls;
      }
    },
    set: function(v) {
      delegate = v;
    },
    configurable: true,
    enumerable: true
  });
} catch(e) { }

EOF

cat ${TSSERVER_BK_FILE} >> ${TSSERVER_FILE}
