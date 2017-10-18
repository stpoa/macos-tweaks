  # #
 # #  Terminal
# #


# Theme
echo "• Installing terminal themes"
git clone https://github.com/tomislav/osx-terminal.app-colors-solarized.git \
  /tmp/solarized
open /tmp/solarized/Solarized\ Dark.terminal
open /tmp/solarized/Solarized\ Light.terminal
defaults write com.apple.Terminal "Startup Window Settings" \
  -string "Solarized Dark"
deffults write com.apple.Terminal "Startup Window Settings" \
  -string "Solarized Light"

# Bash
echo "• Installing new Bash version"
brew install bash
echo /usr/local/bin/bash|sudo tee -a /etc/shells
chsh -s /usr/local/bin/bash

# Autocomplete
brew install bash-completion
brew tap homebrew/completions

cd
rm .bash_profile .bashrc .vimrc .tmux.conf .bash-powerline.sh .hushlogin
ln -s Github/macos-tweaks/bash_profile .bash_profile
ln -s Github/macos-tweaks/bashrc .bashrc
ln -s Github/macos-tweaks/vimrc .vimrc
ln -s Github/macos-tweaks/tmux.conf .tmux.conf
ln -s Github/macos-tweaks/bash-powerline.sh .bash-powerline.sh
touch .hushlogin

