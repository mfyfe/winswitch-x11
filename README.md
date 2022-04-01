# WinSwitch

This is a simple utility for switching between specific windows on my Linux system.

It uses `xdotool` to interact with the window manager, this wouldn't work if I
were using Wayland instead of X11, however my computer is old!

It works using 2 commands: `set` and `switch`, both of which take an arbitrary identifier to allow multiple instances to be configured.

- `set` writes the currently focused Window ID to a tmp file named with the arbitrary identifier.
- `switch` reads a previously set Window ID from tmp file and attempts to focus the window.

## Installation

- Make sure `xdotool` is installed.
- Clone the repo wherever.
- Symlink winswitch.sh to your command path:  
  `sudo ln -s /path/to/winswitch.sh /usr/bin/winswitch`
- Create keyboard shortcuts for `set` and `switch` actions:
    - Settings > Keyboard > "View and Customize Shortcuts" > "Custom Shortcuts"
    - `Set` command example:
        - Name: "Set WinSwitch 1"
        - Command: `winswitch set 1`
        - Shortcut: `Ctrl + Alt + 1`
    - `Switch` command example:
        - Name: "WinSwitch 1"
        - Command: `winswitch switch 1`
        - Shortcut: `Ctrl + 1`

---

TODO: Exit silently when command is called without arguments.
TODO: Use a better storage method than writing tmp files, something in-memory?
TODO: How would I accomplish this task on my Windows system?

---
