#/usr/bin/env bash

ensure_scripts_folder_exist () {
    [ ! -d "$HOME/my/script" ] && mkdir "$HOME/my/script";
}

if [ "$1" == "add" ]
then
    command_name="$2";
    command_script="${*:3}";

    ensure_scripts_folder_exist;
    echo "$command_script" > "$HOME/my/script/$command_name";

    echo "Added command ${command_name}, which is \"${command_script}\"";
else
    source "$HOME/my/script/$1";
fi

