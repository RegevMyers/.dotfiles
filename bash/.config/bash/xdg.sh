export C='/mnt/c'

export HISTFILE="$XDG_STATE_HOME/bash/history"
touch $HISTFILE

export HUSHLOGIN_FILE="$XDG_STATE_HOME/bash/hushlogin"
touch $HUSHLOGIN_FILE

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export CARGO_INSTALL_ROOT="$CARGO_HOME"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

