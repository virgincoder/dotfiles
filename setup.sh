#!/bin/zsh
backup_folder_name=dot-files-backup-$(date +"%Y%m%d%H%M")
mkdir ~/$backup_folder_name
cp -r ~/.[^.]* ~/$backup_folder_name

echo 'All your old dot files are backed up in ~/'.$backup_folder_name

for f in ./.[^.]*; 
do
  echo "Copying $f to ~"
  cp $f ~
done

echo "source ~/.zshrc to pickup changes"


