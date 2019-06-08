dotfiles
========

## Configure git
* Set up git name and email: https://help.github.com/en/articles/set-up-git#setting-up-git
* Set up SSH key and add to Github: https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
* Download Kaleidoskop from the Mac App Store
* Install `ksdiff` integration
* Set up git integration from `Integrations ...`

## Install ZSH
```sh
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew install zsh
```

## Install dotfiles
```sh
$ cd ~/
$ git clone git@github.com:matthiasplappert/dotfiles.git .dotfiles
$ bash .dotfiles/install.sh
```

## Install iTerm2
* Install Powerline fonts: https://github.com/powerline/fonts/tree/master/Meslo%20Slashed
* Download https://www.iterm2.com
* Configure iTerm to use preferences from `~/.dotfiles` in `Preferences > General > Load preferences from custom folder or URL`
* Restart iTerm2
* Update font settings to `Meslo LG M 13pt`
* Check `Save changes to folder when iTerm2 quits`

## Sublime
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
