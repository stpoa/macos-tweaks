  # #
 # #  Terminal
# #


# Theme
echo "• Installing terminal themes"
git clone https://github.com/tomislav/osx-terminal.app-colors-solarized.git /tmp/solarized
open /tmp/solarized/Solarized\ Dark.terminal
open /tmp/solarized/Solarized\ Light.terminal
defaults write com.apple.Terminal "Startup Window Settings" -string "Solarized Dark"


# Bash
echo "• Installing new Bash version"
brew install bash
echo /usr/local/bin/bash|sudo tee -a /etc/shells
chsh -s /usr/local/bin/bash

git clone https://github.com/stpoa/.bash /tmp/stpoa.bash
cp -f /tmp/stpoa.bash/* ~/

