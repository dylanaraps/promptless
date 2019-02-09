#!/bin/sh
#
# safe and scure install script.

download() {
    url="https://raw.githubusercontent.com/dylanaraps/promptless"
    url="${url}/master/promptless.sh"

    curl "$url" > promptless.sh || {
        printf '%s\n' "error: Couldn't download promptless."
        exit 1
    }
}

get_shell() {
    rc="${HOME}/.${SHELL##*/}rc"

    [ ! -f "$rc" ] &&
       rc="${HOME}/.profile"
}

main() {
    download
    get_shell

    printf '%s\n' ". '${PWD}/promptless.sh'" >> "$rc"
}

main "$@"
