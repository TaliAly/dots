if status is-interactive
    set fish_greeting "" # no greeting
    set fish_function_path (path resolve $__fish_config_dir/functions/*/) $fish_function_path

    # commands
    alias :q "exit"
    alias pd "podman"
    alias ls "eza -a --icons --color=always --group-directories-first"
    alias clr "clear"
    alias v "nvim ."
    alias l "ls"
    alias vim "nvim ."

    # git
    alias g "git"
    alias gac "git add . && git commit"

    #utils
    alias untar "tar -xvzf"
    alias trees "eza --tree --color always | less -R"

    # scripts
    alias session "~/.local/bin/scripts/tmux-sessions.sh"
    alias dots "~/.local/bin/scripts/dots.sh"

    # typoes
    alias claer "clear"
    alias clera "clear"
end


# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish

source ~/.config/envman/PATH.env

# added by Webi for pyenv
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source
