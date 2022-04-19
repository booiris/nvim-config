set-option -sg escape-time 10
set-option -g focus-events on
set-option -g default-terminal "screen-256color"
set-option -sa terminal-overrides ',xterm-256color:RGB' 
set -g mouse on
set -g status-fg '#1a1a00'
set -g status-bg '#6666ff'
set -g status-interval 1
setw -g monitor-activity on
set -g visual-activity on
set -g status-right-length 80
set -g status-left-length 80
set -g status-left '"#{pane_title}"             '
set -g status-right "#[fg=#ffff00,bold]#(tmux-mem-cpu-load -i 1 -g 5 -m 0 -t 0 -a 0)  #[default]%Y-%m-%d %H:%M:%S"
#setw -g automatic-rename on
#set-option -g allow-rename off
