# .dotfiles

Setup:

``` bash
sudo apt install -y bash tmux fastfetch
git clone https://github.com/RegevMyers/.dotfiles.git $HOME/.dotfiles
cd $HOME/.dotfiles
stow -S bash
source $HOME/.bashrc
dotfiles sync
```

