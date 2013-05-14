# Start the keychain, if there is no auth sock already (coming in via ssh)
if [[ $SSH_AUTH_SOCK == "" && -x =keychain ]]; then 
  eval `keychain --quiet --eval`
fi
