  # #
 # #  Files
# #

echo "• Installing Storage Applications..."
brew cask install megasync
brew cask install keka

echo "• Making Directories..."
mkdir ~/Github
mkdir ~/Bitbucket

echo "• Making Symbolic links..."
cd
ln -s "Library/Mobile Documents/com~apple~CloudDocs" iCloud
