#/bin/sh

nosession="no sessions"
attach=`tmux attach`
if [ "$nosession"="$attach" ]
then
    `tmux`
fi
