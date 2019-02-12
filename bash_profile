# CONFIGURING THE PROMPT
# ==============================
    # This function displays the active git branch
    function parse_git_branch {
        git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
    }

    # This function builds the prompt
    function prompt {
        local RED="\[\033[0;31m\]"
        local LIGHT_RED="\[\033[1;31m\]"
        local BLUE="\[\e[0;49;34m\]"
        local FACE="(◕‿◕)"
        local HEART="♥"

        # This exports the PS1 variable which stores prompt text
        export PS1="\[\e]2;\u@\h\a[\e[37;44;1m\]\t\[\e[0m\]]$RED\$(parse_git_branch) \[\e[32m\]\W\[\e[0m\]\n\[\e[0;31m\]$BLUE$FACE$RED$HEART \[\e[0m\]"
        PS2='> '
        PS4='+ '
      }

# Calling prompt
prompt

# ENVIRONMENT VARIABLES
# ==============================
    # NODE_PATH
    export NODE_PATH="/usr/local/lib/node_modules:$NODE_PATH"

    # Editors
    export VISUAL="code"
    export SVN_EDITOR="code"
    export GIT_EDITOR="code"
    export EDITOR="code"

# PATHS
# ==============================
    export USR_PATHS="/usr/local:/usr/local/bin:/usr/local/sbin:/usr/bin"
    export PATH="$USR_PATHS:$PATH"

# ALIASES

# Aliases
# ==============================
    # LS
    alias l='ls -lah'

    # Git
    alias gcl="git clone"
    alias gst="git status"
    alias gl="git pull"
    alias gp="git push"
    alias gd="git diff | mate"
    alias gc="git commit -v"
    alias gca="git commit -v -a"
    alias gb="git branch"
    alias gba="git branch -a"
    alias gcam="git commit -am"
    alias gbb="git branch -b"

    # Case-Insensitive Auto Completion
    bind "set completion-ignore-case on"
