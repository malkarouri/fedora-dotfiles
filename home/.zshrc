# From https://github.com/zsh-users/antigen

source $HOME/config/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Liquid Prompt
antigen bundle nojhan/liquidprompt

# Load the theme.
antigen theme robbyrussell

# alias tips
antigen bundle djui/alias-tips

# Tell antigen that you're done.
antigen apply


if [ -e /home/vagrant/.nix-profile/etc/profile.d/nix.sh ]; then . /home/vagrant/.nix-profile/etc/profile.d/nix.sh; fi

alias clean='find . -name "*~" -o -name "#*#" | xargs -r rm'

case $- in *i*)
  if [ -z "$TMUX" ]
  then
    if tmux has
    then
      exec tmux attach
    else
      exec tmux new
    fi
  fi
esac

setopt PRINT_EXIT_VALUE
