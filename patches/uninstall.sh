#!/bin/sh

rootdirectory="$PWD"
dirs=" bionic/libm frameworks/native frameworks/av system/core system/extras"


for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Cleaning $dir patches..."
	git checkout -- . && git clean -df
done

echo "Done!"
cd $rootdirectory
