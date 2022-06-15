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

## Install powerline10k
* `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k`
* Configure everything (will install font etc)
* Replace config: `ln -s ~/.dotfiles/p10k.zsh ~/.p10k.zsh`

## Install iTerm2
* Download https://www.iterm2.com
* Configure iTerm to use preferences from `~/.dotfiles` in `Preferences > General > Load preferences from custom folder or URL`
* Restart iTerm2
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
* Install symlinks
    * `ln -s ~/.dotfiles/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings`
    * `ln -s ~/.dotfiles/Default.sublime-mousemap ~/Library/Application\ Support/Sublime\ Text \3/Packages/User/Default.sublime-mousemap`

## Install pyenv and Python
```sh
$ brew install pyenv
$ brew install pyenv-virtualenv
$ pyenv install 3.10.4
```

Also add the following to `localrc`:
```bash
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
```

## Configure keyboard input
```sh
$ defaults write -g InitialKeyRepeat -int 10
$ defaults write -g KeyRepeat -int 1
```

Log out and back in for them to take effect.

## Install MonitorControl
Follow instructions here: https://github.com/MonitorControl/MonitorControl
