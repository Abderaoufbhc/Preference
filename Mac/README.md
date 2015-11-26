# Mac Setup

### Application:

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
    - Hex Fiend, FileZilla, Reflector, Skitch, TeamViewer, SourceTree(From website), Latern
    - Mac Specific
      - Flycut, Free Ruler 1.7b5, Go2Shell(From Website), InVisible

#### Others
  - Office
    - Microsoft Excel/OneNote/Word
  - Music
    - GarageBand, Sibelius 7, Spotify
  - Utility
    - BitTorrent, Memory Clean
  - Others
    - Steam, Popcorn-Time, Skype, VLC, WeChat, 搜狐影音, 有道词典, 爱奇艺视频

---

### Terminal/iTerm2
  - Scheme: Ta-Da (Default)
  - Font: Fira Mono Medium for Powerline 11 pt for "Regular" and "Non-ASCII"
  - Window Size: Column 120 - Row 40/50
  - Cursor: FF0000 / Smart cursor color
  - Color Scheme:
      - Bright Orange: Window (0xFF9900 Color Pallettes - Web Safe Colors); Text (0xFFFFFF Black)
      - Pastel Black: Window (0x2D2D2D Patel black); Text (0xFFFFFF White)
  - iTerm2
    - Keys: Hotkey: system-wide: Cmd+i
    - Profile: Ta-Da, Hotkey Window

---

### Xcode:
  - Package
    - Spark Inspector
    - Alcatraz:
      - Themes: Ciapre
      - Plugins: Auto-Importer, CocoaPods, KSImageNamed, OMColorSense, RTImageAssets,       SCXcodeSwitchExpander, VVDocumenter-Xcode, XAlign, XcodeColors
  - Preference:
    - Behaviors:
      - Sound: Starts - Blow; Issue - Tink; Succeeds - Submarine; Fails - Purr
      - Fonts & Colors: Ciapre
      - Text Editing: Editing: Check: Line numbers, Automatically trim trailing whitespace (Including whitespace-only lines)
      - Indentation: Indent all with 2 spaces,
      - Downloads: download everything

---

### Eclipse:
Installation Guide
  - Download most recent Java SE JDK (Java Development Kit) from Oracle’s website. Something like “Java SE Development Kit 8u51”. NOT Java website
  - Download and install JRE (Java Runtime Environment) from Java website
  - Download and install Eclipse from Eclipse website

Preference
  - General
    - Keys
      - Run/Debug - Cmd+R
      - Run JUnit Test - Cmd+U (Take out conflict: “Evaluate selected text”)
      - Content Assit: Option+Space
      - Console: buffer size: 2,147,383,647

---

### Node.js
Install with nvm. Follow github instruction

npm global
  - Binary Path: usr/local/bin
  - Src Path: usr/local/lib/node_modules
  - Command:

```bash
    sudo npm install -g bower csslint codeclimate-test-reporter eslint express generator-gulp-angular generator-gulp-webapp gulp istanbul jasmine-node karma learnyounode mean-cli npm-check-updates node-inspector nodemon plato yo
```

---

### For Mac

System Preferences
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
    - Login Items: Flycut, Memory Clean, iTerm2
    - Login Options: Show fast user switching menu as “Full Name”
  - Internet Accounts:
    - iCloud: Turn on all
  - Energy Saver:
    - Battery:
    - Power Adapter: Computer sleep - Never; Display sleep - 2

Finder
  - View: Show Tab Bar, Path Bar, Status Bar
  - Sort by Type

Docker:
  - Position: Left
  - Items: Finder, Chrome, Safari, Calendar, Notes, Sublime, SourceTree, YouDao, Terminal

Calendar
  - General: Show “18” hours at a time, Deafult Calendar: Apollo
  - Advanced: Turn on timezone support

Chrome Setting:
  - Sign In: Advanced Sync Settings: Sync Everything

Flycut
  - Shortcut: Alt+Cmd+V

MAMP PRO
  - [Yosemite fix](http://stackoverflow.com/questions/11771105/apache-server-wont-start-in-mamp): change a file name
  - xip.io [allows non-local device](http://simianstudios.com/blog/post/xip.io-mamp-pro-super-easy-local-network-testing) to access the pages:
    - Without xip: ```http://chai:8888/PS2/ssotest.php```
    - With xip: ```http://chai.192.168.0.111.xip.io:8888/PS2/ssotest.php```

---

To-Read
iOS network debug: ```https://wiki.appcelerator.org/display/guides2/Native+iOS+Debugging+and+Testing+Tools```
