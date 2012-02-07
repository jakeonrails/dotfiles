# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jakeonrails"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git heroku rails osx jakeonrails)

source $ZSH/oh-my-zsh.sh

# Source RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Ensure brew installed apps have precedence (important for Postgres)
export PATH=/usr/local/bin:$PATH

# Add custom git commands to the path
export PATH=~/Code/scripts/bin:$PATH

# Rails and Bash aliases
alias ll='ls -hal'
alias rake='bundle exec rake'
alias rspec='bundle exec rspec'
alias devlog='tail -f log/development.log'
alias testlog='tail -f log/test.log'
alias grepoku='heroku logs --tail | grep '

# Project directory aliases
alias apartmentlist='cd ~/Code/apartmentlist'
alias seniors='cd ~/Code/senior'
alias homeservices='cd ~/Code/homeservices'
alias aparmentlistproduction='cd ~/Code/production/apartmentlist'
alias seniorsproduction='cd ~/Code/production/senior'
alias homeservicesproduction='cd ~/Code/production/homeservices'

