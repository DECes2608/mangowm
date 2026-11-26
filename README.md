# How it looks?

<img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/73df7ba5-320a-4f7c-89f0-4a193e516ffa" />

# Installation

## Necessary Apps

- **mangowm**
- **foot**
- **xdg-desktop-portal**
- **xdg-desktop-portal-wlr**
- waybar
- rofi
- mako
- thunar
- fish
- neovim
- fastfetch
- gammastep
- drift
- copyq
- wl-clipboard
- grim
- slurp

## Setup

Clone the repo, make scripts executable, and copy configs to `~/.config`:

```bash
git clone https://github.com/DECes2608/mangowm.git
cd mangowm
find . -type f \( -name "*.sh" -o -path "*/scripts/*" \) -exec chmod +x {} +
mkdir -p ~/.config
cp -r mango waybar rofi mako xdg-desktop-portal xdg-desktop-portal-wlr nvim fastfetch fish foot gammastep drift ~/.config/
```

### Optional: Remove Touchscreen & Gesture Scripts

If you don't have a touchscreen or don't want rotation and screen gestures, delete `mango/scripts`:

```bash
rm -rf ~/.config/mango/scripts
```
