export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
   export EDITOR='subl3 -w'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Setup terminal, and turn on colors
export TERM=xterm-256color
export CLICOLOR=1