  # #
 # #  Files
# #

echo "• Installing Storage Applications..."
brew cask install megasync
brew cask install keka

echo "• Making Directories..."
mkdir ~/Github
mkdir ~/Bitbucket

echo "• Add quicklook plugins"
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql

echo "• Making Symbolic links..."
cd
ln -s "Library/Mobile Documents/com~apple~CloudDocs" iCloud
