# Dotfiles

Personal dotfiles for tmux configuration.

## Quick Install

```bash
git clone git@github.com:YOUR_USERNAME/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

## What's Included

### Tmux

- Prefix: `Alt+Space`
- Mouse support enabled
- Vim-style navigation (`hjkl`)
- Vi copy mode

**Plugins:**
- tpm (plugin manager)
- tmux-sensible
- vim-tmux-navigator
- tmux-yank
- tmuxifier
- catppuccin theme (mocha)

**Key Bindings:**
| Key | Action |
|-----|--------|
| `prefix + r` | Reload config |
| `prefix + -` | Split vertical |
| `prefix + =` | Split horizontal |
| `prefix + hjkl` | Navigate panes |
| `prefix + Ctrl+hjkl` | Resize panes |
| `prefix + v` | Begin selection (copy mode) |
| `prefix + y` | Copy selection |
| `prefix + p` | Paste |

## Manual Plugin Install

If plugins don't auto-install, press `prefix + I` in tmux.
