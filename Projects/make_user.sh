#!/bin/bash 

#script should be excute with sudo/root acees 
if [[ "${UID}" -ne 0 ]]
then
	echo "PLease run with sudo or root"
	exit 1
fi

# user should provide atleast one argument as username else guide him 
if [[ "${#}" -lt 1 ]]
then
	echo "Usage: ${0} USER_NAME [COMMENT]..."
	echo "Create a user with name USER_NAME and COmment field of comments"
	exit 1
fi 

#Store 1st argument as user name 
USER_NAME="${1}"
echo $USER_NAME

#in case of more than one argument, store it as an account comments
shift 
COMMENT="${@}"

#Create a password
PASSWORD=$(date +%s%N)
echo $PASSWORD

#Create the user 
useradd -c "${COMMENT}" -m "$USER_NAME"


#Check if the user is successfully created or not 

if [[ $? -ne 0 ]]
then 
	echo "THe Account could not be created"
	exit 1
fi

# Set the password for the user using chpasswd
echo "$USER_NAME:$PASSWORD" | chpasswd

#check if the password is created or not 

if [[ $? -ne 0 ]]
then
        echo "The password could not be set"
        exit 1
fi

#force password change on first login
passwd -e $USER_NAME 

#Display the username, pasword, and host where the user was created. 

echo 
echo "Username: $USER_NAME"
echo "Password: $PASSWORD"
echo 
echo $(hostname)

