#!/bin/bash
readAppleShowAllFiles=$(defaults read com.apple.Finder AppleShowAllFiles) 
if [ "$readAppleShowAllFiles" = 0 ] || [ "$readAppleShowAllFiles" = false ] || [ "$readAppleShowAllFiles" = FALSE ];  then
       defaults write com.apple.finder AppleShowAllFiles NO	
fi

if [ "$readAppleShowAllFiles" = YES ]; then
	defaults write com.apple.finder AppleShowAllFiles NO
else
	defaults write com.apple.finder AppleShowAllFiles YES
fi
killall Finder
open -a Finder
