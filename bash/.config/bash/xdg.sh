export C='/mnt/c'

mkdir -p "$XDG_STATE_HOME/bash"
export HISTFILE="$XDG_STATE_HOME/bash/history"
export HUSHLOGIN_FILE="$XDG_STATE_HOME/bash/hushlogin"
touch $HISTFILE
touch $HUSHLOGIN_FILE

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export CARGO_INSTALL_ROOT="$CARGO_HOME"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export PATH="$CARGO_HOME/bin:$PATH"

