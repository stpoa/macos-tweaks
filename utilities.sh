  # #
 # #  Utilities
# #

# cmd utilities
"echo • Installing Command line utilities..."
xcode-select --install

# brew
echo "• Installing Brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# cask
echo "• Installing Cask..."
brew cask
brew tap caskroom/versions
brew tap buo/cask-upgrade

# mas (App store automation)
brew install mas

