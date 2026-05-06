# 🐚 Scleo's PowerShell configuration

A unified, high-performance terminal configuration designed for **Software Development** and **HomeLab SRE** workflows. This setup provides a consistent experience across **Windows**, **macOS**, and **Linux (Ubuntu/Home Server)**.

## ✨ Key Features

* **Predictive IntelliSense:** Grey-text autocomplete suggestions pulled directly from your command history (Zsh-style).
* **History-Based Navigation:** Up/Down arrows filter history based on current input (e.g., type `git` and press Up to see only previous git commands).
* **One-File Portability:** A single `$PROFILE` that detects the environment and adjusts aliases and themes automatically.

---

## 🚀 Prerequisites

Before installing, ensure you have the following installed on your system:

1.  **PowerShell 7+:** [Download/Install Guide](https://github.com/PowerShell/PowerShell) (Native on Windows, install via `brew` on Mac or Linux).

| Platform | Command                               |
| :------- | :------------------------------------ |
| Windows  | `winget install Microsoft.Powershell` |
| Linux    | `brew install powershell`             |
| MacOS    | `brew install --cask powershell`      |

You can install [brew](https://brew.sh/) via:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2.  **Nerd Font:** Required for the Powerline symbols (e.g., *JetBrainsMono Nerd Font*).
3.  **Eza**: It is a better way to see the directory when you use `ls`.
#### Windows
```
winget install eza
```
#### Linux/MacOS
```
brew install eza
```

---

## 🛠️ Installation

### 1. PowerShell Profile
This command downloads your PowerShell profile directly from your repository and places it in the correct location.
#### Windows
```
curl --ssl-no-revoke -fLo "$env:USERPROFILE/Documents/PowerShell/Microsoft.PowerShell_profile.ps1" --create-dirs https://raw.githubusercontent.com/SCLeoo/dotfiles/refs/heads/master/pwsh/Microsoft.PowerShell_profile.ps1
```
#### Linux/MacOS
```
curl -fLo ~/.config/powershell/Microsoft.PowerShell_profile.ps1 --create-dirs https://raw.githubusercontent.com/SCLeoo/dotfiles/refs/heads/master/pwsh/Microsoft.PowerShell_profile.ps1
```

**Windows Security Note:**
If scripts are disabled, run this in a **PowerShell Administrator** terminal:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```
