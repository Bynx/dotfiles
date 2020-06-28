#!/bin/bash

apt update
apt install vim curl i3 ranger -y
curl -o- git@github.com:Bynx/dotfiles.git | bash
source ~/.bashrc
nvm install --lts
npm -i -g yarn

git clone --bare git@github.com:Bynx/dotfiles.git $HOME/dotfiles
function config {
	   /usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME $@
	 }
 mkdir -p dotfiles-backup
 config checkout
 if [ $? = 0 ]; then
	   echo "Checked out dotfiles.";
		   else
				     echo "Backing up pre-existing dot files.";
						     config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} dotfiles-backup/{}
 fi;
 config checkout
 config config status.showUntrackedFiles no
}

vim +'PlugInstall --sync' +qa
echo "Successfully finished script."
