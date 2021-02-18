#!/bin/zsh
# $1 is output when current branch changes are all pushed
# $2 is output when current branch has unpushed changes
# $3 is output when current branch has no remote
git cherry > /dev/null 2>&1;
if [[ $? -ne 0 ]];
then
    echo $3;
else
    if [[ `git cherry` ]];
    then
        # has unpushed changes
        echo $2;
    else
        echo $1;
    fi;
fi;
