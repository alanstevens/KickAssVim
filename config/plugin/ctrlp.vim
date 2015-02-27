" ctrlp specific settings
APP_URL_BASE = "http://localhost"
APP_URL = "http://localhost:3000"

DEFAULT_APP_HOST = "localhost:3000"

REPORT_SERVER_URL = "http://localhost:8080/jasperserver/services/repository"
REPORT_SERVER_USER_ID = "snet3reports"
REPORT_SERVER_PASSWORD = "snet3reports"

REPORT_SERVER_ASSET_HOST = "http://localhost:3000"

OLD_INTRANET_URL = "http://localhost:82"
OLD_INTRANET_IP = ["127.0.0.1", "10.1.1.236"]

PUBLIC_NAIGLOBAL_SITE = "http://preview.naiglobal.com"

NaiSocialnet::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the webserver when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_view.debug_rjs             = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

  Paperclip.options[:command_path] = '/usr/local/bin'

end


" I have no idea why these defaults don't work for me
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
noremap <C-P> :CtrlP<CR>
inoremap <C-P> :CtrlP<CR>

let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']

" Default to filename searches - so that appctrl will find application controller
let g:ctrlp_by_filename = 1
