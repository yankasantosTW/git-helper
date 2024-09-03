#To edit a specific commit
git commit --amend
#To edit the author of the commit
git commit --amend --[no-]author
#To edit the last commit message
git commit --amend -m"CARD-123: new message"

#After each git ammend comand do you need to run the `log` to see the changes and the `push force` to send the commit to remote branch
git log
git push --force-with-lease