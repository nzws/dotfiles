function up
# echo "Updating packages..."
# sudo apt update
# sudo apt upgrade
# sudo apt autoremove

echo "Updating homebrew..."
brew update
brew upgrade
brew doctor

echo "Updating asdf..."
asdf update
asdf plugin update --all

echo "Updating cli tools using asdf..."
asdf reshim

echo "Updating fisher..."
fisher update

echo (set_color green)Everything has been updated! (set_color normal)

end
