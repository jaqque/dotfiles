# Dotfiles

My dotfile repository

## Why is this a git repo?

I have been wanting, for a long time, to make my dotfiles more managable, especially my zsh dotfiles. I looked at a lot of projects, such as [oh-my-zsh](), Zack Holman's [dotfiles](holman), and Ben Alman's [dotfiles](cowboy).

I liked all of the ideas, and none of the implementations.

The one that best suited my desires was Ben Alman's, so I have based my work off of his.

[oh-my-zsh]: https://github.com/robbyrussell/oh-my-zsh
[holman]: https://github.com/holman/dotfiles
[cowboy]: https://github.com/cowboy/dotfiles

## What, exactly, does the "dotfiles" command do?

It's really not very complicated. When dotfiles is run, it does a few things:

1. Git is installed if necessary, via APT or Homebrew (which is installed if necessary).
2. This repo is cloned into the `~/.dotfiles` directory (or updated if it already exists).
2. Files in `init` are executed (in alphanumeric order).
3. Files in `copy` are copied into `~/`.
4. Files in `link` are linked into `~/`.

Note:

* Dotfiles named with a comma are installed, with the , replaced with a period (eg: ,zshrc => .zshrc)
* Dotfiles in the dotfiles repo are ignored.
* The `backups` folder only gets created when necessary. Any files in `~/` that would have been overwritten by `copy` or `link` get backed up there.
* Files in `bin` are executable shell scripts.
* Files in `source` get sourced whenever a new shell is opened (in alphanumeric order).
* Files in `conf` just sit there. If a config file doesn't _need_ to go in `~/`, put it in there.
* Files in `lib`, also, just sit there. Mostly used for git submodules.
* Files in `caches` are cached files, only used by some scripts. This folder will be created if necessary.

## Installation
### OS X
Notes:

* You need to be an administrator (for `sudo`).
* You need to have installed [XCode Command Line Tools](https://developer.apple.com/downloads/index.action?=command%20line%20tools), which are available as a separate, optional (and _much smaller_) download from XCode.

```sh
bash -c "$(curl -fsSL https://raw.github.com/jaqque/dotfiles/master/bin/dotfiles)" && source ~/.zshrc
```

### Linux (Debian or Ubuntu)
Notes:

* You need to be an administrator (for `sudo`).
* If APT hasn't been updated or upgraded recently, it will probably be a few minutes before you see anything.

```sh
sudo apt-get -qq update && sudo apt-get -qq upgrade && sudo apt-get -qq install curl && echo &&
bash -c "$(curl -fsSL https://raw.github.com/jaqque/dotfiles/master/bin/dotfiles)" && source ~/.zshrc
```

## The "init" step
These things will be installed, but _only_ if they aren't already.

### OS X
* Homebrew
  * git

### Linux (Debian and Ubuntu)
* APT
  * git-core

### Linux (RHEL and Others)
* Yum (or otherwise)


## The ~/ "copy" step
Any file in the `copy` subdirectory will be copied into `~/`. Any file that _needs_ to be modified with personal information (like [.gitconfig](https://github.com/jaqque/dotfiles/blob/master/copy/.gitconfig) which contains an email address and private key) should be _copied_ into `~/`. Because the file you'll be editing is no longer in `~/.dotfiles`, it's less likely to be accidentally committed into your public dotfiles repo.

## The ~/ "link" step
Any file in the `link` subdirectory gets symbolically linked with `ln -s` into `~/`. Edit these, and you change the file in the repo. Don't link files containing sensitive data, or you might accidentally commit that data!

## Aliases and Functions
To keep things easy, the `~/.zshrc` file is extremely simple, and should never need to be modified. Instead, add your aliases, functions, settings, etc into one of the files in the `source` subdirectory, or add a new file. They're all automatically sourced when a new shell is opened.

## License
Copyright (C) 2013 John H. Robinson, IV  
Licensed under the MIT license.  
