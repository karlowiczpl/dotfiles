DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -sf $DIR/nvim ~/.config/nvim
ln -sf $DIR/tmux/.tmux.conf ~/.tmux.conf
ln -sf $DIR/tmux/.tmux ~/.tmux
ln -sf $DIR/fish ~/.config/fish
ln -sf $DIR/alacritty.toml ~/.config/alacritty.toml
