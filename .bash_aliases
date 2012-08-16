# Git aliases
alias gb='git branch'
alias gba='git branch -a'
alias ga='git add .'
alias gc='git commit -v -a'
alias gd='git diff | mate'
alias gpl='git pull'
alias gps='git push'

# Other useful aliases
alias ll='ls -al'
alias lt='ls -alt'

# Heroku aliases
alias hpc="hp console"
alias hsc="hs console"

alias hpl="hp logs -t"
alias hsl="hs logs -t"

alias hps="hp pg:psql"
alias hss="hs pg:psql"

# Rails-y things
alias rpry="rails-console-pry ${1:-development} -r ruby18_source_location -r pry-doc -r awesome_print"
