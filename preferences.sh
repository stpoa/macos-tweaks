  # #
 # #  Preferences
# #

# Dock
echo "• Setting Dock Preferences..."
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock tilesize -int 48
defaults write com.apple.dock static-only -bool TRUE #active applications
defaults write com.apple.dock scroll-to-open -bool TRUE
defaults write com.apple.Dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0
killall Dock

# Touchpad
echo "• Setting Trackpad Preferences..."
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true

# Keyboard
echo "• Setting Keyboard Preferences..."
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
defaults write -g InitialKeyRepeat -int 12 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

# Terminal
echo "• Setting Terminal Preferences..."
defaults write com.apple.Terminal "Startup Window Settings" -string "Solarized Dark"

# Finder
echo "• Setting Finder Preferences..."
defaults write com.apple.Finer FXPreferredViewStyle -string "clmv"

# Global Preferences
echo "• Setting Global Preferences..."
defaults write .GlobalPreferences _HIHideMenuBar -bool true

