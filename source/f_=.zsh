# Command line math
#
# I would love to make an alias '='='noglob =', but I can't find a way
# to escape the alias definition to make it work.

= () {
  print $(( $@ ))
}
