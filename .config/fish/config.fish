if status is-interactive
    # Commands to run in interactive sessions can go here
    set --g -x fish_greeting ''
    # set theme_gruvbox
    starship init fish | source
    set PATH "/home/uson/.local/share/solana/install/active_release/bin" $PATH 
end
