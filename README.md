# Tmux Send All Plugin

A `tmux` plugin that sends a command to all your panes.

## Key Bindings

`prefix + a`: triggers the input in `tmux` command prompt

The default key bindings can be overridden by `set -g @sendall-key 'b'`

## Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

Add plugin to the list of TPM plugins in `.tmux.conf`:

`set -g @plugin 'codedogapp/tmux-send-all'`

Hit `prefix + I` to fetch the plugin and source it. You should now be able to use the plugin.

## Manual Installation

Clone the repository to you designated path

Add this line to your `.tmux.conf`

`run-shell ~/clone/path/send_all.tmux`

Reload TMUX environment with: `$ tmux source-file ~/.tmux.conf`. You should now be able to use the plugin.
