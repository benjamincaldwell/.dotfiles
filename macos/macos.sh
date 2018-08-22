

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "


# dark mode
sudo defaults write /Library/Preferences/.GlobalPreferences AppleInterfaceTheme Dark
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

######################################################################################
###DOCK
######################################################################################
#dock autohide
defaults write com.apple.dock autohide -bool true

# dock animation speed
defaults write com.apple.dock autohide-time-modifier -float 0.3

# dock time before running animation
defaults write com.apple.dock autohide-delay -float 0

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 36
# Enable dock magnification
defaults write com.apple.dock magnification -int 1

# Icon size of magnified Dock items
defaults write com.apple.dock largesize -int 60

# Minimization effect: 'genie', 'scale', 'suck'
defaults write com.apple.dock mineffect -string 'scale'

# Prefer tabs when opening documents: 'always', 'fullscreen', 'manual'
defaults write NSGlobalDomain AppleWindowTabbingMode -string 'always'

# Wipe all (default) app icons from the Dock
# This is only really useful when setting up a new Mac, or if you don’t use
# the Dock to launch apps.
defaults write com.apple.dock persistent-apps -array

# Double-click a window's title bar to:
# None
# Mimimize
# Maximize (zoom)
defaults write NSGlobalDomain AppleActionOnDoubleClick -string "Maximize"


######################################################################################
###Mouse and Keyboard
######################################################################################
# tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
# increase keyboard repeat
# defaults write -g InitialKeyRepeat -int 20 # normal minimum is 15 (225 ms)
# defaults write -g KeyRepeat -int 2 # normal minimum is 2 (30 ms)

# defaults write NSGlobalDomain KeyRepeat -float 0.000000000001;
# defaults read-type NSGlobalDomain KeyRepeat;
# defaults read NSGlobalDomain KeyRepeat


# echo "Set a blazingly fast keyboard repeat rate"
defaults write NSGlobalDomain KeyRepeat -int 2

# echo "Set a shorter Delay until key repeat"
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# show batery percentage
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

killall Dock
killall SystemUIServer
