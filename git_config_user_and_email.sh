#Set the username
git config user.name yourUsername

#Set the email
git config user.email yourEmail@email.com

#If you want to change the author of the commit
git commit --amend --reset-author
#Note: Will open the vim prompt to you change the last commit

#Run the comand to force the changes
git push --force-with-lease
#Note: You can see the commit tab on github the changes was applyed