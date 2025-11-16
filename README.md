# 🔦 RE1 Brightness Changer 🚪

A simple AutoHotkey script to automatically adjust monitor brightness when playing **Resident Evil 1 Rebirth** (1996).

This script detects when the game enters a **door animation** (i.e., when loading a new area) and automatically sets the monitor brightness to **10%** for a more immersive, pitch-black transition. When the door animation finishes and the gameplay resumes, it restores the brightness to **90%**.

## ⚙️ Getting technical

The script monitors a specific memory address (`0x739620`) in the game's process (`Biohazard.exe`). This address acts as a flag:

- **Value is non-zero:** A door animation is active (`isDoor` is true).

- **Value is zero:** Standard gameplay is active (`isDoor` is false).

It uses a timer to check this state and calls the `setMonitorBrightnessProgressive()` function (from the included `Screen.ahk` library) to smoothly change the display brightness.

## 💾 Installation and Usage

### Prerequisites

1. [**AutoHotkey v1.1:** The script requires AutoHotkey to run](https://www.autohotkey.com/).

### Steps

1. **Download:** Clone the repo.

2. **Place Files:** Ensure all three files are in the same folder.

3. **Run Game:** Start **Resident Evil** (`Biohazard.exe`).

4. **Run Script:** Double-click `RE1 Monitor Brightness Changer.ahk`. The script will now be running in the background.

5. **Enjoy:** Experience the seamless, dark door transitions!

If you don't want to install [AutoHotkey](https://www.autohotkey.com/) you can download an executable from [releases](https://github.com/elModo7/ResidentEvil-Monitor_Brightness_Mod/releases) and follow the same steps from 3*.
