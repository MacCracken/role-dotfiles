#!/bin/bash
get_latest_release() {
  curl --silent "https://api.github.com/repos/$1/releases/latest" | # Get latest release from GitHub api
    grep '"tag_name":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                                    # Pluck JSON value
}


release="1.2.1"

wget -P library "https://raw.githubusercontent.com/caian-org/ansible-stow/v$release/stow"
