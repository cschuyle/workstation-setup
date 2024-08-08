#!/usr/bin/env bash

echo
echo "Installing Carlton's stuff"

brew install --cask 1password
brew install --cask arc
brew install --cask brave-browser
brew install --cask discord
# Divvy chjarges $. Using Rectangle.
# brew install --cask divvy
brew install --cask nordvpn
brew install --cask omnidb
brew install --cask roam-research
brew install --cask spotify
brew install --cask vlc
# brew install --cask vscodium
# brew install amz
brew install automake
brew install awscli
brew install bcrypt
brew install brimdata/tap/zq
brew install clojure
brew install clojure/tools/clojure
brew install leiningen
brew install coreutils
brew install cpanm
brew install csvkit
brew install curl
brew install direnv
brew install dos2unix
brew install findutils # gfind etc
# brew install firebase
brew install gh
brew install git
brew tap gdubw/gng && brew install gng
brew install gnu-sed # gsed
brew install gnu-tar # gtar
brew install gradle
brew install homebrew/cask/handbrake
brew tap heroku/brew && brew install heroku
brew install homebrew/cask/emacs
brew install httpie
brew install imagemagick
brew install jq
brew install julia
brew install kubernetes-cli
brew install libdvdcss
brew install libidn2
brew install libpq
brew install link-grammar
brew install maven
brew install meld
brew install mk-configure
brew install mkvtools
brew install node
brew install nushell
brew install openssl
brew install pdfgrep
# brew install pdftk
# brew install pdftk-java
brew install perl
brew install pkgxdev/made/pkgx
brew install podman
brew install postgresql
# brew install psql
brew install pup
brew install python
brew install readline
brew install rename
brew install ruby
brew install s3cmd
brew install sqlite3
brew install the_silver_searcher
brew install thefuck
brew install tre # for agrep. https://github.com/laurikari/tre
brew install tree
brew install vlc
brew install vmware-tanzu-learning/tap/penguinctl
brew install watch 
brew install WebPQuickLook
brew install weechat
brew install wget
brew install xmlstarlet
brew install xz
brew install yarn
brew install zlib
brew install zq
brew install zsh

# OOOOH this looks nifty - Amber, it compiles to bash!
curl -s "https://raw.githubusercontent.com/Ph0enixKM/AmberNative/master/setup/install.sh" | bash


# SDKMAN for Java
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# TODO This will change frequently - is there a "most recent" option or the Java managed by SDKMAN?
sdk install java 21.0.2-open


# Everyone's fav git config
git config --global user.name "Carlton Schuyler"
git config --global user.email carl@dragnon.com
git config --global branch.autoSetupRebase always
git config --global pull.rebase true

echo <<EOF
##################################################

Manual actions:

- Install dev tools. If you didn't already during the chicken-and-egg phase, try to run git, 
  and watch it tell you you need to install dev tools.

- git hack to work around errors like `error ...zeroPaddedFilemode: contains zero-padded file modes`
  - From https://github.com/scikit-learn/scikit-learn/issues/19979
  ```
  git config --global fsck.zeroPaddedFilemode ignore
  git config --global fetch.fsckobjects false
  git config --global receive.fsckobjects false
  ```

- Install Oh-My-Zsh
  - Clone https://github.com/cschuyle/ohmyzsh and move it to ~/.oh-my-zsh
  - `git remote add upstream https://github.com/ohmyzsh/ohmyzsh.git`
  - Add the required stuff to plugins in .zshrc:
  ```
  plugins=(git sdk direnv)
  ```

- From this repo (workstation-setup), copy cschuyle.zshrc to ~/.zshrc

- App Store
  - Amphetamine
  - 1Password for Safari

- Check if Spotify brew cash is up to date with Spotify app

Manual configurations:

- Chromium-based browser (Arc, Brave, Chrome, Edge ...)
    - System / Show warning before quitting with ⌘Q
    - (for Brave) Use vertical tabs (right click on tabs to set this)
    
    - Make Google "classic" (just the links please) the standard search default (from https://tenbluelinks.org/):
      - Open "Settings -> Search engine -> Manage search engines" or copy-paste this in your address bar: chrome://settings/searchEngines 
      - Next to the "Site search" section click on "Add" button.
      - Fill the details in the dialog window:
        - Search engine: Google Classic 
        - Shortcut: @web 
        - URL: {google:baseURL}search?q=%s&udm=20
      - The last line is very important.
      - You will see your new search engine "Google Web" in the list. Click on the menu icon next to it and then on "Make default".
    
    - Extensions (Install into your browser from the Chrome App Store):
      - JSON Formatter (callumlocke.com)
      [Pin to Toolbar] the following:
      - Save to Pocket
      - Roam Highlighter
      - 1Password 
          - also make available in incognito
      - Pinboard Plus (or Pinput, but it doesn't work in Arc)
          - "Private" as default
          - Set API token (https://pinboard.in / password / API Token)

  - Arc: Settings / Links / Open Little Arc when I press atl-cmd-N in any app - DISABLE
  
- System Settings 
  - Keyboard speed max
  - Handle DVDs and CDs
    - Ignore when insert DVD
    - Show eject in menu bar
    
  - Keyboard Shortcuts / Services / Text / Search Man Page index in Terminal 
    - DEACTIVATE
  - Login Items
    - Rectangle
      - Make shortcuts
    - Flycut
    - Amphetamine
    - NordVPN
  - Privacy & Security / Accessibility
    - Flycut
    - Rectangle
  - Default Search Engine
    - Arc (or whatever you want)

- Finder Settings
  - New Finder Windows show ... 
    - My home directory
  - Sidebar 
    - Add:
      - Pictures
      - My home directory
    - Remove Recents
  - Advanced / Show all filename extensions

- VS Code Settings
  - Auto save on focus change

- iTerm settings
  - Appearance / Windows
    - Heavy borders around windows in light mode
  - Profiles / Default
    - Colors / Foreground / hex color 00ee42
    - Text - Downsize font size to 15
    - Windows
      - Dimensions: 111 x 55
      - Transparency: 11%
    - Terminal
      - Scrollback lines: 100,000

- Zoom
  - Mute when join
  - Video off when join

- Slack
  - Hummus

- Review cschuyle.zshrc and copy to .zshrc.
  - Make sure the required stuff to plugins in .zshrc:
    ```
    plugins=(git sdk direnv)
    ```

- Synology Assistant
  - Go to Synology Downloads, select NAS versiopn and then Desktop Utilities.
    - Latest version for my current NAS: https://www.synology.com/en-us/support/download/DS1019+?version=7.2#utilities

##################################################
EOF
