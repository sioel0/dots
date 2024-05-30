#!/bin/sh

if [[ -f "/home/sioel0/.zshrc" ]]; then
  rm -f /home/sioel0/.zshrc
fi

stow --target=$HOME home
stow --target=$HOME/.config config