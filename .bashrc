#
# ~/.bashrc
#

# Add local/bin to path
export PATH=$HOME/.local/bin:$HOME/.config/scripts:$PATH

# If not running interactively, exit early
[[ $- != *i* ]] && return

# Tempdir and file

export TMP_TEMPLATE='/tmp/tmp.shell.XXXXX'
export TMP_FILE=$(mktemp $TEMPSUFFIX)
export TMP_DIR=$(mktemp -d $TEMPSUFFIX)

function _tmp_cleanup {
  # Tempdir cleanup
  if [ -e "$TMP_DIR" ] && [ -z "$(ls -A $TMP_DIR)" ]; then
    # Cleanup if empty/
    rmdir "$TMP_DIR"

  fi
  if [ -e "$TMP_FILE" ] && [ -s "$TMP_FILE" ]; then
    rm "$TMP_FILE"
  fi
}

# trap _tmp_cleanup EXIT

# Misc env vars
export EDITOR='vim'

# Add color to common commands
alias ip='ip -c'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cat='bat -pp'

# add some aliases
alias s='kitten ssh'
alias icat='kitten icat'
alias lessit='$(history -p \!\!) | less'

alias ua-drop-caches='sudo paccache -rk3; paru -Sc --aur --noconfirm'
alias ua-update-all='export RATE_TEMP="$(mktemp)"; \
    sudo true; \
    rate-mirrors --save=$RATE_TEMP arch --max-delay=21600 \
      && sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist-backup \
      && sudo mv $RATE_TEMP /etc/pacman.d/mirrorlist \
      && ua-drop-caches \
      && paru -Syyu --noconfirm'

# prompt stuff, TODO: replace with starship
PS1='[\u@\h \W]\$ '
color_prompt=yes
force_color_prompt=yes

# Use wayland for apps
MOZ_ENABLE_WAYLAND=1

# Hyprland scripts dir
export SCRIPTS_DIR=$HOME/.config/scripts

# Dev tools
export EDITOR=vim
## Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
