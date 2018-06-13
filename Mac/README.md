# Mac Setup

# Quick Quick for setting up everything

Quick installation guide for all settings

## Try put all of them into 1 script?

## Set up zsh
```shell
    # Install zsh
    # https://gist.github.com/derhuerst/12a1558a4b408b3b2b6e
    # Install Oh-my-zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    # Or --> curl -L http://install.ohmyz.sh | sh

    # Suggestion plugins
    git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

## Copy settings
```shell
    sh -c "$(curl https://raw.githubusercontent.com/yinanfang/Preference/master/update_local_settings.sh)"
```

## Set up vim
```shell
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall
```

## Set up Atom
```shell
    # Open atom and install shell commands
    # -->> Shift+Cmd+P - Install shell command

    # Install packages
    apm install --packages-file ~/.atom/package-list.txt
```

---

## Languages/Platform & Package Manager

### Apple/Mac

#### Mac Package manager: [Homebrew](http://brew.sh/)

Installation
```shell
    $ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Cheat sheet: https://devhints.io/homebrew

Packages to install
```shell
    $ brew update
    $ brew tap yinanfang/Preference https://github.com/yinanfang/Preference
    $ brew install watch watchman the_silver_searcher tree
```

#### Swift & Objective-C dependency manager: [CocoaPods](https://cocoapods.org/)

Installation
```shell
    $ sudo gem install cocoapods
```

#### Swift & Objective-C dependency manager: [Carthage](https://github.com/Carthage/Carthage)


### Javascript/Node.js

#### [Node.js](https://nodejs.org)

#### Node version control: nvm

#### Package Manager: bower

#### Package Manager: [npm](https://www.npmjs.com/)

- Come with Node.js [installation](https://nodejs.org/download/)
- npm global
  - Binary Path: usr/local/bin
  - Src Path: usr/local/lib/node_modules
  - Install items:

Installation:
- Install with (official script)[https://github.com/creationix/nvm#install-script]
- `nvm ls` to check current node
- `nvm install vX.X.X` to install the latest node
- `nvm alias default stable` to update default to latest stable
```shell
    $ npm install -g babel-cli babel-eslint bower csslint codeclimate-test-reporter eslint flow-bin flow-typed gulp istanbul jasmine-node karma localtunnel npm-check npm-check-updates nodemon plato pm2 webpack yarn 
```
  - Non-global item: express
  - Accessary items: generator-gulp-angular generator-gulp-webapp, learnyounode mean-cli yo
  - Deprecated?: node-inspector


#### Python package manager: gem?

### PHP

#### PHP package manager: Autoload?

#### PHP package manager: [pear](https://pear.php.net)

System-wide installation [tutorial](https://pear.php.net/manual/en/installation.getting.php)
```shell
    $ curl -O  http://pear.php.net/go-pear.phar
    $ sudo php -d detect_unicode=0 go-pear.phar
```

### Groovy
- Install groovysdk:
```
brew remove groovy
brew install groovysdk
```
- Set GROOVY_HOME, otherwise Intellij reports as broken installation:
```
export GROOVY_HOME=/usr/local/opt/groovy/libexec
```
Point IntelliJ to the installed directory, e.g.: `/usr/local/Cellar/groovysdk/2.4.7/libexec`
- Source: https://stackoverflow.com/questions/41110256/how-do-i-tell-intellij-about-groovy-installed-with-brew-on-osx
---

## Command Line

#### Terminal/iTerm2
- Load preference plist
- Preferences -> General - [Guide](https://stackoverflow.com/questions/6205157/iterm-2-how-to-set-keyboard-shortcuts-to-jump-to-beginning-end-of-line)
  - Load preferences from a custom folder or URL
  - Save settings to Folder
- Scheme: Ta-Da (Default)
- Font: Fira Mono Medium for Powerline 11 pt for "Regular" and "Non-ASCII"
- Window Size: Column 120 - Row 40/50
- Cursor: FF0000 / Smart cursor color
- Color Scheme:
    - Bright Orange: Window (0xFF9900 Color Pallettes - Web Safe Colors); Text (0xFFFFFF Black)
    - Pastel Black: Window (0x2D2D2D Patel black); Text (0xFFFFFF White)
- iTerm2
  - Keys: Hotkey: system-wide: Cmd+i
  - Profile
    - List: Ta-Da, Hotkey Window
    - Window: Transparency: ~90%
    - Terminal: Scrollback Lines: 100,000
  - Keys
    - Hotkey - Show/hide iTerm2 & Hotkey toggles
    - Right option key: Meta (tmux use it as Alt)

#### Utility
  - wget: No wget on Mac. Use curl instead

#### tmux
```shell
    # Mac
    $ brew install tmux
    # Ubuntu/Debian
    $ sudo apt-get install tmux
    # CentOS
    $ gem install tmuxinator
```

---

## Quick Look Plugin
  - Enhancement
    - [quick-look-plugins](https://github.com/sindresorhus/quick-look-plugins)
    - [Debug Provisioning File](https://github.com/futurice/ios-good-practices#debugging-provisioning): [Provisioning](https://github.com/chockenberry/Provisioning)

---

## IDE

### Xcode:

  - Package Manager
    - Alcatraz:
      - Themes: Ciapre
      - Plugins: Auto-Importer, Backlight, BBUDebuggerTuckAway, BBUFullIssueNavigator, ClangFormat, CocoaPods, DerivedData Exterminator, FuzzyAutocomplete, GitDiff, KSImageNamed, OMColorSense, RTImageAssets, SCXcodeMinimap, SCXcodeSwitchExpander, ShowInGithub, VVDocumenter-Xcode, XAlign, XcodeColors, XToDo, XVim
      - Source: http://nshipster.com/xcode-plugins/
  - Inspector
    - Spark Inspector. (Paid)
    - `brew update && brew install chisel`
  - Preference:
    - Behaviors:
      - Sound: Starts - Blow; Issue - Tink; Succeeds - Submarine; Fails - Purr
      - Fonts & Colors: Ciapre
      - Text Editing: Editing: Check: Line numbers, Automatically trim trailing whitespace (Including whitespace-only lines)
      - Indentation: Indent all with 2 spaces. Tab width: 2. Indent wrapped lines by 2 spaces
      - Downloads: download everything

## Eclipse:

- Installation Guide
  - Download most recent Java SE JDK (Java Development Kit) from Oracle’s website. Something like “Java SE Development Kit 8u51”. NOT Java website
  - Download and install JRE (Java Runtime Environment) from Java website
  - Download and install Eclipse from Eclipse website
- Preference
  - General
    - Keys
      - Run/Debug - Cmd+R
      - Run JUnit Test - Cmd+U (Take out conflict: “Evaluate selected text”)
      - Content Assit: Ctrl+Space
      - Console: buffer size: 2,147,383,647
    - Editors
      - Text Editors: Displayed tab width: 2, Insert spaces for tabs
  - Java
    - Code Style - Formatter - New - Indentation - Tab policy, Indentation size. Tab size
      - https://alextheedom.wordpress.com/code-and-stuff/how-do-i-change-eclipse-to-use-spaces-instead-of-tabs/
      - Editor --> Content Assist --> Advanced. Make sure -Java Proposals is ticked

---

## Reinstall
- Erase image
  - Name: Macintosh HD
  - Format: Mac OS Extended (Journaled) - turn on FireVault later

## Preferences
- System Preferences
  - Security & Privacy
    - General: Show a message when the screen is locked
    - Allow apps downloaded from: Anywhere
  - Sharing
    - Computer Name: Compass
    - Enable: remote login, Remote Mangement
  - TrackPad:
    - Option: Choose All
    - Speed: fastest
    - 3-finger drag: https://support.apple.com/en-us/HT204609
  - Keyboard:
    - Shortcuts - Input Sources: Sportlight - Show Spotlight search: ^ + Space
  - Input Sources: Add Simplified Chineseter
  - Date & Time
    - Show date
    - Time Zone: Set time zone automatically
  - Users & Groups
    - Login Items: Flycut, GoogleDrive, Magnet, CloudApp, Snagit
    - Login Options: Show fast user switching menu as “Full Name”
  - Internet Accounts:
    - iCloud: Turn on all
  - Energy Saver - default

- Finder
  - Show all insivible files
    - `defaults write com.apple.finder AppleShowAllFiles YES`
    - Hold the ‘Option/alt’ key, then right click on the Finder icon in the dock and click Relaunch
  - View: Show Tab Bar, Path Bar, Status Bar
  - Preference: Show all filename extensions
  - Sort by Type
  - Favorites: User, Code, Company, Photo, GoogleDrive, Downloads, Documents, Applications, iCloud Drive, AirDrop, Recents

- Dock:
  - Position: Left
  - Size: middle to left
  - Magnification: middle to right
  - Items: Finder, Chrome, Calendar, Notes, Sublime, SourceTree, YouDao, iTerm2

- Calendar
  - General: Show “18” hours at a time, Deafult Calendar: Apollo
  - Advanced: Turn on timezone support

- Chrome Setting:
  - Sign In: Advanced Sync Settings: Sync Everything

- Flycut
  - Shortcut: Alt+Cmd+V

- SourceTree
  - General
    - Always display full console output
    - Confirm switching ranches when working copy is clean
  - Git
    - Do not fast-forward when merging, always create commit

- MAMP PRO
  - [Yosemite fix](http://stackoverflow.com/questions/11771105/apache-server-wont-start-in-mamp): change a file name
  - xip.io [allows non-local device](http://simianstudios.com/blog/post/xip.io-mamp-pro-super-easy-local-network-testing) to access the pages:
    - Without xip: ```http://chai:8888/PS2/ssotest.php```
    - With xip: ```http://chai.192.168.0.111.xip.io:8888/PS2/ssotest.php```

## Application:

#### Browser
  - Chrome
  - Deprecated: Firefox

#### Cloud Storage
  - Google Drive
    - set folder name to “GoogleDrive”
    - Leave out Shared_NoSync
  - CloudApp
  - Deprecated: Dropbox

#### Development
  - IDE/Tool
    - Android
      - Android Studio, Eclipse
    - iOS
      - iOS Console, Prepo, Spark Inspector, XCode
    - Others
      - CodeRunner
  - Database
    - MySQLWorkbench, Robomongo, Navicat, sqlitebrowser
  - Decompiler
    - [jadx](https://github.com/skylot/jadx), [Java Decompiler](http://jd.benow.ca/)
  - Network Communication
    - CocoaRestClient, LightBlue, WireShark
  - Server
    - MAMP Pro
  - Text Editor
    - Atom, Brackets, Sublime
  - Utility
    - Hex Fiend, FileZilla, Reflector, Skitch, TeamViewer, SourceTree(From website) - DiffMerge, Latern
    - Mac Specific
      - Flycut, Free Ruler 1.7b5, Go2Shell(From App Store)

#### Adobe
    - Photoshop, Illustrator, Premiere, After Effects
    - Lightroom
      - Presets: Store presets with this catalog
      - Back up:
        - Once a week
        - Location: ~/GoogleDrive/Photot/General/Backups
#### Others
  - Office
    - Microsoft Excel/OneNote/Word
  - Music
    - GarageBand, Sibelius 7, Spotify, Virtual MIDI Piano Keyboard (Sourceforge), QQ Music, Netease Music
  - Utility
    - BitTorrent, Clean My Mac 3, The Unarchiver, Magnet, Snagit
  - Others
    - Steam, Popcorn-Time, Skype, VLC, MPlayerX, WeChat, 搜狐影音, 有道词典, 爱奇艺视频

#### Copy stuff
  - Cloud drive
    - let GoogleDrive & iCloud drive sync
  - Folder:
    - Code, Movies
  - Settings:
    - Preference. gather_settings.sh
    - iTerm2, IntelliJ
    - Huion Tablet Q11K
  - external drive backup

---

## TODOs before Reinstall
- Backup Guide
  - Automated preference collection: `https://github.com/yinanfang/Preference/blob/master/gather_settings.sh`
  - Manual export
    - iTerm2 profiles
    - IntelliJ settings
  - Files in ~/Code that's not version controlled
- Already setup but should double check:
  - Lightroom Preset from `~/Library/Application Support/Adobe/Lightroom`
    - Develop Presets
    - Import Presets
    - Export Presets

---

## To-Read
- iOS network debug: `https://wiki.appcelerator.org/display/guides2/Native+iOS+Debugging+and+Testing+Tools`
