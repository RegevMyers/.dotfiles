function quite {
  "$@" &> /dev/null
}

function quiet-bg {
  ("$@" &> /dev/null &)
}
