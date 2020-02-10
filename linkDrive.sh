#!/bin/bash

echo "Welcome to the custom linking script!"

read -p "Insert mount point for your drive: "  drive

ln -s $drive/Pictures $HOME/Pictures
ln -s $drive/Documents $HOME/Documents
ln -s $drive/Videos $HOME/Videos
ln -s $drive/Downloads $HOME/Downloads
ln -s $drive/Music $HOME/Music

while true
do
    read -p "Do you want to add a custom folder from the drive to your home? [y/n] " answer

    case $answer in
        [yY]* ) read -p "What is the folder name? " custom 
            ln -s $drive/$custom $custom
            break;;

        [nN]* ) break;;

        * ) echo "Please enter [y/n]";;
    esac
done

while true
do
    read -p "Do you want to add a git folder to your home? [y/n] " answer

    case $answer in
        [yY]* ) read -p "What is the mount point for your git folder? " gitFolder
            ln -s $gitFolder $HOME/git
            break;;

        [nN]* ) exit;;

        * )     echo "Please enter [y/n].";;
    esac
done
