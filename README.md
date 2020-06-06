dotfiles
========

## Configure git
* Set up git name and email: https://help.github.com/en/articles/set-up-git#setting-up-git
* Set up SSH key and add to Github: https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
* Download Kaleidoskop from the Mac App Store
* Install `ksdiff` integration
* Set up git integration from `Integrations ...`

## Install Brew
```sh
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew update
```

## Install dotfiles
```sh
$ cd ~/
$ git clone git@github.com:matthiasplappert/dotfiles.git .dotfiles
$ cd .dotfiles/
$ bash install.sh
```

## Install iTerm2
* Install Powerline fonts: https://github.com/powerline/fonts/tree/master/Meslo%20Slashed
* Download https://www.iterm2.com
* Configure iTerm to use preferences from `~/.dotfiles` in `Preferences > General > Load preferences from custom folder or URL`
* Restart iTerm2
* Update font settings to `Meslo LG M 13pt`
* Check `Save changes to folder when iTerm2 quits`

## Install Sublime
* Download and install Sublime
* Install Package Control: https://packagecontrol.io/installation
* Install the following packages
    * `Solarized Color Schema`
    * `Dockerfile Syntax Highlighter`
    * `Expand Tabs on Save`
    * `Protobuf Syntax Highlighter`
    * `SublimeLinter`
    * `SublimeLinter-flake8`
    * `Theme - Solarized Space`
    * `GitGutter`
* Copy `Preferences.sublime-settings` into User preferences
* `ln -s ~/.dotfiles/Default.sublime-mousemap ~/Library/Application\ Support/Sublime\ Text \3/Packages/User/Default.sublime-mousemap`

## Install pyenv and Python
```sh
$ brew install pyenv
$ brew install zlib
$ brew install sqlite
$ export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
$ export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"
$ export LDFLAGS="${LDFLAGS} -L/usr/local/opt/sqlite/lib"
$ export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/sqlite/include"
$ export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"
$ export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/sqlite/lib/pkgconfig"
$ pyenv install 3.6.8
```

Also add the following to `localrc`:
```bash
eval "$(pyenv init -)"
```

## Configure keyboard input
```sh
$ defaults write -g InitialKeyRepeat -int 10
$ defaults write -g KeyRepeat -int 1
```

Log out and back in for them to take effect.