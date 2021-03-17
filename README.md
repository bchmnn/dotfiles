# Dotfiles

Because cool kids now have a dotfiles repo.

## Setup
### Mac
* brew

### Windoof
* choco
* scoop

## Setup virig machine

Clone this repo:
```console
$ git clone --bare git@github.com:bchmnn/dotfiles.git $HOME/.dotfiles
```

Alias for current sh session:
```console
$ alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

And checkout:
```console
$ dotfiles checkout
```

Optionally configure .dotfiles repo to only show tracked files:
```console
$ dotfiles config --local status.showUntrackedFiles no
```
