parse_git_branch() {
	~/bin/parse_git_branch.sh
}
source ~/git-completion.bash
export PATH=/opt/local/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH
PS1_WITH_USERNAME="\n<\[\033[0;32m\]\h\[\033[0m\]:\[\033[0;37m\]\u\[\033[0m\]> (jobs:\j) [\$(date +%d-%b\" \"%H:%M)] \w (\[\033[0;36m\]\$(/Users/jrogers/bin/TBytes.sh)\[\033[0m\]) (git:\$(/Users/jrogers/bin/parse_git_branch.sh))\n! "
PS1_WITHOUT_USERNAME="\n<\[\033[0;32m\]\h\[\033[0m\]> (jobs:\j) [\$(date +%d-%b\" \"%H:%M)] \w (\[\033[0;36m\]\$(/Users/jrogers/bin/TBytes.sh)\[\033[0m\]) (git:\$(/Users/jrogers/bin/parse_git_branch.sh))\n! "
PS1_USING_GIT_COMPLETION='\n<\[\033[0;32m\]\h\[\033[0m\]> (jobs:\j) [$(date +%d-%b" "%H:%M)] \w (\[\033[0;36m\]$(/Users/jrogers/bin/TBytes.sh)\[\033[0m\]) $(__git_ps1 "(%s)")]\n★  '
# PS1_USING_GIT_COMPLETION="\n<\[\033[0;32m\]\h\[\033[0m\]> 🙈 🙉 🙊 (jobs:\j) [$(date +%d-%b" "%H:%M)] \w (\[\033[0;36m\]$(/Users/jrogers/bin/TBytes.sh)\[\033[0m\]) $(__git_ps1 "(%s)")]\n★  "
# PS1=$PS1_WITHOUT_USERNAME
PS1=$PS1_USING_GIT_COMPLETION

export PRINCE_HOME=/Users/jrogers/Applications/prince-7.1/bin
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/jrogers:/usr/local/bin:/usr/X11/bin:/Users/jrogers/bin:$PRINCE_HOME
#export JRUBY_HOME=/Users/jrogers/.rvm/rubies/jruby-1.6.5

source ~/.bash_aliases
source ~/.bash_functions
source ~/.bash_colors
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.7.0u.jdk/Contents/Home/
export GIT_PS1_SHOWDIRTYSTATE='1'
export GIT_PS1_SHOWSTASHSTATE='1'
export GIT_PS1_SHOWUNTRACKEDFILES='1'
export BUNDLER_EDITOR=mate
source /Users/jrogers/bin/pickjdk.d/gistfile1.txt

complete -W "$(shots)" dig fping ftp host mtr nc netcat ping ping6 telnet traceroute ssh

export EDITOR=/usr/local/bin/vim
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
