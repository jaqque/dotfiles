# Zsh Options
# See zshoptions(1) for a complete description

# Changing Directories
setopt AUTO_CD
unsetopt CDABLE_VARS

# Completion
#setopt AUTO_LIST
#setopt AUTO_MENU
#setopt AUTO_NAME_DIRS
#setopt AUTO_PARAM_SLASH
#setopt AUTO_REMOVE_SLASH
setopt COMPLETE_ALIASES
setopt LIST_PACKED

# Expansion and Globbing
setopt EXTENDED_GLOB
setopt MAGIC_EQUAL_SUBST
unsetopt NOMATCH
setopt NUMERIC_GLOB_SORT

# History
#setopt BANG_HIST
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS

# Initialisation

# Input/Output
setopt CORRECT
setopt INTERACTIVE_COMMENTS
setopt PRINT_EXIT_VALUE
setopt SHORT_LOOPS

# Job Control
unsetopt BG_NICE

# Prompting
setopt PROMPT_CR

# Scripts and Functions
setopt MULTIOS

# Shell Emulation

# Shell State

# Zle
bindkey -e


# PARAMETERS USED BY THE SHELL
# See zshparam(1) for a complete description

HISTFILE=~/.zsh_history
HISTSIZE=250
READNULLCMD=less
REPORTTIME=15
SAVEHIST=200
watch=notme
WATCHFMT='20%D %T %B%n%b has %a %l from %(M:%M:localhost)'
