# 🛠️ Scleo's Portable Neovim Configuration

A high-performance, **single-file** Neovim setup designed for seamless portability across Windows, Linux, and macOS. This configuration balances a minimalist "vanilla-plus" feel with essential IDE power-ups.

## 🚀 Key Features
- **Zero-Touch Setup**: Automatically bootstraps the `lazy.nvim` plugin manager on first launch.
- **Smart Deletion**: `d` and `x` use the "Black Hole" register to prevent overwriting your clipboard.
- **OS-Aware Aesthetics**: Automatically switches themes based on your host operating system.
- **Hybrid Line Numbers**: Optimized for fast vertical movement using relative jumps.
- **Right-Side Navigation**: Persistent file explorer on the right to keep your code centered.
- **Native Remote Clipboard**: Uses OSC 52 to sync clipboard over SSH without extra dependencies.

---

## 📂 Installation & Requirements

> [!IMPORTANT]  
> **Neovim v0.10.0 or higher is strictly required** for this configuration to function correctly (specifically for native OSC 52 and modern plugin compatibility).

1. **Check Official Install Methods**: Visit the [Official Neovim Installation Guide](https://github.com/neovim/neovim/wiki/Installing-Neovim) for your specific platform.
2. **Version Note**: If your default package manager (like `apt`) installs an older version, it is highly recommended to use the AppImage to ensure the latest release is installed
   ```bash
   curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
   chmod u+x nvim-linux-x86_64.appimage
   mkdir -p /opt/nvim
   mv nvim-linux-x86_64.appimage /opt/nvim/nvim
   ```
   Then add the following into your shell configuration (`~/.bashrc` or `~/.zshrc`):
   ```
   export PATH="$PATH:/opt/nvim/"
   ```
4. **Setup Config**: Copy your `init.lua` to:
   - **Windows**: `%LOCALAPPDATA%\nvim\init.lua`
   - **Linux/macOS**: `~/.config/nvim/init.lua`
5. **Launch**: Open Neovim, and it will auto-install all plugins.

*Note: A [Nerd Font](https://www.nerdfonts.com/) (e.g., FiraMono Nerd Font) is required for file icons.*

---

## 🎨 Operating System Themes
The environment detects your platform to apply the best-suited aesthetic:
| Platform | Theme | Style |
| :--- | :--- | :--- |
| **Windows** | `Dracula` | Professional High-Contrast |
| **Linux** | `Gruvbox` | Retro-Material Warmth |
| **macOS/Other** | `Catppuccin` | Modern Pastel (w/ Transparency) |

---

## ⌨️ Global Keybindings
The **Leader Key** is set to `Space`.

| Key | Action |
| :--- | :--- |
| `<Space> + e` | **Focus Explorer**: Jump cursor to the file tree. |
| `d` | **Delete**: Remove text *without* overwriting your clipboard. |
| `x` | **Delete Char**: Remove character *without* overwriting your clipboard. |
| `y` | **Yank**: Copy text to system clipboard (as usual). |

---

## 🪟 Window & Pane Navigation
Move directly in a specific direction using `CTRL-w` + `hjkl` (Vim keys) or the arrow keys. 

| Direction | Shortcut | Alternative |
| :--- | :--- | :--- |
| **Left** | `Ctrl + w`, `h` | `Ctrl + w`, `←` |
| **Down** | `Ctrl + w`, `j` | `Ctrl + w`, `↓` |
| **Up** | `Ctrl + w`, `k` | `Ctrl + w`, `↑` |
| **Right** | `Ctrl + w`, `l` | `Ctrl + w`, `→` |

---

## 🌲 File Explorer (nvim-tree)
The explorer is located on the **right** and features relative line numbers.

### Explorer Internal Commands
| Key | Action |
| :--- | :--- |
| `Enter` | Open file and switch focus to editor. |
| `Tab` | **Preview**: Open file while keeping focus on the tree. |
| `a` | **Add**: Create a new file (or folder if name ends in `/`). |
| `d` | **Delete**: Remove the selected file/folder. |
| `r` | **Rename**: Change file/folder name. |
| `f` | **Filter**: Search for files in the current view. |
| `q` | Close the tree. |

---

## 💡 Useful Notes & Tips

- **Plugin Health**: If something feels off, run `:checkhealth` to see if Neovim detects any issues with your environment or clipboard.
- **Managing Plugins**: Use `:Lazy` to open the plugin dashboard. You can press `U` to update everything or `X` to clean up unused plugins.
- **SSH Clipboard**: This config uses OSC 52. If copying to your local machine doesn't work, ensure your terminal emulator (WezTerm, Windows Terminal, etc.) has "Allow Clipboard Access" enabled.
- **SRE Tip**: Since this is a single-file config, you can quickly deploy it on a new server using:
  `curl -fLo ~/.config/nvim/init.lua --create-dirs https://raw.githubusercontent.com/YOUR_USER/YOUR_REPO/main/init.lua`
- **Exiting**: Remember that `:q` closes the current window. If you want to close everything and exit, use `:qa`.
