# Dotfiles

## Intro
These are my dotfiles for my Linux computer (now referred to as the 'crapbook'). This has all my configurations for my programs so it is easier for me to transport/change my setup. The reason why I made this was because I'm sick and tired of using USB's to transfer my data from computer-to-computer.

## Notes
Here are some things to keep in mind when using this (if you actually are)

* This probably won't work for every Distro/OS. This is to be expected. You will need to make some modifications.
* You will most definitely need an internet connection for this.
* The documentation of the config files will be updated as we go on, thus don't worry if you can't understand anything.

Now for program specific notes.

### i3

* The volume buttons might be different from computer-to-computer.
* Vim-based binding (as always).
* You will might need a program called `light` to modify brightness, if `xbacklight` does not work.
* The compositor `compton` is used for cool fades and transparency.

### nvim

* The deoplete plugins will require the python version of `nvim`, called `pynvim`. They are installed with the command `pip install`
    * deoplete-clang will need the path to `libclang.so` and the path to `lib/clang`. `libclang` must be installed for this to work.
* Powerline fonts will be needed for powerline

### urxvt
* Some fonts do not work this terminal.
* Copy and paste with Alt+C & Alt+V
    * Make sure that Alt is not conflicting with i3


### polybar

* You must compile polybar with the required package to have module support. Without them, the status bar will look messed up.
   * Here is the command for to get all packages: `sudo apt install build-essential git cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev`
   * You need 'Font Awesome' and "Material Icons" for icons

### pywal

* You must add `pip` to the path, or else you will not be able to use `wal`
*   * `export PATH="${PATH}:${HOME}/.local/bin/"`

As stated before, this will be updated as I change my config.


