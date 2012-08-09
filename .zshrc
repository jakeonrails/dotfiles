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
plugins=(git git-flow heroku rails osx jakeonrails battery)

source $ZSH/oh-my-zsh.sh

# Source RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Terminal tab title:
precmd () { print -Pn "\e]2;%~\a" } 

# Rails and Bash aliases
alias ll='ls -hal'
alias rake='noglob bundle exec rake'
alias rspec='bundle exec rspec'
alias devlog='tail -f log/development.log'
alias testlog='tail -f log/test.log'
alias grepoku='heroku logs --tail | grep '

alias ..='cd ..'
alias cd..='cd ..'

alias g='git status'
alias hps='heroku ps'
alias hscale='heroku ps:scale'
alias hcon='heroku run console'
alias hrake='heroku run rake'
alias hmigrate='heroku run rake db:migrate'
alias hlogs='heroku logs --tail'
alias newrelic='heroku addons:open newrelic'
alias hopen='heroku addons:open'
alias h='heroku'
alias hpush='git push heroku HEAD:master'
alias opush='git push origin HEAD'
alias gref='git refresh'
alias grefmast='git checkout master && git refresh'
alias hsql='heroku pg:psql'
alias journal='echo "\n`date`: $1\n\n" >> ~/journal.txt'
alias start-mongo='mongod run --config /usr/local/etc/mongod.conf'
alias migrate='rake db:migrate'

# Add custom git commands to the path
export PATH=~/Code/scripts/bin:$PATH

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Ensure brew installed apps have precedence (important for Postgres)
export PATH=/usr/local/bin:/usr/local/sbin:$PATH


