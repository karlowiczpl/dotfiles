if status is-interactive
    fish_default_key_bindings

    set fish_greeting "fish shell!"
end

set -gx EDITOR nvim
set -gx BROWSER firefox

alias ta 'tmux attach-session'
