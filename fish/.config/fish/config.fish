if status is-interactive
    set fish_greeting "" # no greeting
    set fish_function_path (path resolve $__fish_config_dir/functions/*/) $fish_function_path

    # commands
    alias :q "exit"
    alias pd "podman"
    alias ls "eza -a --icons --color=always --group-directories-first"
    alias clr "clear"

    #utils
    alias untar "tar -xvzf"
    alias trees "eza --tree --color always | less -R"

    # scripts
    alias session "~/.bin/scripts/tmux-sessionizer"

    # typoes
    alias claer "clear"
    alias clera "clear"
end


# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish

set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
set PATH $PATH ~/.cargo/bin
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
