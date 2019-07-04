#source

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
source ~/.bashrc
source ~/.bashrc

#print current git branch to prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# export PS2="| => "

#default editor
export EDITOR='code'
alias ~b='open ~/.bash_profile'
alias sb='source ~/.bash_profile'
alias c='code .'

#movement and viewing
cd() { builtin cd "$@"; ls -1; } #Always list directory contents upon 'cd'
alias ..='cd ../'
alias ...='cd ../../'
alias ls='ls -a'
alias d='cd ~/Desktop'
alias dl='cd ~/Downloads'
alias p='cd /Users/admin/Documents/Programming'
mcd () { mkdir -p "$1" && cd "$1"; } # mcd: Makes new Dir and jumps inside
alias f='open -a Finder ./' # f: Opens current directory in MacOS Finder

#Git
alias gs='git status'
alias gi='git init'
alias ga='git add *'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push'

#Bundle and RSpec
alias bi='bundle init'
alias ri='rspec init'
alias bl='bundle install'
alias be='bundle exec'
alias bers='bundle exec rspec'
alias ber='bundle exec rails'

#npm
alias npm0='npm ls -g --depth=0' #only look at top level npm modules
alias ni='npm install'
# alias w=webpack --
source ~/.bashrc
