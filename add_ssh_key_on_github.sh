#Check if you have a ssh key file like ed25519 or starting with rsa
ls -al ~/.ssh

#Generate a ed25519 key file
ssh-keygen -t ed25519 -C "your.email@mail.com"

#Note: If you need to support legacy project generate a rsa key file
ssh-keygen -t rsa -C "your.email@mail.com"


#Add the ssh-agent
eval "$(ssh-agent -s)"
#Note: will return the agent pid

#Create the ./ssh/config file
touch ~/.ssh/config

#Open the ./ssh/config file
open ~/.ssh/config 

#On ./ssh/config file Add this configuration to set the Host on github.com
Host github.com
  AddKeysToAgent yes
  IdentityFile ~/.ssh/id_ed25519
#Note: This configuration i'm not using the UseKeychain

#Save the ssh-agent
ssh-add ~/.ssh/id_ed25519
#Note: will return the the message with the local path like ´Identity added: /Users/..´


#Copy the ssh-agent to pass to the GitHub on settings > SSH and GPGkeys > add new key
pbcopy < ~/.ssh/id_ed25519.pub