# Keep a running total

t () {
  unset t_temp
  t_temp=$t
  while [ $1 ]
  do
    t_temp=$(( t_temp + $1 ))
    shift
  done
  t=$t_temp
  unset t_temp
  print $t
}
