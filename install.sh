#!/bin/sh
#
# safe and secure install script.

download() {
    url="https://raw.githubusercontent.com/dylanaraps/promptless"
    url="${url}/master/promptless.sh"

    curl "$url" > ~/promptless.sh || {
        printf '%s\n' "error: Couldn't download promptless." >&2
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

    printf '%s\n' ". '~/promptless.sh'" >> "$rc"
    printf '%s\n' "Installation complete. Relaunch your shell."
}

main "$@"
