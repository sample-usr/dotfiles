#!/bin/zsh

# change default location of screenshots to ~/screenshots
defaults write com.apple.screencapture location ~/screenshots

# show path bar breadcrumbs in finder
defaults write com.apple.finder ShowPathbar -bool true

# show status bar in finder
defaults write com.apple.finder ShowStatusBar -bool true

# always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# use list view in all Finder windows by default
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true

# remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0

# remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# disable local Time Machine backups
hash tmutil &> /dev/null && tmutil disablelocal

# show all processes in Activity Monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Download newly available updates in background
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1

# Install System data files & security updates
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1

# Turn on app auto-update
defaults write com.apple.commerce AutoUpdate -bool true

# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

