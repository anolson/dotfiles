## Dotfiles

My dotfiles. (inspired by [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles)).

## Setup

```sh
$ git clone git@github.com:anolson/dotfiles.git ~/.dotfiles
$ bin/setup
```

## Git

Global git config options are written to `~/.gitconfig`

Add local config options to `~/.gitconfig.local`

```sh
[user]
  name = Andrew Olson
  email = anolson@gmail.com
```

## Local `zsh` config

Add local zsh config to `~/.zshrc.local`

## Sublime Text

#### Install packages + prefs

First, install [Package Control](https://packagecontrol.io/installation).

```sh
$ ./sublime/setup
```
Sublime Text packages are configured in [Package Control.sublime-settings](sublime/Packages/User/Package%20Control.sublime-settings). After `sublime/setup` runs, Package Control will detect the changes and automatically install all the packages.

## Misc

#### Installing nvm

Run the install script:
https://github.com/nvm-sh/nvm#install--update-script

```
$ touch ~/.nvm
$ source ~/.zshrc
```

#### Install homebrew packages

The setup script installs a minimal set of packages, install additional packages with:

```
$ brew bundle
```

#### Terminal.app keyboard config

* Home -> `\001`
* End -> `\005`

## Additional resources

* [rcm](https://github.com/thoughtbot/rcm)
* [rcm, an rc file manager](http://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos)

