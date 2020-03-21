#!/usr/bin/env bash

CDIR="$(cd "$(dirname "$0")" && pwd)"
build_dir=$CDIR/build

while getopts q option
do
  case "${option}"
  in
    q) QUIET=1;;
  esac
done

rm -rf $build_dir
mkdir -p $build_dir

for f in pluginrc.xsh
do
    cp $CDIR/$f $build_dir/
done

cd $build_dir

[ $QUIET ] && arg_q='-q' || arg_q=''
[ $QUIET ] && arg_s='-s' || arg_s=''
[ $QUIET ] && arg_progress='' || arg_progress='--show-progress'

autojump_home=$build_dir/autojump
if [ -x "$(command -v git)" ]; then
  git clone $arg_q --depth 1 https://github.com/wting/autojump $autojump_home
else
  echo Install git
  exit 1
fi

xontrib_autojump_home=$build_dir/xontrib_autojump
if [ -x "$(command -v pip)" ]; then
  pip install $arg_q -t $xontrib_autojump_home xontrib-autojump
else
  echo Install pip
  exit 1
fi
