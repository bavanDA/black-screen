# black-screen

Make your laptop look turned off while it keeps working.

One click locks the screen, turns the display off and turns the keyboard light off. Downloads, builds and
anything else you left running keep going. Press any key or touch the touchpad to wake it, then type your
password as usual. The keyboard light comes back after you unlock.

## Install

```sh
git clone https://github.com/bavanDA/black-screen.git
cd black-screen
bash install.sh
```

Then open **Black Screen** from your apps. Remove it with `bash install.sh uninstall`.

## Needs

- GNOME (Wayland or X11). It uses GNOME's own lock screen and display power setting.
- Optional: [asusctl](https://gitlab.com/asus-linux/asusctl) for the keyboard light on ASUS laptops. Without it
  the keyboard light is left alone.

## Good to know

- Don't press the power button to wake it. On most systems that puts the laptop to sleep, and sleep pauses
  everything.
- Your normal power settings still apply. If the laptop is set to sleep after some idle time on battery, it will.

## License

MIT
