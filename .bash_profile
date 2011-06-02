export PATH=/opt/local/bin:/opt/local/lib/postgresql83/bin:/opt/subversion/bin:/usr/local/mysql/bin:$HOME/local/node/bin:$PATH
export TERM=xterm-color
export CLASSPATH=/Users/cmcclelland/java
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export TZ='UTC'
export CLICOLOR=1 
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
export NODE_PATH=$HOME/local/node

alias ls='ls -G'
alias ll='cd ~/workspace/locolocal'
alias m='mate'
alias nodehist='env NODE_NO_READLINE=1 rlwrap -p Green -S "node >>> " node'

g() {
    if [[ $# == '0' ]]; then
        git status
    else
        case $1 in
            fuss)
                shift
                git rebase -i HEAD~"$1";;
            *)
                git "$@";;
        esac
    fi
}
export PS1="\[\e[0;32m\]\u@\h$ \[\e[1;37m\]"  # Primary prompt with user, host, and path 
# bash completion settings (actually, these are readline settings)
bind "set completion-ignore-case on" # note: bind is used instead of setting these in .inputrc.  This ignores case in bash completion
bind "set bell-style none" # No bell, because it's damn annoying
bind "set show-all-if-ambiguous On" # this allows you to automatically show completion without double tab-ing

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
