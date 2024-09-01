#
# ~/.bashrc
#

#------------------------------------------------------------
# PATH
#------------------------------------------------------------
# adding local directory for Ansible 
export PATH="~/.local/bin:$PATH"

#------------------------------------------------------------
# Application defaults
#------------------------------------------------------------
export BROWSER='/usr/bin/google-chrome-stable'
export PAGER='/usr/bin/less'
export MOZ_ENABLE_WAYLAND=1
export TERM='xterm-256color'

#------------------------------------------------------------
# Sway & Wayland
#------------------------------------------------------------
# fix for issue with monitor not waking after sleep
# https://github.com/swaywm/sway/issues/6167
export WLR_DRM_NO_MODIFIERS=1

# Export Desktop
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_DESKTOP=sway

#------------------------------------------------------------
# Setting PS1
#------------------------------------------------------------
# https://unix.stackexchange.com/questions/105958/terminal-prompt-not-wrapping-correctly
PS1='\[\033[01;38;5;45m\]\u: \[\033[01;38;5;45m\]\W \[\033[01;38;5;45m\] \$ \[\033[0m\]'


#------------------------------------------------------------
# Alises
#------------------------------------------------------------
alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' # alias for using git to manage dotfiles
alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."
alias treedir="find | sed 's|[^/]*/|\|-|g'"


#------------------------------------------------------------
# History
#------------------------------------------------------------

## Updating the history in realtime
## https://askubuntu.com/questions/67283/is-it-possible-to-make-writing-to-bash-history-immediate
shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
export HISTTIMEFORMAT="%F %T "
