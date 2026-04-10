# .dotfiles

Setup:

``` bash
sudo apt install -y stow bash tmux fastfetch
git clone https://github.com/RegevMyers/.dotfiles.git $HOME/.dotfiles
cd $HOME/.dotfiles
mv $HOME/.bashrc $HOME/.bashrc.bak && mv $HOME/.profile $HOME/.profile.bak
stow -S bash
source $HOME/.bashrc
dotfiles sync
```

