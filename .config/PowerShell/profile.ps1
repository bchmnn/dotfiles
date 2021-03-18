function dotfiles {
    git --git-dir=$HOME/.dotfiles --work-tree=$HOME $args
}

Invoke-Expression (oh-my-posh.exe --init --shell pwsh --config "$(scoop prefix oh-my-posh3)/themes/material.omp.json")
