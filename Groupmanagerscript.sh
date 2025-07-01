#!/bin/bash

echo

echo "-----------Welcome to The GroupManager Script---------"

echo

groupadd groupname       # used to add group

gpasswd groupname         # used to assign a group

echo "Enter a password Manually for the Group developers"

echo "--------Group has been Successfully Created -------"

echo

echo ----"Adding a Single user to a group----"

echo

gpasswd -a username groupname  # add a single user to a group

echo

echo "-----------Adding a multiple user to a group-------"


gpasswd -M username,username groupname        # Add a multiple user to a group it will overwrite a existing group

echo

echo "------------Assign a user as a Administartion-------"

gpasswd -A username groupname

echo

echo "------------Remove a user from Administartion----------"

gpasswd -A "" groupname     #It is Optional

echo

echo "-----------Create a file and assign for group-------------"

touch file.txt

echo

echo "---------Change As new owner--------------"

chown newowner filepath        # Replace the newowner name and filepath

echo

echo "---------Assign group as ownership-------------"

chown :groupname /filepath     #Replace the Groupname and Filepath

echo "---------Your ownership has been changed-------"

echo

echo "--------------Delete a User in Group----------" # It is Optional

gpasswd -d username groupname     # Replace your Username and Groupname

echo

echo "---------Deleting a Group----------" # It is optional

groupdel -f groupname

echo "---Group has been Successfully deleted-----"   # It is Optional

echo

