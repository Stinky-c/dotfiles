# Dotfiles

My dotfiles. Powered by dreams. Use gnu stow.
Not extensive list.

Githubs Dark Dimmed theme is the best theme. It isn't a complete pitch dark theme, and can ease into a white background. It is also avalible in a range of applications but is also simple enough for ai to generate a theme for any given application. Its source is avalible at [primer/primitives](https://github.com/primer/primitives)

## Software

Names are packages found on arch/aur repos

- [ghostty](https://ghostty.org/) - Terminal
- [starship](https://starship.rs/) - Terminal prompt thingy
- [fastfetch](https://github.com/fastfetch-cli/fastfetch) - neofetch but not eol
- [blesh-git](https://github.com/akinomyoga/ble.sh) - used for transient prompts in bash. Currently not working
- [waybar](https://github.com/Alexays/Waybar) - A task bar
    - [waybar-niri-taskbar](https://github.com/LawnGnome/niri-taskbar)
    - [ignis](https://github.com/ignis-sh/ignis) - Similar to AGS but in python. Might replace waybar

- [Niri](https://github.com/YaLTeR/niri) - Scrolling-tiling Wayland compositor
- [swaybg](https://github.com/swaywm/swaybg) - very simple background management
- [swayidle](https://github.com/swaywm/swayidle) - idle management
- [swaylock](https://github.com/swaywm/swaylock) - screen locking

- [rofi](https://github.com/davatorium/rofi) - application picker and various other tasks (now supports wayland)
- [rofi-power-menu](https://github.com/jluttine/rofi-power-menu) - computer off

## Tools

- [Mise](https://mise.jdx.dev/) - Used for most every project, is like pyenv or asdf
- [LazyVim](https://www.lazyvim.org/) - Terminal editor, although I more often use vim

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

- [`niri_tweaks`](https://github.com/heyoeyo/niri_tweaks?tab=readme-ov-file#niri_peekaboopy)
    - [`.config/scripts/niri_window_details.sh`](.config/scripts/niri_window_details.sh)
    - [`.config/scripts/niri_peekaboo.py`](.config/scripts/niri_peekaboo.py)
