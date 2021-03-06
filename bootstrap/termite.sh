#!/usr/bin/env bash
#
# Symlink termite config
#

set -eu

# ============================================================================
# initialize script and dependencies
# ============================================================================

cd "$(dirname "$0")/.." || exit 1
readonly dotfiles_path="$(pwd)"
source "${dotfiles_path}/shell/helpers.sh"

# ==============================================================================
# Main
# ==============================================================================

dko::status "Symlinking termite config"
dko::symlink termite/config       .config/termite/config

dko::status "Installing terminfo"
tic -x "${dotfiles_path}/termite/termite.terminfo"

