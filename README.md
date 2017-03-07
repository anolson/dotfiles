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

#### Repo specific config

Set repo specific config options

```sh
$ git config user.email "anolson@gmail.com"
```

## Sublime Text

#### Install packages + prefs

First, install [Package Control](https://packagecontrol.io/installation).

```sh
$ ./sublime/setup
```
Sublime Text packages are are configured in [Package Control.sublime-settings](sublime/Packages/User/Package%20Control.sublime-settings). After `sublime/setup` runs, Package Control will detect the changes and automatically install all the packages.

## Additional resources

* [rcm](https://github.com/thoughtbot/rcm)
* [rcm, an rc file manager](http://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos)

