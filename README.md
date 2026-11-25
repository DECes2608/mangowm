# How it looks?

<img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/73df7ba5-320a-4f7c-89f0-4a193e516ffa" />

# after git clone

## put configs in ~/.config

``bash
git clone https://github.com/DECes2608/mangowm.git
``

``bash
cd mangowm && cp -r mango waybar rofi mako xdg-desktop-portal xdg-desktop-portal-wlr nvim fastfetch ~/.config/
``
## make scripts executable

``bash
find . -type f \( -name "*.sh" -o -path "*/scripts/*" \) -exec chmod +x {} +
``

### if you dont have a touch screen || if you dont want rotation and screen gestures you can delete mango/scripts

``bash
rm -r ~/.config/mango/scripts
``

# necessary apps

- waybar
- **mangowm**
- rofi
- mako
- **xdg-desktop-portal**
- **xdg-desktop-portal-wlr**
- thunar
- drift
- copyq
- wl-clipboard
- grim slurp
- fish
- **foot**
