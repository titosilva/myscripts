#/usr/bin/env bash

[ ! -d "$HOME/my" ] && mkdir "$HOME/my";
cp "my.sh" "$HOME/my/my";
chmod 770 "$HOME/my/my";
cp "my.sh" "$HOME/my/my_complete";
chmod 770 "$HOME/my/my_complete";

echo "export PATH=\"\$PATH:$HOME/my\"" >> $HOME/.bashrc;
echo "source $HOME/my/my_complete" >> $HOME/.bash_complete;
