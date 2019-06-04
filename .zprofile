# SHELL_SESSION_HISTORY=0
export PATH=/usr/local/opt/python/libexec/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:~/bin:./node_modules/.bin:/usr/local/opt/redis@2.8/bin:$PATH
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export TZ='UTC'
export CLICOLOR=1
export BUNDLER_EDITOR=stext
export NODE_ENV=development
export NODE_PATH=./lib:.
export AWS_ACCESS_KEY_ID='XXX'
export AWS_SECRET_ACCESS_KEY='YYY'
export SPARK_HOME=/usr/local/etc/spark
export PYTHONPATH=$SPARK_HOME/python/:$PYTHONPATH

alias goldie='ssh chrismcc@10.11.0.195'
alias ls='ls -G'
alias 'cd.'='cd ..'
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

autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats ':%b'

# Set up the prompt (with git branch name)
autoload -U colors
colors
setopt PROMPT_SUBST
PROMPT='%{%F{green}%}%1d${vcs_info_msg_0_}$%{%F{none}%} '

# bash completion settings (actually, these are readline settings)
#bind "set completion-ignore-case on" # note: bind is used instead of setting these in .inputrc.  This ignores case in bash completion
#bind "set bell-style none" # No bell, because it's damn annoying
#bind "set show-all-if-ambiguous On" # this allows you to automatically show completion without double tab-ing

export NVM_DIR="/Users/chrismcc/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#gam() { "/Users/chrismcc/bin/gam/gam" "$@" ; }
