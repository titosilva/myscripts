#/usr/bin/env bash

_my_completions () {
    commands=$(ls "$HOME/my/script")

    for c in "$commands"; do
        COMPREPLY+=("$c");
    done;
}

complete -F _my_completions my
