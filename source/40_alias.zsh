# Make ls more colourful
alias l='ls -A --color=auto'
alias la='ls -a --color=auto'
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'

# Make grep more colourful
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Fix common typo
alias xs='cd'

# Personal convenience
alias ccd='clear; cd'

# Makes it easy to see/modify the prompt
alias PS1='print PS1=\'\''$PS1\'\'

# To/from dvorak layout
alias asdf='xmodmap $HOME/.keymap.dvorak'
alias ASDF='xmodmap $HOME/.keymap.dvorak-full'
alias aoeu='xmodmap $HOME/.keymap.sholes'
alias AOEU='xmodmap $HOME/.keymap.sholes-full'

# Query arin
alias arin='whois -h whois.arin.net n'

alias sping="ping -q -c 1"

# When did I start this command?
alias time='date -Isec; time'

# Precise, per line, timestamping. Requires daemontools
alias tai='tai64n|tai64nlocal'

# Purely for fun
[[ -x =festival ]] && alias speak='festival --tts'

alias xsudo='sudo XAUTHORITY=~/.Xauthority'
