#!/bin/sh
#echo $#
#echo $0
#echo $1
if [ $# -eq 0 ];then
    echo "Try '-h' for more information."
    echo -e "\r"
    exit 1
elif [ $# -eq 1 ]&&[ $1 == "-h" ];then
    echo -e "Help Information"
    echo -e "Options:"
    echo -e "\t-c [.file extension] [.file extension you want]\t\trename all of list file."
    echo -e "\t-i show detailed process. {unfinished...}"
    exit 0
#else 
#    if [ $1 == "-c" ]
fi
path=`ls`
#echo $path
for i in $path;
do
if [[ "$i" == *${2} ]];then
    name=`echo ${i%$2*}`
#    echo $name
    newname=${name}${3}
    mv $i $newname
fi
done
echo -e "change file extension successfully."

