export AUTO_TITLE_SCREENS="NO"

# envImprovement aliases and functions
  autoload -U compinit
  compinit

  #allow tab completion in the middle of a word
  setopt COMPLETE_IN_WORD

export PROMPT="
%{$fg[white]%}(%D %*) <%?> [%~] $program %{$fg[default]%}
%{$fg[cyan]%}%m %#%{$fg[default]%} "

export RPROMPT=

set-title() {
    echo -e "\e]0;$*\007"
}

ssh() {
    set-title $*;
    /usr/bin/ssh -2 $*;
    set-title $HOST;
}



# Git
alias gits='git status'

# TMUX
alias ta='tmux attach -t'
alias ts='tmux new -s'

# ctags
alias ctags="`brew --prefix`/bin/ctags"

#Make copies here of variables that are used in the OH MY ZSH that need to be
#replaced after
ENV_ZSH=$ZSH
ENV_HOME=$HOME
ENV_ZSH_THEME=$ZSH_THEME

export SSH_CLIENT=""
#Load oh my zsh. You may add any lines you want here from the backed up zshrc of
#the oh my zsh. Anything you would have added or uncommented there comes here.


#Load Oh-My-ZSH
source $HOME/.zshrc.oh-my

#restore environment variables
ZSH=$ENV_ZSH
HOME=$ENV_HOME
ZSH_THEME=$ENV_ZSH_THEME

export PATH=$BRAZIL_CLI_BIN:$PATH
# redefine prompt_context for hiding user@hostname
prompt_context () { 
  prompt_segment black default Mac
}

# alias ll
alias ll='ls -ltra'

eval $(thefuck --alias)
