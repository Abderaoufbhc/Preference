# Mac Setup

## Application:

#### Browser
  - Firefox, Chrome

#### Cloud Storage
  - CloudApp, Dropbox, Google Drive(set folder name to “GoogleDrive”)

#### Development
  - Adobe
    - Photoshop, Illustrator
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
      - Flycut, Free Ruler 1.7b5, Go2Shell(From Website), InVisible, SizeUp

#### Others
  - Office
    - Microsoft Excel/OneNote/Word
  - Music
    - GarageBand, Sibelius 7, Spotify, Virtual MIDI Piano Keyboard (Sourceforge)
  - Utility
    - BitTorrent, Clean My Mac 3, The Unarchiver
  - Others
    - Steam, Popcorn-Time, Skype, VLC, MPlayerX, WeChat, 搜狐影音, 有道词典, 爱奇艺视频

---

## Languages/Platform & Package Manager

### Apple/Mac

#### Mac Package manager: [Homebrew](http://brew.sh/)

Installation
```shell
    $ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Packages to install
```shell
    $ brew update
    $ brew install watch, watchman, the_silver_searcher
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
－ `nvm ls` to check current node
－ `nvm install x.x` to install the latest node
```shell
    npm install -g babel-cli bower csslint codeclimate-test-reporter eslint flow-bin gulp istanbul jasmine-node karma localtunnel npm-check npm-check-updates node-inspector nodemon plato pm2 webpack
```
  - Non-global item: express
  - Accessary items: generator-gulp-angular generator-gulp-webapp, learnyounode mean-cli yo


#### Python package manager: gem?

### PHP

#### PHP package manager: Autoload?

#### PHP package manager: [pear](https://pear.php.net)

System-wide installation [tutorial](https://pear.php.net/manual/en/installation.getting.php)
```shell
    $ curl -O  http://pear.php.net/go-pear.phar
    $ sudo php -d detect_unicode=0 go-pear.phar
```

---

## Command Line

#### Terminal/iTerm2

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

#### Utility

  - wget: No wget on Mac. Use curl instead

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

## Preferences

- System Preferences
  - Security & Privacy
    - General: Show a message when the screen is locked
    - Allow apps downloaded from: Anywhere
  - Sharing
    - Computer Name: Compass
    - Enable: remote login, Remote Mangement
  - TrackPad: Choose All
  - Keyboard:
    - Shortcuts - Input Sources: Sportlight - Show Spotlight search: ^Space
  - Input Sources: Add Simplified Chineseter
  - Date & Time
    - Show date
    - Time Zone: Set time zone automatically
  - Users & Groups
    - Login Items: Flycut, iTerm2
    - Login Options: Show fast user switching menu as “Full Name”
  - Internet Accounts:
    - iCloud: Turn on all
  - Energy Saver:
    - Battery:
    - Power Adapter: Computer sleep - Never; Display sleep - 2

- Finder
  - View: Show Tab Bar, Path Bar, Status Bar
  - Sort by Type

- Docker:
  - Position: Left
  - Items: Finder, Chrome, Safari, Calendar, Notes, Sublime, SourceTree, YouDao, Terminal

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

---

## To-Read
- iOS network debug: `https://wiki.appcelerator.org/display/guides2/Native+iOS+Debugging+and+Testing+Tools`
