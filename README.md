>[!WARNING]
>these dotfiles are personalised to my liking and may need to be tweaked to adjust to yours
>intallation may also cause some errors that need to be fixed. (dont take that long)

# Hyprland Rice

Welcome to my Hyprland Rice configuration! This setup is designed to provide a clean, efficient, and visually appealing desktop environment.

## Dependencies

- **Window Manager**: [Hyprland](https://github.com/hyprwm/Hyprland) - A dynamic tiling Wayland compositor.
- **Compositor**: Wayland for smooth and modern graphics.
- **Terminal**: [Kitty](https://sw.kovidgoyal.net/kitty/) - A fast, feature-rich, GPU-based terminal emulator.
- **Launcher**: [Wofi](https://hg.sr.ht/~scoopta/wofi) - A Wayland-native application launcher.
- **Bar**: [Waybar](https://github.com/Alexays/Waybar) - A highly customizable status bar.
- **Notifications**: [Mako](https://github.com/emersion/mako) - A lightweight Wayland notification daemon.
- **Color Scheme Generator**: Pywal16 - A tool to generate and apply color schemes based on your wallpaper.

## Screenshots

![Desktop Screenshot](https://github.com/markart25/markdots/raw/main/image.png)
![Desktop Screenshot](https://github.com/markart25/markdots/raw/main/2026-05-02-080726_hyprshot.png)

## Installation

1. Clone this repository:
    ```bash
    git clone https://github.com/markart25/markdots
    cd markdots
    ```

2. Install the required dependencies:
    ```bash
    sudo pacman -S hyprland kitty wofi waybar mako zsh ttf-jetbrains-mono ttf-jetbrains-mono-nerd awww hypridle
    yay -S python-pywal16
    ```

3. Optional cool apps:
    ```bash
    sudo pacman -S fastfetch asciiquarium cmatrix btop
    ```

4. Include in ~/.zshrc (if u use zsh) config to include fastfetch on open terinal (OPTIONAL)
   ```bash
   echo -e '\n#open fastfetch on terminal start\nfastfetch' >> ~/.zshrc
   ```
   to check which shell you're using:
   ```sh
   echo $SHELL
   echo $0
    ```
   so the command above $SHELL is the shell in TTY and $0 is the current open shell. I recomend running this after you are in hyprland so you can actually check which shell you are using in hyprland. for me $SHELL is bash but $0 in  hyprland is zsh but $0 in TTY is also bash. For me i have put fastfetch in both the bash and zsh config so when i login i can see fastfetch and when i open terminal in hyprland i also see it
  
   if u dont use zsh to run fastfetch every time a new terminal opens, add these two lines (1st is optional) to your shell config:
   ```zsh
   # open fastfetch on terminal start 
   fastfetch
   ```

   | Shell | Config File |
   |-------|-------------|
   | zsh | `~/.zshrc` |
   | bash | `~/.bashrc` |
   | fish | `~/.config/fish/config.fish` |

6. Copy the configuration files to their respective locations:
    ```bash
    cp -r .config/* ~/.config/
    ```


7. Update the Waybar and Wofi configuration (important):
    If your Waybar and Wofi configuration references a CSS file like:
    ```
    @import "/home/mark/.cache/wal/colors-waybar.css";
    ``` 
    make sure to replace "mark" with your actual username
   if you dont do this wofi and waybar may not look correctly.

8. Restart your session and enjoy your new setup!
   
Enjoy your Hyprland rice!

# Extra Info

## Customization

Feel free to tweak the configuration files in the `~/.config` directory to suit your preferences.

All important hyprland configs will be in ~/.config/hypr/config

## fastfetch ascii
the file `/home/mark/.config/fastfetch/rename-to-just-ascii-to-use` can be renamed to `ascii` and will show up when you type in the terminal:
```bash
fastfetch
```
## to learn keybinds
mainmod (usually windows key) + Q to open terminal. Then 
```bash
cat ~/.config/hypr/configs/keybinds.conf
```
to veiw all keybinds in hyprland

## errors
if there is an error with colours on firt start run
```bash
wal -i ~/.config/wallpapers
```

if there are any other errors you can report them on my discord found on my profile
