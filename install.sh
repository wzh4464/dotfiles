#!/bin/bash

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing dotfiles from $DOTFILES_DIR"

# Backup existing config if it exists and is not a symlink
if [ -f ~/.tmux.conf ] && [ ! -L ~/.tmux.conf ]; then
    echo "Backing up existing ~/.tmux.conf to ~/.tmux.conf.backup"
    mv ~/.tmux.conf ~/.tmux.conf.backup
fi

# Create symlink for tmux config
echo "Creating symlink for tmux.conf..."
ln -sf "$DOTFILES_DIR/tmux/tmux.conf" ~/.tmux.conf

# Install TPM if not present
if [ ! -d ~/.tmux/plugins/tpm ]; then
    echo "Installing TPM (Tmux Plugin Manager)..."
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

echo ""
echo "✓ Dotfiles installation complete!"
echo ""
echo "Next steps:"
echo "  1. Start tmux: tmux"
echo "  2. Install plugins: press prefix + I (Alt-Space + I)"
echo "  Or just start tmux - plugins will auto-install on first run."
