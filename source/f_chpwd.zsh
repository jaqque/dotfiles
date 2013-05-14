# Set terminal title to host:/full/dir/path
# host will be ALL CAPS if UID=0

# define it
chpwd () {
  [[ -t 1 ]] || return
  case $TERM in
    sun-cmd)
      print -Pn '\e]l%(!.'${(U):-`print -Pn %m`}'.%m):%/\e\\'
      ;;
    *xterm*|rxvt(|-*)|(dt|k|E)term)
      print -Pn '\e]2;%(!.'${(U):-`print -Pn %m`}'.%m):%/\a'
      ;;
  esac
  [[ -r .todo ]] && whence devtodo &>/dev/null && devtodo $TODO_OPTIONS
}

# run it!
chpwd
