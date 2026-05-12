DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -sf $DIR/nvim ~/.config/nvim
ln -sf $DIR/fish ~/.config/
ln -sf $DIR/alacritty.toml ~/.config/alacritty.toml

ln -sf $DIR/tmux/.tmux.conf ~/.tmux.conf
mkdir -p ~/.tmux
mkdir -p ~/.tmux/plugins
mkdir -p ~/.tmux/plugins/tpm
git clone -q https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
