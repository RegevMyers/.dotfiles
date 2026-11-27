function quiet {
  "$@" &> /dev/null
}

function quiet-bg {
  ("$@" &> /dev/null &)
}
