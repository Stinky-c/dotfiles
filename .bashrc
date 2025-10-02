# Add local/bin to path
export PATH=$HOME/.local/bin:$HOME/.config/scripts:$PATH

# If not running interactively, exit early
[[ $- != *i* ]] && return

# Use wayland for apps
export MOZ_ENABLE_WAYLAND=1

# Misc env vars
export EDITOR='nvim'

# Add color to common commands
alias ip='ip -c'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cat='bat -pp'

# add some aliases
alias lessit='$(history -p \!\!) | less'

alias ua-update-mirrors='export RATE_TEMP="$(mktemp)"; \
    sudo true; \
    rate-mirrors --save=$RATE_TEMP arch --max-delay=21600 \
      && sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist-backup \
      && sudo mv $RATE_TEMP /etc/pacman.d/mirrorlist '
alias ua-drop-caches='sudo paccache -rk3; paru -Sc --aur --noconfirm'
alias ua-update-all='ua-update-mirrors && \ 
      ua-drop-caches && \
      paru -Syyu --noconfirm'

# prompt stuff, TODO: replace with starship
# hello starship!
eval "$(starship init bash)"
PS1='[\u@\h \W]\$ '
color_prompt=yes
force_color_prompt=yes


# Hyprland scripts dir
export SCRIPTS_DIR=$HOME/.config/scripts

# mise
eval "$(~/.local/bin/mise activate bash)" && eval "$(mise hook-env)"

# nnn
export NNN_TRASH=1

# epic hacker man
fastfetch

# UWSM start
if uwsm check may-start; then
  exec uwsm start default
fi