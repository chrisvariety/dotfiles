export PATH=/usr/local/bin:$PATH
export TERM=xterm-color
export CLASSPATH=/Users/cmcclelland/java
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export TZ='UTC'
export CLICOLOR=1

export NODE_ENV=development
export NODE_PATH=./lib:.

alias ls='ls -G'
alias tm='cd ~/workspace/tastedmenu'
alias m='mate'
alias pryer='pry -r./config/environment'
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





function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1] /'
}
export PS1="\[\e[0;32m\]\$(parse_git_branch)\W$ \[\e[1;37m\]"

# export PS1="\[\e[0;32m\]\u@\h$ \[\e[1;37m\]"  # Primary prompt with user, host, and path
# bash completion settings (actually, these are readline settings)
bind "set completion-ignore-case on" # note: bind is used instead of setting these in .inputrc.  This ignores case in bash completion
bind "set bell-style none" # No bell, because it's damn annoying
bind "set show-all-if-ambiguous On" # this allows you to automatically show completion without double tab-ing

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
