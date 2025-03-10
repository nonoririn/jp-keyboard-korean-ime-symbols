# jp-keyboard-korean-ime-symbols

AutoHotkey script that remaps symbol keys when using Korean IME on a Japanese keyboard layout

## Overview

This script solves the issue of accessing special symbols when typing in Korean (Hangul) using a Japanese keyboard layout. It remaps various symbol keys to match the expected behavior of a Japanese keyboard while the Korean IME is active.

## Requirements

- AutoHotkey v2.0 or later (this script is specifically written for AHK v2)
- Windows operating system
- Japanese keyboard layout
- Korean language IME installed

## Installation

1. Download and install AutoHotkey v2.0 from the [official website](https://www.autohotkey.com/)
2. Download the `jp-keyboard-korean-ime-symbols.ahk` script from this repository
3. Create a shortcut to the script file
4. Press `Windows+R`, type `shell:startup` and press Enter to open the Startup folder
5. Move the shortcut to the Startup folder to make the script run automatically when you start your computer

## Usage

Once installed and running:

1. The script automatically detects when Korean IME is active
2. Symbol keys will be remapped only when typing in Korean
3. The following symbols will work according to Japanese keyboard layout expectations:
   - Shift + Number keys (!, ", #, $, %, &, ', (, ))
   - Special symbol keys like @, [, ], , |, ;, :, etc.

## Manual Launch

If you don't want the script to start automatically:

1. Double-click the script file to run it manually
2. A small "H" icon will appear in your system tray when the script is active
3. Right-click the icon to pause or exit the script

## Customization

You can edit the script file to customize key mappings according to your preferences. Each mapping is clearly commented in the script file.

## Troubleshooting

- If the script doesn't work, ensure that you're using AutoHotkey v2.0 or later
- Check that Korean IME is properly installed and activated in Windows
- Verify that the script is running (check for the AutoHotkey icon in the system tray)
