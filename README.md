# Dotfiles

## Setup

|Mac|Windoof|
|-|-|
|`homebrew`|`chocolatey` `scoop`|

## Setup virgin machine

Clone this repo:
```console
git clone --bare git@github.com:bchmnn/dotfiles.git $HOME/.dotfiles
```

Alias for current sh session:
```console
# Unix
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Windoof
function dotfiles {
        git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME
}
```

And checkout:
```console
dotfiles checkout
```

Optionally configure .dotfiles repo to only show tracked files:
```console
dotfiles config --local status.showUntrackedFiles no
```

## Post setup
### Windoof
Link init.vim and profile.ps1 to their respecitve locations. Full path needed. Cmd needed.
```console
mklink C:\Users\<user>\AppData\Local\nvim\init.vim C:\Users\<user>\.config\nvim\init.vim
mklink C:\Users\<user>\Documents\PowerShell\profile.ps1 C:\Users\<user>\.config\PowerShell\profile.ps1
```
Add a scheduled task to automatically start the gpg-agent
at startup.
`$(scoop which gpgconf) --version`
Note: use this current symlink of the scoop dir.

## Font
[Fira Code Nerd Font](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf)
