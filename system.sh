#!/bin/bash
i="0"
while [ $i -lt 100 ]
do 

    echo "========================="
    echo "----- File System Management -----"
    echo " "
    echo "1-List all files & Directories "
    echo "2-Create New files"
    echo "3-Rename Files"
    echo "4-Modify File Content"
    echo "5-Search Files"
    echo "6-Remove Existing Files"
    echo "7-Details of Files"
    echo "0-Exit"
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
    echo "1- .c"
    echo "2- .sh"
    echo "3- .txt"
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

	elif [ $opt1 == 3 ]
then

	echo "-------------------------------OutPut------------------------------------"
	echo "Rename files here.."
	echo "Enter Old Name of File with Extension.."
	read old
	echo "Checking for file..."
	sleep 3

	if [ -f "$old" ];
	then
		echo "Ok File Exist."
		echo "Now Enter New Name for file with Extension"
		read new
		mv $old $new
		sleep 3
		echo "Successfully Rename."
		echo "Now Your File Exist with $new Name"
	else
		echo "$old does not exist..Try again with correct filename."
	fi
echo " "

elif [ $opt1 == 4 ]
then
	echo "Edit file content here.."
	echo "Enter File Name with Extension : "
	read edit
	echo "-------------------------------OutPut------------------------------------"
	echo "Checking for file.."
	sleep 3

	if [ -f "$edit" ];
	then
		echo "Opening file.."
		sleep 3
		nano $edit
		echo " "
	else
		echo "$edit File does not exist..Try again."
	fi

	elif [ $opt1 == 5 ]
then
	echo "Search files here.."
	echo "Enter File Name with Extension to search"
	read f
	echo "-------------------------------OutPut------------------------------------"
	if [ -f "$f" ];
	then
		echo "Searching for $f File"
		echo "File Found."
		find /home -name $f
		echo " "
	else
		echo "File Does not Exist..Try again."
		echo " "
	fi

	elif [ $opt1 == 6 ]
then
	echo "Delete existing files here.. "
	echo "Enter name of File you want to Delete!"
	echo "Note: Please Enter full Name with Extension."
	read delfile
	echo "-------------------------------OutPut------------------------------------"


	if [ -f "$delfile" ];
	then
		rm $delfile
		echo "Successfully Deleted."
		echo " "
	else
		echo "File Does not Exist..Try again"
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