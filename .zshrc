export ACTIVE_DEFAULT_SHELL=$(echo $SHELL | rev | cut -d "/" -f 1 | rev)
export HOME_CONF_DIR="$HOME/.conf.d"
mkdir -p "$HOME_CONF_DIR/$ACTIVE_DEFAULT_SHELL"

for f in $HOME_CONF_DIR/*.conf; do
   source $f
done

for f in $HOME_CONF_DIR/$ACTIVE_DEFAULT_SHELL/*.conf; do
   source $f
done

for f in $HOME_CONF_DIR/custom/*.conf; do
   source $f
done
