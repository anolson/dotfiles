## Dotfiles

My dotfiles. (inspired by [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles)).

## Manage with rcm

#### Install rcm

```sh
$ brew tap thoughtbot/formulae
$ brew install rcm
```

#### Clone the dotfiles repo

```sh
$ git clone git@github.com:anolson/dotfiles.git ~/.dotfiles
```

#### Install dotfiles

```sh
$ rcup
```

#### Additional `rcm` resources

* [rcm](https://github.com/thoughtbot/rcm)
* [rcm, an rc file manager](http://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos)

## Fonts

Install the [powerline patched](https://github.com/Lokaltog/powerline-fonts)
fonts to get support for additional characters.

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

#### Packages

* Alternative Autocompletion
* Better CoffeeScript
* Git
* GoSublime
* HTML Mustache
* Markdown Preview
* Package Control
* Pretty JSON
* Rails Partial
* RubyTest
* SCSS
* SideBarEnhancements
* SublimeERB
* Theme - Soda
* Wrap Plus

#### Install preferences

First, install [Package Control](https://packagecontrol.io/installation).

```sh
$ ./sublime/install.sh
```
Package Control will install all the packages listed above.
