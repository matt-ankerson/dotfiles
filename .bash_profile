
# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# Setting custom colours:
eval $( dircolors -b $HOME/.dircolors )

# Aliases for colours
alias ls="ls --color=always --hide='*.pyc'" 
alias grep="grep --color=always"
alias egrep="egrep --color=always"

# More Aliases
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

# Customising git
. ~/.git-completion.bash
. ~/.git-prompt.sh

# Prompt
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\w$(__git_ps1 " (%s)")\$ '

# Archey script
archey -c
