# Send and receive keys from GPG keyservers

getkey sendkey () {
  local keyserver
  local request
  # cheap ternary operator follows
  [[ $0 = 'getkey' ]] && request='--recv-key' || request='--send-key'
  while [ $1 ]
  do
    for keyserver in $keyservers
    do
      print "Querying keyserver $keyserver"
      gpg --keyserver $keyserver $request $1
    done
    gpg --list-sigs $1
    shift
  done
}
