" save a file with sudo privileges

if has("win32")
else
    command! -bar -nargs=0 SudoW   :silent exe "write !sudo tee % >/dev/null"|silent edit
endif
