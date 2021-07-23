#!/usr/bin/env bash
ccred="\033[0;31m"
ccgreen="\033[0;32m"
ccyellow="\033[0;33m"
ccwhite="\033[0;37m"


### principle
##

## for dirs in this dir; do
#### ln -sv ~/$dirs $dirs
## done

hidden_file=(".git" ".gitignore" ".gitmodules")

## @param $1 file name
function is_file_in_hidden_file(){

    for i in ${hidden_file[@]} ; do
        # echo $i
        [ "$1" == "$i" ] && return 1 || continue
    done

    return 0

}

## check is the input file work as a root dir of git
# @param $1
function is_git_root(){
    [ -d $1 ] &&  echo " "|| (echo "not a dir " && exit )
    [ -d $1/.git ] && return 1 || return 0
}


## $1 home dir
function v1(){

    for i in `ls $1` ; do
        #echo

        is_file_in_hidden_file .gitignore
        if [ $? -eq 0 ];then
        # ln -sv ~/$i $i
        echo "done"
        fi
    done

}



## calculate the root path
scriptdir=$(cd `dirname $0` && pwd)



## download all modules of dotfiles
# v1 $scriptdir/..


