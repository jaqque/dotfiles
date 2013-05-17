if [ $( uname -s ) = "Linux" ]; then
 
  # Make ls more colourful
  alias l='ls -A --color=auto'
  alias la='ls -a --color=auto'
  alias ls='ls --color=auto'
  alias ll='ls -l --color=auto'

  # Make grep more colourful
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'

fi
