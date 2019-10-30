#=====ALIASES=======
#--school servers
alias flip='ssh mallorta@flip1.engr.oregonstate.edu'
alias os1='ssh mallorta@os1.engr.oregonstate.edu'
alias scpmallorta='scp mallorta@flip1.engr.oregonstate.edu'

#--git
alias gs='git status'
alias ga='git add .'
alias gcm='git commit -m'
alias gpushm='git push origin master'
alias gpushd='git push origin dev'
alias gpullm='git pull origin master'
alias gpulld='git pull origin dev'
alias gb='git branch'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gm='git merge'
alias ggraph='git log --graph --pretty=oneline --abbrev-commit'
alias gl='git log'
alias sourcepro='source ~/.bash_profile'
#==================

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d'  -e 's/* \(.*\)/ (\1)/'
}

export PS1='\[\033[0;97m\]\u: \[\033[0;35m\]\w\[\033[0;97m\]\n\[\033[1;96m\]¯\_(ツ)_/¯ \[\033[0m\]\n\[\033[32m\]branch =>$(parse_git_branch)\n '