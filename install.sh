echo "Installing needed packages..."
# тут надо запихать и раскидать по категориям все пакеты, это потом
echo "Packages are installed!"

echo "Installing configs..."

echo "Creating backup folder"
mkdir -p $HOME/.config/backup

echo "Putting new config inside .config"
rm -rf $HOME/.config/fish/ && ln -s /home/ek/ek-dots/dot-config/fish $HOME/.config/fish
echo "Fish done"
rm -rf $HOME/.config/hypr/  && ln -s /home/ek/ek-dots/dot-config/hypr $HOME/.config/hypr
echo "Hypr done"
rm -rf $HOME/.config/kitty/ && ln -s /home/ek/ek-dots/dot-config/kitty $HOME/.config/kitty
echo "kitty done"
rm -rf $HOME/.config/nvim/ && ln -s /home/ek/ek-dots/dot-config/nvim $HOME/.config/nvim
echo "nvim done"
rm -rf $HOME/.config/waybar/ && ln -s /home/ek/ek-dots/dot-config/waybar $HOME/.config/waybar
echo "waybar done"
rm -rf $HOME/.config/wlogout/ && ln -s /home/ek/ek-dots/dot-config/wlogout $HOME/.config/wlogout
echo "wlogout done"
rm -rf $HOME/.config/wofi/ && ln -s /home/ek/ek-dots/dot-config/wofi $HOME/.config/wofi
echo "wofi done"
rm -rf $HOME/.config/starship.toml  && ln -s /home/ek/ek-dots/dot-config/starship.toml $HOME/.config/starship.toml
echo "starship done"
rm -rf $HOME/.config/swaync/ && ln -s /home/ek/ek-dots/dot-config/swaync /home/ek/.config/swaync

echo "DONE!"
