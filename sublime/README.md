# Sublime Text 3

## Install [Package Control](https://packagecontrol.io/):

[Instruction](https://packagecontrol.io/installation#st3)

## Set Theme & Color Theme:

  - [Space Gray](https://github.com/kkga/spacegray)

## Useful plugin list
  - SFTP
    - SFTP: Commercial SFTP/FTP plugin - upload, sync, browse, remote edit, diff and vcs integration
  - Javascript
    - JsFormat: Javascript formatting for Sublime Text 2 & 3
    - SublimeLinter3: Interactive code linting framework for Sublime Text 3
  - PHP
    - Phpcs: PHP CodeSniffer, PHP Coding Standard Fixer, Linter and Mess Detector Support for Sublime Text
  - Python
    - Anaconda: Anaconda turns your Sublime Text 3 in a full featured Python development IDE including autocompletion, code linting, IDE features, autopep8 formating, McCabe complexity checker and Vagrant for Sublime Text 3 using Jedi, PyFlakes, pep8, PyLint, pep257 and McCabe that will never freeze your Sublime Text 3
  - SublimeREPL
  - Documentation:
    - DocBlockr: Simplifies writing DocBlock comments in Javascript, PHP, CoffeeScript, Actionscript, C & C++
  - SublimeLinter/SublimeLinter3
    - SublimeLinter-eslint: This linter plugin for SublimeLinter provides an interface to ESLint
    - SublimeLinter-phpcs: SublimeLinter plugin for PHP, using phpcs.

## Install Instruction

SFTP

    Package Preference
    {
      "email": "xiaosong@xiaosong.me",
      "product_key": "d419f6-de89e9-0aae59-2acea1-07f92a"
    }

SublimeLinter-phpcs ([Mac specific](http://viastudio.com/configure-php-codesniffer-for-mac-os-x/))

    // Install phpcs
    $ pear install PHP_CodeSniffer
    $ sudo mkdir -p /Library/Server/Web/Config/php
    $ sudo touch /Library/Server/Web/Config/php/local.ini
    $ echo 'include_path = ".:'`pear config-get php_dir`'"' | sudo tee -a /Library/Server/Web/Config/php/local.ini

    // configure phpcs rules
    // Find customized configuration folder
    $ pear config-show | grep php_dir
    // Get into the folder
    $ cd /usr/share/pear/PHP/CodeSniffer/Standards
    // Check existing standards
    $ phpcs -i
    // Create a new one if not exist
    $ mkdir MyStandard; cd MyStandard
    // Add "ruleset.xml" to the folder
    // Verify if the phpcs works
    $ phpcs index.php --standard=MyStandard --report=source
    // Set it as default standard for calling phpcs from commandline
    sudo phpcs --config-set default_standard MyStandard

    // Install Sublime plugin SublimeLinter-phpcs
    // Add "SublimeLinter.sublime-settings" for SublimeLinter's use
    Look for user.linters.phpcs.standard = "MyStandard"

Package Preference location: Preferences -> Package Settings -> My Plugin -> Settings User

## Command Line tools (https://gist.github.com/artero/1236170)

    $ ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime

## Sublime Test 2 specific

Package Control: https://packagecontrol.io/installation#st2
