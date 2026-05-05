# 🛠️ Scleo's Portable Neovim Configuration

A high-performance, **single-file** Neovim setup designed for seamless portability across Windows, Linux, and macOS. This configuration balances a minimalist "vanilla-plus" feel with essential IDE power-ups.

## 🚀 Key Features

*   **Single-File Deployment**: Quickly deploy this config on a new server using:
       ```
       curl -fLo ~/.config/nvim/init.lua --create-dirs https://raw.githubusercontent.com/SCLeoo/dotfiles/refs/heads/master/nvim/init.lua
       ```
*   **Zero-Touch Setup**: Automatically bootstraps the `lazy.nvim` plugin manager on first launch.
*   **Smart Deletion**: `d` and `x` use the "Black Hole" register to prevent overwriting your clipboard.
*   **OS-Aware Aesthetics**: Automatically switches themes based on your host operating system.
*   **Hybrid Line Numbers**: Optimized for fast vertical movement using relative jumps.
*   **Right-Side Navigation**: Persistent file explorer on the right to keep your code centered.
*   **Native Remote Clipboard**: Uses OSC 52 to sync clipboard over SSH without extra dependencies.
*   **Language Server Protocol (LSP) Integration**:
    *   Out-of-the-box support for Lua, TypeScript/JavaScript, CSS, JSON, YAML, C#, and Java.
    *   Automatic installation and enablement of LSP servers via Mason.
    *   Diagnostics (errors, warnings, hints) shown inline and in the sign column.
*   **Autocompletion**:
    *   Context-aware code completion powered by nvim-cmp.
    *   Manual completion trigger with `Ctrl+j` for reliability across platforms.
*   **Formatting**:
    *   Manual file formatting with `<leader>f` for Lua, TypeScript, JavaScript, CSS, JSON, YAML, Markdown, C#, and Java.
    *   Uses external formatters (Prettier, Stylua, CSharpier, Google Java Format) managed by Mason.
    *   LSP fallback formatting if no external formatter is configured.
*   **Linting**:
    *   Automatic and manual linting for TypeScript and JavaScript using `eslint_d`.
    *   Diagnostics are updated on file save and when leaving insert mode.
    *   Manual lint trigger with `<leader>ll`.
*   **Diagnostics Navigation**:
    *   Quick access to diagnostics float with `<leader>d`.
    *   Jump to next/previous diagnostic with `<leader>dn` and `<leader>dp`.
*   **Keymap Consistency**:
    *   All custom keymaps use the Space leader for easy access and global compatibility.
*   **Portable Bootstrapping**:
    *   Configuration auto-installs all required plugins and tools on any new machine.
*   **Single-File Simplicity**:
    *   All settings, plugins, and mappings are contained in one `init.lua` file for easy sharing and deployment.

***

## 📂 Installation & Requirements

> **Neovim v0.10.0 or higher is strictly required** for this configuration to function correctly (specifically for native OSC 52 and modern plugin compatibility).

1.  **Check Official Install Methods**: Visit the <https://github.com/neovim/neovim/wiki/Installing-Neovim> for your specific platform.
2.  **Version Note**: If your default package manager (like `apt`) installs an older version, it is highly recommended to use the AppImage to ensure the latest release is installed
       ```
       curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
       chmod u+x nvim-linux-x86_64.appimage
       mkdir -p /opt/nvim
       mv nvim-linux-x86_64.appimage /opt/nvim/nvim
       ```
    Then add the following into your shell configuration (`~/.bashrc` or `~/.zshrc`):
        `export PATH="$PATH:/opt/nvim/"`
4.  **Setup Config**: Copy your `init.lua` to:
    *   **Windows**: `%LOCALAPPDATA%\nvim\init.lua`
    *   **Linux/macOS**: `~/.config/nvim/init.lua`
5.  **Launch**: Open Neovim, and it will auto-install all plugins.

*Note: A <https://www.nerdfonts.com/> (e.g., FiraMono Nerd Font) is required for file icons.*

***

## 🎨 Operating System Themes

The environment detects your platform to apply the best-suited aesthetic:

| Platform        | Theme      | Style                           |
| :-------------- | :--------- | :------------------------------ |
| **Windows**     | Dracula    | Professional High-Contrast      |
| **Linux**       | Gruvbox    | Retro-Material Warmth           |
| **macOS/Other** | Catppuccin | Modern Pastel (w/ Transparency) |

***

## ⌨️ Global Keybindings

The **Leader Key** is set to `Space`.

| Key            | Action                                                         |
| :------------- | :------------------------------------------------------------- |
| `<Space> + e`  | Focus Explorer: Jump cursor to the file tree.                  |
| `<Space> + f`  | Format file (manual, uses external formatter or LSP fallback). |
| `<Space> + d`  | Show diagnostics float for current line.                       |
| `<Space> + dn` | Jump to next diagnostic.                                       |
| `<Space> + dp` | Jump to previous diagnostic.                                   |
| `<Space> + ll` | Run linter for current file (manual trigger).                  |
| `d`            | Delete without yanking (clipboard stays clean).                |
| `x`            | Delete character without yanking.                              |
| `y`            | Yank (copy) as usual.                                          |
| `Ctrl+j`       | Trigger autocompletion menu in insert mode.                    |

***

## 🪟 Window & Pane Navigation

Move directly in a specific direction using `CTRL-w` + `hjkl` (Vim keys) or the arrow keys.

| Direction | Shortcut        | Alternative     |
| :-------- | :-------------- | :-------------- |
| Left      | `Ctrl + w`, `h` | `Ctrl + w`, `←` |
| Down      | `Ctrl + w`, `j` | `Ctrl + w`, `↓` |
| Up        | `Ctrl + w`, `k` | `Ctrl + w`, `↑` |
| Right     | `Ctrl + w`, `l` | `Ctrl + w`, `→` |

***

## 🌲 File Explorer (nvim-tree)

The explorer is located on the **right** and features relative line numbers.

### Explorer Internal Commands

| Key   | Action                                                  |
| :---- | :------------------------------------------------------ |
| Enter | Open file and switch focus to editor.                   |
| Tab   | Preview: Open file while keeping focus on the tree.     |
| a     | Add: Create a new file (or folder if name ends in `/`). |
| d     | Delete: Remove the selected file/folder.                |
| r     | Rename: Change file/folder name.                        |
| f     | Filter: Search for files in the current view.           |
| q     | Close the tree.                                         |

***

## 💡 Useful Notes & Tips

*   **Plugin Health**: If something feels off, run `:checkhealth` to see if Neovim detects any issues with your environment or clipboard.
*   **Managing Plugins**: Use `:Lazy` to open the plugin dashboard. You can press `U` to update everything or `X` to clean up unused plugins.
*   **SSH Clipboard**: This config uses OSC 52. If copying to your local machine doesn't work, ensure your terminal emulator (WezTerm, Windows Terminal, etc.) has "Allow Clipboard Access" enabled.
*   **Exiting**: `:q` closes the current window. To close everything and exit, use `:qa`.
