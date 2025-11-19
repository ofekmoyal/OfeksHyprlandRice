# Hyde Hyprland Rice

A beautiful and functional Hyprland rice with custom animations, scripts, and configurations.

---

## 📁 File Structure

```
├── animations/              # Custom Hyprland animations
├── configs/                 # Additional configuration files
├── Monitor_Profiles/        # Monitor configuration profiles
├── scripts/                 # Custom scripts
├── UserConfigs/             # User-specific configurations
├── UserScripts/             # User-specific scripts
├── wallpaper_effects/       # Wallpaper transition effects
├── wallust/                 # Wallust color generation configs
├── application-style.conf   # Application styling rules
├── hypridle.conf            # Idle management settings
├── hyprland.conf            # Main Hyprland configuration
├── hyprlock.conf            # Lock screen configuration
├── hyprlock-2k.conf         # High-res lock screen configuration
├── initial-boot.sh          # Initial setup script
├── monitors.conf            # Monitor layout settings
├── workspaces.conf          # Workspace management settings
└── v2.3.17                  # Version reference
```

---

## ⚙️ Dependencies

### Core Components

- `hyprland` — Wayland compositor
- `hyprpicker` — Color picker
- `hypridle` — Idle management daemon
- `hyprlock` — Screen locker
- `xdg-desktop-portal-hyprland` — XDG portal implementation

### Compositor Libraries

- `hyprgraphics=0.3.0`
- `hyprutils=0.10.2`
- `hyprcursor=0.1.13`
- `hyprlang=0.6.3`
- `aquamarine=0.9.5`

### Utilities

- `waybar` — Status bar
- `wofi` — Application launcher
- `wlogout` — Logout menu
- `swww` or `hyprpaper` — Wallpaper daemon
- `grim`, `slurp` — Screenshot tools
- `wl-clipboard` — Clipboard management

### Audio & Media

- `pipewire` `pipewire-alsa` `pipewire-pulse` — Audio server
- `pamixer` — Volume control
- `playerctl` — Media player control

### Fonts

- `noto-fonts` `noto-fonts-cjk` `noto-fonts-emoji`
- `ttf-jetbrains-mono`
- `ttf-font-awesome`

### System

- `btop` — System monitor
- `imv` — Image viewer
- `networkmanager` — Network management
- `bluez` `bluez-utils` — Bluetooth support

---

## 🚀 Installation

1. **Backup your current Hyprland config:**
    ```sh
    mv ~/.config/hypr ~/.config/hypr-backup
    ```

2. **Clone this repository:**
    ```sh
    git clone [your-repo-url] ~/.config/hypr
    ```

3. **Install dependencies**  
    (Refer to the list above.)

4. **Reboot or restart Hyprland** to load your new configuration.

---

## 🎨 Features

- Custom animations (`animations/`)
- Multiple monitor support
- Wallpaper effects
- Color generation with Wallust
- Custom scripts for automation
- High-resolution lock screen support

---

## ⚠️ Notes

- `hyprlang` system version (`0.6.6`) is newer than built version (`0.6.3`) — rebuild Hyprland if issues occur.

## Credits

This configuration is built upon the excellent work of [HyDE-Project (HyDE)](https://github.com/HyDE-Project/HyDE).
Many thanks to the HyDE team for providing a strong foundation and inspiration for this setup!

Original HyDE repository: [https://github.com/HyDE-Project/HyDE](https://github.com/HyDE-Project/HyDE)
- Run `initial-boot.sh` for first-time setup.
- Monitor profiles are available in `Monitor_Profiles/`.
