## Dotfiles

My dotfiles.

## Manage with `rcm`

#### Install `rcm`

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

[Additional info on rcm.](http://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos)

## `gitconfig`

Glocal git config options are written to `~/.gitconfig`

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