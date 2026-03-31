# 🖥️ Scleo's WezTerm Configuration

A lightweight, aesthetic terminal configuration for **WezTerm**, optimized for **Windows** and **PowerShell 7**. This setup prioritizes a clean "Glass" look with high-performance transparency.

## ✨ Key Features

* **Acrylic Backdrop:** Uses Windows 11's "Acrylic" system backdrop for a modern, frosted-glass effect.
* **High Transparency:** Set to `0.1` opacity for a deep integration with your desktop wallpaper.
* **Dracula Theme:** Uses the classic Dracula color palette for high-readability and aesthetic consistency.
* **PowerShell Native:** Defaults to `pwsh.exe` to leverage modern PowerShell 7 features and your custom `$PROFILE`.
* **Stable UI:** Window decorations are set to `RESIZE` only, and font-size changes won't jitter the window dimensions.

---

## 🚀 Prerequisites

1.  **WezTerm:** [Install via Winget](https://wezfurlong.org/wezterm/install/windows.html): `winget install wezterm`.
2.  **Nerd Font:** It is recommended to have a Nerd Font installed (like `Hack Nerd Font` or `JetBrainsMono NF`) to render your Starship icons correctly.
3.  **PowerShell 7:** Ensure `pwsh.exe` is in your PATH.

---

## 🛠️ Installation

1.  Navigate to your home directory:
    * **Windows:** `%USERPROFILE%` (usually `C:\Users\YourName`)
2.  Create or edit the file named `.wezterm.lua`.
3.  Paste the configuration contents from this repository.
