export ACTIVE_DEFAULT_SHELL=$(echo $SHELL | rev | cut -d "/" -f 1 | rev)

for f in $HOME/.conf.d/*.conf; do
   source $f
done

for f in $HOME/.conf.d/zsh/*.conf; do
   source $f
done

for f in $HOME/.conf.d/custom/*.conf; do
   source $f
done
