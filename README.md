# Dotfiles

My dotfiles. Powered by dreams. Use gnu stow.
Not extensive list.

Githubs Dark Dimmed theme is the best theme. It isn't a complete pitch dark theme, and can ease into a white background. It is also avalible in a range of applications but is also simple enough for ai to generate a theme for any given application. Its source is avalible at [primer/primitives](https://github.com/primer/primitives)

## Software

Names are packages found on arch/aur repos

- [ghostty](https://ghostty.org/) - Terminal
- [starship](https://starship.rs/) - Terminal prompt thingy
- [fastfetch](https://github.com/fastfetch-cli/fastfetch) - neofetch but not eol
- [Niri](https://github.com/YaLTeR/niri) - Scrolling-tiling Wayland compositor

- [Noctalia](https://noctalia.dev/) - Shell for niri. Adds most things I use. Also has color management.

- [rofi](https://github.com/davatorium/rofi) - application picker and various other tasks (now supports wayland)
- [rofi-power-menu](https://github.com/jluttine/rofi-power-menu) - computer off

## Tools

- [Mise](https://mise.jdx.dev/) - Used for most every project, is like pyenv or asdf but includes some extras like env management.
- [LazyVim](https://www.lazyvim.org/) - Terminal editor, although I more often use vim for a terminal editor.
- [bat](https://github.com/sharkdp/bat?tab=readme-ov-file) - My chosen tool of paging. Can add color to manpages.
    - [bat-extras](https://github.com/eth-p/bat-extras) - A couple extra tools using bat, notably Batman.

## Fonts

I use Monaspace for ide/devlopment and Jetbrains mono for terminals.

```json
{
    "editor.fontFamily": "Monaspace Neon Var, Monaspace Neon NF, Noto Emoji",
    "terminal.integrated.fontFamily": "JetBrainsMono Nerd Font, Consolas"
}
```

- [otf-monaspace-nerd](https://archlinux.org/packages/extra/any/otf-monaspace-nerd/)
- [ttf-monaspace-variable](https://archlinux.org/packages/extra/any/ttf-monaspace-variable/)
- [ttf-jetbrains-mono](https://archlinux.org/packages/extra/any/ttf-jetbrains-mono/)
- [ttf-jetbrains-mono-nerd](https://archlinux.org/packages/extra/any/ttf-jetbrains-mono-nerd/)

## Scripts

Scripts are pulled from many places.

- [`niri_tweaks`](https://github.com/heyoeyo/niri_tweaks)
    - [`.config/scripts/niri_window_details.sh`](.config/scripts/niri_window_details.sh)
    - [`.config/scripts/niri_peekaboo.py`](.config/scripts/niri_peekaboo.py)

## Systemd

Services are listed in [`.config/systemd/user`](.config/systemd/user). Enable them to boot with niri using `systemctl --user add-wants niri.service \<name>`. List all services using `find .config/systemd/user/*.service -printf '%f\n'`
