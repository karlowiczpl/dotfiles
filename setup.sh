DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -sf $DIR/nvim ~/.config/nvim
ln -sf $DIR/alacritty.toml ~/.config/alacritty.toml

# FISH CONFIGURATION
rm -rf ~/.config/fish/
ln -sf $DIR/fish ~/.config/

# TMUX CONFIGURATION
ln -sf $DIR/tmux/.tmux.conf ~/.tmux.conf
mkdir -p ~/.tmux
mkdir -p ~/.tmux/plugins
mkdir -p ~/.tmux/plugins/tpm
git clone -q https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# FONT INSTALATION
mkdir -p ~/.local/share/fonts
cp -r $DIR/0xProto/* ~/.local/share/fonts/
fc-cache -fv
