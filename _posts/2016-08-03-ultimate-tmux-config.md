---
layout: post
title: The ultimate tmux config
tags: [coding, tmux]
share-img: https://epwalsh.fyi/img/posts/2016-08-03/tmux-setup.png
published: true
---

After using Tmux for a year and a half I finally have a configuration that I am satisfied with. 
I can't claim originality for a lot of the details here but I try to provide credit where 
it is due.

> Note: At the time of this post I am using Tmux 2.2 on OS X 10.11.6.

![tmux-config](/img/posts/2016-08-03/tmux-setup.png)

I spent a lot time customizing the status bar. The majority of the inspiration for the layout came from 
[this post](http://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/). On the very left,
the window and pane number are displayed in the two brackets ```[ ]``` and then the current command that
is running (like 'bash' for example). On the right, the current song that's playing (I'm going through
a country phase), followed by the battery status (it will be a different color depending on the amount of charge
left), and lastly the date and time.

## Now playing and battery status

To display the song information and battery status I have Tmux call two external bash scripts which print out the relevant info.
For the song information I used the following script which I got from [https://www.tylerewing.co/tmux-now-playing](https://www.tylerewing.co/tmux-now-playing):

{% highlight bash linenos %}
#!/bin/bash
# Source: https://www.tylerewing.co/tmux-now-playing 

NOW_PLAYING=$(osascript <<EOF
set spotify_state to false
set itunes_state to false
if is_app_running("Spotify") then
    tell application "Spotify" to set spotify_state to (player state as text)
end if
if is_app_running("iTunes") then
    tell application "iTunes" to set itunes_state to (player state as text)
end if
(* Whatever other music applications you use *)
if spotify_state is equal to "playing" then
    tell application "Spotify"
    set track_name to name of current track
    set artist_name to artist of current track
    return track_name & " - #[bold]" & artist_name & "#[nobold]"
    end tell
else if itunes_state is equal to "playing" then
    tell application "iTunes"
    set track_name to name of current track
    set artist_name to artist of current track
    return track_name & " - #[bold]" & artist_name & "#[nobold]"
    end tell
else
    return "Nothing playing :("
end if
on is_app_running(app_name)
    tell application "System Events" to (name of processes) contains app_name
end is_app_running
EOF)

echo $NOW_PLAYING
{% endhighlight %}

For the battery status I wrote this little script:

{% highlight bash linenos %}
#!/bin/bash

HEART='❤'

battery_info=`pmset -g batt`
current_charge=$(echo $battery_info | grep -o '[0-9]\+%' | awk '{sub (/%/, "", $1); print $1}')

if [[ $current_charge -lt 30 ]]; then
    echo -n '#[fg=colour41]'
elif [[ $current_charge -lt 50 ]]; then
    echo -n '#[fg=colour42]'
elif [[ $current_charge -lt 70 ]]; then
    echo -n '#[fg=colour43]'
elif [[ $current_charge -lt 90 ]]; then
    echo -n '#[fg=colour44]'
else
    echo -n '#[fg=colour45]'
fi

echo -n "$HEART $current_charge%"
{% endhighlight %}

## Full tmux config

Below is my full ```~/.tmux.conf```:

{% highlight bash linenos %}
# The tmux config of Evan Pete Walsh >> epwalsh.com :: epwalsh10@gmail.com
#
# Last Modified: 2016-07-10 13:49:20

# Key bindings ----------------------------------------------------------- 
# Resize pane with option + arrow keys
bind -n M-Left resize-pane -L 10
bind -n M-Right resize-pane -R 10
bind -n M-Down resize-pane -D 10
bind -n M-Up resize-pane -U 10

# Select pane with ctrl + vim nav keys
bind-key l select-pane -R
bind-key h select-pane -L
bind-key j select-pane -D
bind-key k select-pane -U

# Intuitive window splits
bind-key | split-window -h -c "#{pane_current_path}"
bind-key _ split-window -v -c "#{pane_current_path}"

# Easily source config while in tmux
bind-key r source-file ~/.tmux.conf

# Vim keybindings
set -g mode-keys vi

# Copying and pasting
unbind p
bind p paste-buffer
bind-key -t vi-copy 'v' begin-selection
bind-key -t vi-copy 'y' copy-selection
# ------------------------------------------------------------------------ 

# Mouse support ---------------------------------------------------------- 
# set -g mouse-select-pane on
# set -g mouse-resize-pane on
# set -g mouse-select-window on
# set -g mode-mouse on
set -g mouse
# ------------------------------------------------------------------------

set -g status on
# set -g status-utf8 on
# set-window-option -g utf8 on

# Make colors work
set -g terminal-overrides 'xterm*:smcup@:rmcup@'
set -g default-terminal "screen-256color"

# Panes
set -g pane-border-fg black
set -g pane-active-border-fg brightred

# Status line ------------------------------------------------------------ 
# set -g status-utf8 on
set -g status-justify left
set -g status-bg default
set -g status-fg colour12
set -g status-interval 2
# ------------------------------------------------------------------------ 

# Messages --------------------------------------------------------------- 
set -g message-fg black
set -g message-bg yellow
set -g message-command-fg blue
set -g message-command-bg black
# ------------------------------------------------------------------------ 

# Window mode
setw -g mode-bg colour6
setw -g mode-fg colour0

# Window status ---------------------------------------------------------- 
setw -g window-status-format " #F#I:#W#F "
setw -g window-status-current-format " #F#I:#W#F "
setw -g window-status-format "#[fg=magenta]#[bg=black] #I #[bg=cyan]#[fg=colour8] #W "
setw -g window-status-current-format "#[bg=brightmagenta]#[fg=colour8] #I #[fg=colour8]#[bg=colour14] #W "
setw -g window-status-current-bg colour0
setw -g window-status-current-fg colour11
setw -g window-status-current-attr dim
setw -g window-status-bg green
setw -g window-status-fg black
setw -g window-status-attr reverse
# ------------------------------------------------------------------------ 

set -g status-left ''

# Modes ------------------------------------------------------------------ 
setw -g clock-mode-colour colour135
setw -g mode-attr bold
setw -g mode-fg colour196
setw -g mode-bg colour238
# ------------------------------------------------------------------------ 

# Panes ------------------------------------------------------------------ 
set -g pane-border-bg colour235
set -g pane-border-fg colour238
set -g pane-active-border-bg colour236
set -g pane-active-border-fg colour51
# ------------------------------------------------------------------------ 

# Status bar ------------------------------------------------------------- 
set -g status-position bottom
set -g status-bg colour237
set -g status-fg colour137
set -g status-attr dim
set -g status-left ''
# See https://www.tylerewing.co/tmux-now-playing for now playing
set -g status-right '#[fg=colour81]♪ #(~/bin/now_playing.sh) #(~/bin/battery.sh) #[fg=colour233,bg=colour241,bold] %a %m-%d #[fg=colour233,bg=colour245,bold] %H:%M:%S '
set -g status-right-length 100
set -g status-left-length 30

setw -g window-status-current-fg colour81
setw -g window-status-current-bg colour237
setw -g window-status-current-attr bold
setw -g window-status-current-format ' [#I:#P]#[fg=colour250]:#[fg=colour255]#W#[fg=colour50]#F '

setw -g window-status-fg colour138
setw -g window-status-bg colour235
setw -g window-status-attr none
setw -g window-status-format ' [#I:#P]#[fg=colour237]:#[fg=colour250]#W#[fg=colour244]#F '

setw -g window-status-bell-attr bold
setw -g window-status-bell-fg colour255
setw -g window-status-bell-bg colour1
# ------------------------------------------------------------------------ 

# Messages --------------------------------------------------------------- 
set -g message-attr bold
set -g message-fg colour232
set -g message-bg colour166
# ------------------------------------------------------------------------ 

# Need this to open apps on OS X from within tmux. First install
# reattach-to-user-namespace with homebrew.
set-option -g default-command "reattach-to-user-namespace -l bash"
{% endhighlight %}
