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
	echo "8-View content of file here.."
	echo "9-Sort files content here.."
	echo "10-List of all directories.."
	echo "11- List Files of Particular Extension"
	echo "12- Count Number of Directories"
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
		sleep 4
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

elif [ $opt1 == 7 ]
then 
	echo "Details of files.."
	echo "Enter file name with extension.."
	read detail
	echo "--------output-------"
	echo "Checking for file"
	sleep 3

	if [ -f "$detail" ];
	then 
		echo "Loading Properties.."
		stat $detail

	else 
		echo "$detail file not exit..Try again.."
	fi

echo " "
elif [ $opt1 == 8 ]
then
	echo "View content of file here.."
	echo "Enter file name : "
	read readfile
	echo "---------------output-----------"
	if [ -f "$readfile" ];
	then 
		echo "Showing file content.."
		sleep 3
		cat $readfile

	else
		echo "$readfile doesn't exit"
	fi
echo " "
elif [ $opt1 == 9 ]
then
	echo "Sort files content here.."
	echo "Enter file name with extension.."
	read sortfile
	echo "-----------output---------"
	if [ -f "$sortfile" ];
	then 
		echo "Sorting file content."
		sleep 3
		sort $sortfile
	else 
		echo "$sortfile file doesn't exit..Try again.."
	fi
echo " "
elif  [ $opt1 == 10 ]
then
	echo "----------output---------"
	echo "List of all directories.."
	echo "Showing all directories.."
	echo "Loading.."
	sleep 4
	ls -d */
echo " "
elif [ $opt1 == 11 ]
then

	echo "List of Files with Particular extensions here.."
	echo "Which type of file list you want to see?"
	echo "1- .c"
	echo "2- .sh"echo "3- .txt"
	echo "Enter your choice from 1-3"
	read extopt
	echo "----------OutPut-----------"
	if [ $extopt == 1 ]
	then
	echo "List of .c Files shown below."
	echo "Loading.."
	sleep 3
	ls *.c

	elif [ $extopt == 2 ]
	then
	echo "List of .sh Files shown below."
	echo "Loading.."
	sleep 3
	ls *.sh
	elif [ $extopt == 3 ]
	then
	echo "List of .txt Files shown below."
	echo "Loading.."
	sleep 3
	ls *.txt

	else
	echo "Invalid Input..Try again.."
	fi
echo " "
elif [ $opt1 == 12 ]
then
	echo "-------OutPut--------"
	echo "Total number of Directories here.."
	echo "Loading all directories.."
	sleep 3
	echo "Counting.."
	sleep 3
	echo "Number of Directories are : "
	echo */ | wc -w
echo " "
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