
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

# ps1 with git
GIT_COMPLETION_PATH=/etc/bash_completion.d/git
if [ -f $GIT_COMPLETION_PATH ]; then
  . $GIT_COMPLETION_PATH
  GIT_PS1_SHOWDIRTYSTATE=true # */+ for dirty
  GIT_PS1_SHOWSTASHSTATE=true # $ for stashes
  GIT_PS1_SHOWUNTRACKEDFILES=true # % for untracked
fi


if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
else
		echo "bash_completion file not found."
fi


# Give some nice prompt, with git inside of it
export PS1="\033[32mzack \e[0;33m\w\e[0;91m\$(__git_ps1 ' (%s)')\e[0;96m \$\e[0m "

export TERM=xterm-256color


#amazon setup
export EC2_HOME=~/.ec2
export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY=pk-5NHGJE2D7FLNL4MEJNPZ6FXWZOMBA4GF.pem
export EC2_CERT=cert-5NHGJE2D7FLNL4MEJNPZ6FXWZOMBA4GF.pem
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/

#add colors
export CLICOLOR=1


#ensure rvm imported
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
if [ -f "$HOME/.bashrc" ]; then
	  source $HOME/.bashrc
	fi

	# Setting PATH for JRuby 1.6.7.2
	# The orginal version is saved in .bash_profile.jrubysave
	PATH="${PATH}:/Library/Frameworks/JRuby.framework/Versions/Current/bin"
	export PATH

