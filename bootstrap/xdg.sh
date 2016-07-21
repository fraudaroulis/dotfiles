#!/usr/bin/env bash
#
# Initially create XDG dirs
# Run after shell/vars sourced
#

set -eu

mkdir -p "$BZR_PLUGIN_PATH"
mkdir -p "$BZR_HOME"
mkdir -p "$COMPOSER_CACHE_DIR"
