#!/bin/bash
#
function diskspace {
clear

df -k
}

function whoseon {
clear
who
}
function loggedInTime {
clear
uptime
}

function mouNted {
clear
mount
}
function deleteFile {
#deleting empty files
    read -p "Enter file to delete:" file_delete
    if [ -f $file_delete ]
        then
            echo "file exists"
        #if the file exists and contains data in it
                if [ -s $file_delete ]
                    then
                    echo "The file contains data"
                    else
                    echo "The file is empty"
                    #if the file is empty..its deleted
                    rm $file_delete
                    echo file delete success
            fi

        else
            echo
            echo "Invalid file"
    fi

}

function menu {
        echo "1.Display diskspace"
        echo "2.Display Logged in users"
        echo "3.Display time since logged in"
        echo "4.Display mounted devices"
        echo "5.Delete empty files"
        echo "0.Exit"
        echo  -en "Enter option:\n"
        read -n 1 option
}

while [ 1 ]
do
    menu
    case $option in
        0)
          break;;
        1)
            diskspace;;
        2)
            whoseon;;
        3)

            loggedInTime;; 
        4)
            mouNted;;  
        5)
            deleteFile;;         
        *)
          clear
          echo "wrong selection"
    esac
done