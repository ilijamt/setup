for f in $HOME/.conf.d/*.conf; do
   source $f
done

for f in $HOME/.conf.d/zsh/*.conf; do
   source $f
done
