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

Chrome (Brave, Arc...) Extensions: 
(Install into your browser from the Chrome App Store)

- Save to Pocket
- Roam Highlighter
- 1Password
- Pinput for Pinboard
    - "Private" as default
- JSON Formatter (callumlocke.com)

Manual configurations:

- Brave
    - System / Show warning before quitting with ⌘Q
    - Use vertical tabs (right click on tabs to set this)

- System Settings 
  - Handle DVDs and CDs
    - Ignore when insert
  - Keyboard Shortcuts / Services/ Text / Search Man Page nedfx in Terminal - DEACTIVATE
  - Login Items
    - Divvy
    - Flycut
- Add direnv to plugins in .zshrc:

  ```
  plugins=(git sdk direnv)
  ```


##################################################
EOF
