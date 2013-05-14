if [[ $UID == 0 ]] ; then
  # Give root a sane path
  PATH='/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin'

  #PROMPT='%B%m:%~%#%b '
  PROMPT='%B%m:%~%b$(git_super_status)%B%#%b '
  EDITOR=vi

  # Safety valves follow
  alias rm='rm -i'
  alias cp='cp -i'
  alias mv='mv -i'
  umask 022
fi
