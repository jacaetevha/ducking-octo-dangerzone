function cl () {
  if [ $# = 0 ]; then
    cdd && ll
  else
    cdd "$*" && ll
  fi
}
function psall() {
  ps -eaww
}
function cdd () {
  if [ $# = 0 ]; then
    cd && titlepwd
  else
    cd "$*" && titlepwd
  fi
}
function cdl () {
  if [ $# = 0 ]; then
    cdd && ll
  else
    cdd "$*" && ll
  fi
}

# constantly ping a server
function ping_server() {
  while true ; do echo "`date`: `ping -qc1 $* | grep round-trip`"; sleep 5; done
}

# do any command in a loop
function loop() {
  cdd `pwd`
  echo $*
  while true; do `$*`; sleep 10; done
}

title_help0()
{
echo "ERROR: No argument provided."
echo "Usage:"
echo "  `basename $0` \"title\" to provide a new Terminal title."
}

title_help2()
{
echo "ERROR: Too many arguments provided."
echo "Usage:"
echo "  `basename $0` \"title\" to provide a new Terminal title."
}

function set_terminal_title() {
if [ $# -eq 0 ]
then
  title_help0;
elif [ $# -eq 1 ]
then
  # osascript -e "tell application \"Terminal\" to set custom title of window 1 to \"$1\""
  echo -ne "\033]0;$1\007"
elif [ $# -gt 1 ]
then
  title_help2;
fi
}
alias title='set_terminal_title'

function titlepwd() {
	set_terminal_title `pwd`
}

function git_branch() {
  git branch --track "$1" "$2"
}
alias gbt='git_branch'

#### Helpful Git Functions ####
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

function gd2 {
  echo branch \($1\) has these commits and \($2\) does not
  git log $2..$1 --no-merges --pretty='format: %h | Author:%an | Date:%ad | %s' --date=local
}

function grin {
  git fetch origin master
  gd2 FETCH_HEAD $(parse_git_branch)
}

function grout {
  git fetch origin master
  gd2 $(parse_git_branch) FETCH_HEAD
}

# Heroku
function h { heroku ${@:1:($#-1)} --app ${@: -1} ; }
function hp { h $@ <change to production name> ; }
function hs { h $@ <change to staging name> ; }
