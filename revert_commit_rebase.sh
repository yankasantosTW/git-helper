#Get the reference of the commit to revert
git reflog

#Revert the specific commit that you want
git reset --hard HEAD@{0}

#After to run the command you will see the message telling you the current commit 