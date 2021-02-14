#!/bin/zsh
# $1 is output when current branch changes are all pushed
# $2 is output when current branch has unpushed changes
# $3 is output when current branch has no remote
git cherry &> /dev/null;
if [[ $? -ne 0 ]];
then
    echo $3;
    return 1;
fi;

if [[ `git cherry` ]];
then
    # has unpushed changes
    echo $2;
    return 1;
else
    echo $1;
    return 0;
fi;
