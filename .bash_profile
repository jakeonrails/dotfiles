# Source RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Ensure brew installed apps have precedence (important for Postgres)
export PATH=/usr/local/bin:$PATH

# Colors for custom git prompt
HR_COLOR="\[\033[1m\]"
BAD_COLOR="\[\033[47;1;31m\]"
GOOD_COLOR="\[\033[47;1;32m\]"
INPUT_COLOR="\[\033[47;0m\]"
BANNER_COLOR="\[\033[47;0:30m\]"

function git_branch_color() {
    if git rev-parse --git-dir >/dev/null 2>&1
    then
        color=""
        if git diff --quiet 2>/dev/null >&2 
        then
            color=$GOOD_COLOR
        else
            color=$BAD_COLOR
        fi
    else
        return 0
    fi
    echo -n $color
}

git_branch_name() {
  __git_ps1
}

# Modify the prompt
export PS1="${HR_COLOR}________________________________________________________________________________\n$BANNER_COLOR| \w $GOOD_COLOR\$(git_branch_name)${BANNER_COLOR}\n| => ${INPUT_COLOR}"

# Source verticalbrands/scripts repo
. ~/Code/scripts/init.sh

# Brew bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

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

