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
    case "$SHELL" in
        *bash)
            rc=".bashrc"
        ;;

        *zsh)
            rc=".zshrc"
        ;;

        *mksh)
            rc=".mkshrc"
        ;;

        *ksh)
            rc=".kshrc"
        ;;

        *csh)
            rc=".cshrc"
        ;;

        *)
            rc=".profile"
        ;;
    esac

    [[ ! -f ~/$rc || ! -w ~/$rc ]] && {
        printf '%s\n' "error: No shellrc file found for $SHELL" >&2
        exit 1
    }
}

main() {
    download
    get_shell

    printf '%s\n' ". '${PWD}/promptless.sh'" >> "${HOME}/${rc}"
}

main "$@"
