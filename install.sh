echo "Installing needed packages..."
# тут надо запихать и раскидать по категориям все пакеты, это потом
echo "Packages are installed!"

echo "Installing configs..."

echo "Creating backup folder"
mkdir -p $HOME/.config/backup

echo "Putting new config inside .config"
mv $HOME/.config/fish/ $HOME/.config/backup/ && ln -s ./dot-config/fish/ $HOME/.config
echo "Fish done"
mv $HOME/.config/hypr/ $HOME/.config/backup/ && ln -s ./dot-config/hypr/ $HOME/.config
echo "Hypr done"
mv $HOME/.config/kitty/ $HOME/.config/backup/ && ln -s ./dot-config/kitty/ $HOME/.config
echo "kitty done"
mv $HOME/.config/nvim/ $HOME/.config/backup/ && ln -s ./dot-config/nvim/ $HOME/.config
echo "nvim done"
mv $HOME/.config/waybar/ $HOME/.config/backup/ && ln -s ./dot-config/waybar/ $HOME/.config
echo "waybar done"
mv $HOME/.config/wlogout/ $HOME/.config/backup/ && ln -s ./dot-config/wlogout/ $HOME/.config
echo "wlogout done"
mv $HOME/.config/wofi/ $HOME/.config/backup/ && ln -s ./dot-config/wofi/ $HOME/.config
echo "wofi done"
mv $HOME/.config/starship.toml $HOME/.config/backup/ && ln -s ./dot-config/starship.toml $HOME/.config
echo "starship done"

echo "DONE!"
