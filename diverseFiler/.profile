parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

# Gjør at det står oyvind midtbo@mappenavn$ i terminalen
#export PS1='\u@\W$ '
export PS1="\u@\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\]$ "

alias ll="ls -l"

# Farger på mapper ved ls-kommandoen
CLICOLOR=1
LSCOLORS=gxfxcxdxbxegedabagacad
export LSCOLORS CLICOLOR

export PATH="/usr/local/bin:$PATH"

export EDITOR='mate -w'