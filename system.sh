#!/bin/bash
i = "0"
while [ $i -lt 100 ]
do 

    echo "========================="
    echo "----- File System Management -----"
    echo " "
    echo "1 - List all files & Directories "
    echo "2 - Create New files"
    echo "3 - Rename Files"
    echo "4 - Modify File Content"
    echo "5 - Search Files"
    echo "5 - Details of Files"
    echo "0 - Exit"
    echo " "
read opt1
if [ $opt1 == 1 ]
then 
    echo "List all files & Directories.."
    echo "Showing all files & directories.."
    sleep 4
    echo "loading...."
    echo "--------- OutPut ---------"
    ls
    echo " "

elif [ $opt1 == 2 ]
then 
    echo "Create New Files here.."echo "Which type of file you want to create !"
    echo "1 - .c"
    echo "2 - .sh"
    echo "1 - .txt"
    echo "Enter your choice from 1 - 3"
    read filechoice

    if [ $filechoice == 1 ]
	then
	echo "Enter File Name without .c Extension"
	read filename
	touch $filename.c
	echo "-------------------------------OutPut------------------------------------"
	echo "File Created Successfully"
	echo " "

    elif [ $filechoice == 2 ]
	then
	echo "Enter File Name without .sh Extension"
	read filename2
	touch $filename2.sh
	echo "-------------------------------OutPut------------------------------------"
	echo "File Created Successfully"
	echo " "

    elif [ $filechoice == 3 ]
	then
	echo "Enter File Name without .txt Extension"
	read filename3
	touch $filename3.txt
	echo "-------------------------------OutPut------------------------------------"
	echo "File Created Successfully"
	echo " "
	else
	echo "Inavlid Input..Try Again."
	echo " "
	fi

elif [ $opt1 == 0 ]
then
	echo "Good Bye.."
	echo "Successfully Exit"
	break
else
echo "Invalid Input..Try again...."
fi
i=$[$i+1]
done