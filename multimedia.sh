  # #
 # #  Multimedia
# #

# chrome
echo "• Installing Browsers..."
brew cask install google-chrome

# tidal
echo "• Installing Music Players..."
brew cask install tidal

# webtorrent
echo "• Installing Video Players..."
brew cask install webtorrent

# airplay streaming
echo "• Installing Streaming Tools..."
brew install shairport-sync
(crontab -l ; echo "@reboot sleep 10; /usr/local/bin/shairport-sync") | crontab -

# fonts
echo "• Installing Fonts..."
git clone https://github.com/nathco/Office-Code-Pro.git /tmp/Office-Code-Pro
cp /tmp/Office-Code-Pro/Fonts/Office\ Code\ Pro/OTF/* /Library/Fonts/

