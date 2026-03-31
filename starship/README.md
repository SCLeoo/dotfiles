# 🚀 Scleo's Semantic Starship Configuration

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
