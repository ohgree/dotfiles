#unbinding crashing keys
unbind -n F1
unbind -n M-F5
#unbind -n C-F5
unbind -n F9
#fixing S-F1
unbind -n S-F1
bind-key -n S-F1 new-window -n help "sh -c '$BYOBU_PAGER ~/.byobu/help.tmux.txt'"
