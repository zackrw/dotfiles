
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

money="problems"

autoload -U compinit zrecompile
autoload -U promptinit
promptinit
autoload -U colors && colors


##################################################
source ~/.zsh-git
###################################################
# Stuff for git
parse_git_branch () {
    git branch 2> /dev/null | grep "*" | sed -e 's/* \(.*\)/ (\1)/g'
}

# sunburst.vim like colors for prompt

function precmd() {
    PROMPT='%F{green}%n%f %F{yellow}${(%):-%1~}%f$(git_super_status) %F{white}%#%f '
}

# Alias vim to vi
alias vim="vi"

# Increase ULIMIT
ulimit -n 1024

# Colors!
export CLICOLOR=1

# i work for brewster
export BREWSTER_USER=zack

# export GREP_OPTIONS='--color=auto -n'
# export GREP_COLOR='0;93'

export TERM=xterm-256color


#amazon setup
export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY=pk-5NHGJE2D7FLNL4MEJNPZ6FXWZOMBA4GF.pem
export EC2_CERT=cert-5NHGJE2D7FLNL4MEJNPZ6FXWZOMBA4GF.pem
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/


#ensure rvm imported
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
if [ -f "$HOME/.bashrc" ]; then
  source $HOME/.bashrc
fi

# Setting PATH for JRuby 1.6.7.2
# The orginal version is saved in .bash_profile.jrubysave
PATH="${PATH}:/Library/Frameworks/JRuby.framework/Versions/Current/bin"
export PATH

