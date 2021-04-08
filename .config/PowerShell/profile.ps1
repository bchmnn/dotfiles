Set-PSReadlineKeyHandler -Key Tab -Function Complete


function dotfiles {
        git --git-dir=$HOME/.dotfiles --work-tree=$HOME $args
}

if ($host.Name -eq 'ConsoleHost') {

        function ls_git {
                & "$HOME\scoop\apps\git\current\usr\bin\ls" --color=auto --group-directories-first -hF $args
        }
        Set-Alias -Name ls -Value ls_git -Option Private

        function la {
                & "$HOME\scoop\apps\git\current\usr\bin\ls" --color=auto --group-directories-first -lAhF $args
        }

        function ll {
                & "$HOME\scoop\apps\git\current\usr\bin\ls" --color=always --group-directories-first -lAhF $args | less -r
        }

        Set-Alias -Name vim -Value nvim -Option Private
        Set-Alias -Name vi -Value nvim -Option Private
}

Invoke-Expression (oh-my-posh.exe --init --shell pwsh --config "$(scoop prefix oh-my-posh3)/themes/material.omp.json")
