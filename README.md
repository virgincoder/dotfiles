# Vijai Shankar Natarajan dot files

These are config files to set up a system the way I like it. It uses [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh) with agnoster theme. 
You might find some useful stuff related to vim or tmux.
I am running on Mac OS X, but it will likely work on Linux as well.

## Installation
Run the following commands in your terminal. All your existing dot files will be backed up in `~/dot-files-backup-{date}` folder.

```terminal
git clone git://github.com/virgincoder/dotfiles ~/dotfiles
cd ~/dotfiles
./setup.sh
```
  
Vim plugins are managed through vundle. You'll need to install vundle to get them.

`git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`  
Run :BundleInstall in vim.

