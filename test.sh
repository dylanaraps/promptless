#!/usr/bin/env bash
#
# Unit tests for promptless.

test_promptless() {
    . ./promptless.sh
    result="$PS1"
    assert_equals "$result" "➜ "
}

assert_equals() {
    if [[ "$1" == "$2" ]]; then
        ((pass+=1))
        status=$'\e[32m✔'
    else
        ((fail+=1))
        status=$'\e[31m✖'
    fi

    printf ' %s\e[m | %s\n' "$status" "${FUNCNAME[1]/test_} '$1' --> '$2'"
}

main() {
    head="-> Running tests on promptless..."
    printf '\n%s\n%s\n' "$head" "${head//?/-}"

    # Generate the list of tests to run.
    IFS=$'\n' read -d "" -ra funcs < <(declare -F)
    for func in "${funcs[@]//declare -f }"; do
        [[ "$func" == test_* ]] && "$func";
    done

    comp="Completed $((fail+pass)) tests. ${pass:-0} passed, ${fail:-0} failed."
    printf '%s\n%s\n\n' "${comp//?/-}" "$comp"
}

main "$@"
