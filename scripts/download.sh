#!/bin/bash

# Script to install wordlists for password crackers

#

# Originally created by Dr. Phil Polstra

# for the book

# Hacking and Penetration Testing With Low Power Devices

# create the directory if it doesn't exist

[ -e "/pentest/wordlists" ] || ( mkdir -p /pentest/wordlists )

cd /pentest/wordlists

#get John

wget http://downloads.skullsecurity.org/passwords/john.txt.bz2

bzip2 -d john.txt.bz2

#get RockYou

wget http://downloads.skullsecurity.org/passwords/rockyou.txt.bz2

bzip2 -d rockyou.txt.bz2

#get 500 worst

wget http://downloads.skullsecurity.org/passwords/500-worst-passwords.txt.bz2

bzip2 -d 500-worst-passwords.txt.bz2

#get Hotmail

wget http://downloads.skullsecurity.org/passwords/hotmail.txt.bz2

bzip2 -d hotmail.txt.bz2
