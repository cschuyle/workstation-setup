#!/usr/bin/env bash

echo
echo "Installing Carlton's stuff"

brew install --cask 1password
brew install --cask arc
brew install --cask brave-browser
brew install --cask discord
brew install --cask divvy
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


# SDKMAN for Java
curl -s "https://get.sdkman.io" | bash
# TODO This will change frequently - is there a "most recent" option or the Java managed by SDKMAN?
sdk install java 21.0.2-open


# Everyone's fav git config
git config --global user.name "Carlton Schuyler"
git config --global user.email carl@dragnon.com
git config --global branch.autoSetupRebase always
git config --global pull.rebase true

echo <<EOF
##################################################

Manual installs:

- Amphetamine
- Check if Spotify brew cash is up to date with Spotify app

Manual configurations:

- Chromium-based browser (Arc, Brave, Chrome ...)
    - System / Show warning before quitting with ⌘Q
    - (for Brave) Use vertical tabs (right click on tabs to set this)
    
    - Make Google standard search default (from https://tenbluelinks.org/):
      - Open "Settings -> Search engine -> Manage search engines" or copy-paste this in your address bar: chrome://settings/searchEngines 
      - Next to the "Site search" section click on "Add" button.
      - Fill the details in the dialog window:
        - Search engine: Google Web 
        - Shortcut: @web 
        - URL: {google:baseURL}search?q=%s&udm=14 
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

- System Settings 
  - Handle DVDs and CDs
    - Ignore when insert
  - Keyboard Shortcuts / Services / Text / Search Man Page index in Terminal - DEACTIVATE
  - Keyboard speed max
  - Login Items
    - Divvy
      - Make shortcuts
    - Flycut
    - Amphetamine
    - NordVPN

- Finder Settings
  - New Finder Windows show ... my home directory
  - Sidebar - add Pictures and my home directory
  - Advanced / Show all filename extensions

- VS Code Settings
  - Auto save on focus change

- Add the required stuff to plugins in .zshrc:

  ```
  plugins=(git sdk direnv)
  ```


##################################################
EOF
