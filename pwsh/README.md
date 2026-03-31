# 🐚 Scleo's Cross-Platform PowerShell & Starship Environment

A unified, high-performance terminal configuration designed for **Software Development** and **HomeLab SRE** workflows. This setup provides a consistent experience across **Windows**, **macOS**, and **Linux (Ubuntu/Home Server)**.

## ✨ Key Features

* **Predictive IntelliSense:** Grey-text autocomplete suggestions pulled directly from your command history (Zsh-style).
* **Starship Prompt:** A lightning-fast, customizable prompt using a semantic color system.
* **History-Based Navigation:** Up/Down arrows filter history based on current input (e.g., type `git` and press Up to see only previous git commands).
* **One-File Portability:** A single `$PROFILE` that detects the environment and adjusts aliases and themes automatically.

---

## 🚀 Prerequisites

Before installing, ensure you have the following installed on your system:

1.  **PowerShell 7+:** [Download/Install Guide](https://github.com/PowerShell/PowerShell) (Native on Windows, install via `brew` on Mac or `apt` on Linux).
2.  **Starship:** The cross-shell prompt. [Installation](https://starship.rs/guide/#%F0%9F%9A%80-installation).
3.  **Nerd Font:** Required for the Powerline symbols (e.g., *JetBrainsMono Nerd Font*).
4.  **Neovim:** Your primary editor for config management.

---

## 🛠️ Installation

### 1. PowerShell Profile
Find your profile path by running `echo $PROFILE` in your terminal. Create the directory if it doesn't exist, then link or copy your `Microsoft.PowerShell_profile.ps1` there.

**Windows Security Note:**
If scripts are disabled, run this in a **PowerShell Administrator** terminal:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
