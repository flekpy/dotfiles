# lsd сторонняя программа, для красивого вывода содержимого директории
alias ls='lsd'
if status is-interactive
    # Commands to run in interactive sessions can go here
     set --g -x fish_greeting ''
    starship init fish | source
end
