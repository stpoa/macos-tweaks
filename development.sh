  # #
 # #  Development tools
# #

# git
echo "• Installing GIT..."
brew install git
sudo mv /usr/bin/git /usr/bin/git-apple
echo "export PATH=\"/usr/local/bin:\$PATH\"" >> ~/.bash_profile
git config --global user.name stpoa
git config --global user.email stpoa@icloud.com

# node
echo "• Installing Node..."
brew install node

# ruby
echo "• Installing Ruby..."
brew install ruby

# vim
echo "• Installing Vim..."
brew install vim
brew install tmux
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
brew install reattach-to-user-namespace # clipboard fix
echo 'set-option -g default-command "reattach-to-user-namespace -l bash"' >> ~/.tmux.conf

