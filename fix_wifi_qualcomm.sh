#!/bin/bash
echo "Hello! Please write down a path to ath10k dir (that you downloaded from github)"
read path
echo "Creating /lib/firmware/ath10k...Copy files from $path to /lib/firmware/ath10k"
mkdir /lib/firmware/ath10k
cp $path/* /lib/firmware/ath10k
echo "Good! Secondly, please write path to board.bin"
read path2
echo "Moving new board.bin to /usr/ath10k/QCA6417/hw3.0/"
mv /usr/ath10k/QCA6417/hw3.0/board.bin /usr/ath10k/QCA6417/hw3.0/board.bin.orig
cp $path2 /lib/firmware/ath10k/QCA6417/hw3.0/board.bin
FILE=/lib/firmware/ath9k_htc
if test -f "$FILE"; then
    rm -R /lib/firmware/ath9k_htc
fi
