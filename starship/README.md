# 🚀 Scleo's Semantic Starship Configuration

Quickly deploy this config on a new server using:
```
  curl --ssl-no-revoke -fLo ~/.config/starship.toml --create-dirs https://raw.githubusercontent.com/SCLeoo/dotfiles/refs/heads/master/starship/starship.toml
```
A highly customized, "Pixel-Grid" style prompt for `starship`. This configuration uses a **Semantic Color System**, meaning colors are assigned by **function** (e.g., `color_main`, `color_lang`) rather than hardcoded hex values.

## 📸 Visual Style

* **Start Segment:** `░▒▓█` (Full Block Gradient)
* **Dividers:** `` (Angled Slants)
* **Colors:** Dynamic palettes based on Catppuccin, Tokyo Night, and more.

---

## 🎨 The Semantic Color System

Instead of editing dozens of lines to change a theme, this config uses generic identifiers. You can override these in the `[palettes]` section or via environment variables in your shell profile.

| Variable | Usage |
| :--- | :--- |
| `color_main` | OS Icon, Username, and Error states. |
| `color_accent` | Directory path background. |
| `color_git` | Git branch and status info. |
| `color_lang` | Programming language icons (Node, Rust, Python, etc.). |
| `color_sys` | Docker and Conda environments. |
| `color_time` | Clock and Command duration. |
| `crust` | The background/text contrast color. |

---

## 🎭 Available Themes

To switch themes, change the `palette` variable at the top of `starship.toml`:

```toml
palette = 'tokyo_night' # Options: catppuccin_macchiato, tokyo_night, dracula, gruvbox_dark, nord, rose_pine
```

---

## 📥 Installation

| Platform | Command |
| :--- | :--- |
| **Windows** | `winget install --id Starship.Starship` |
| **Linux** | `curl -sS https://starship.rs/install.sh \| sh` |
| **macOS** | `brew install starship` |

## 🛠️ Shell Initialization

To activate Starship, add the following initialization line to your specific shell configuration file:

#### **PowerShell**
Add to your `$PROFILE`:
```powershell
Invoke-Expression (&starship init powershell)
```
#### **Bash**
Add to your ~/.bashrc:
```Bash
eval "$(starship init bash)"
```
#### **Zsh**
Add to your ~/.zshrc:
```Bash
eval "$(starship init zsh)"
```
Note: After adding the line, restart your terminal or source the config file (e.g., `source ~/.bashrc`) to see the changes.

### **Config file creation**
```
mkdir -p ~/.config && touch ~/.config/starship.toml
```
