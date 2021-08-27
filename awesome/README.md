## Dependencies ##
The dependencies are kept as low as possible and are common for all distros so the
config can be used by anyone willing to use awesomewm. Also these packages will most likey be available in the package manager of your linux distro.

| Dependency package name | What it does? |
| :---------------------:| :-----------------:|
| `awesome` | Window Manager (Ver 4) |
| `feh` | Command line tool for setting up the wallpaper |
| `picom` | Composite manager for window managers |
| `rofi` | Application launcher or menu |
| `ImageMagick` | Used for theming and wallpaper | 

### Some Other Dependencies ###

```bash  
xfce4-power-manager
```
This will be the extension for the battery management for the people using laptops.
 my preferred one.

```bash
bluez blueman
```
The bluetooth module for our system.

```bash
xbacklight
```
A module to control the brightness. But this has to be configured accoring to your machine. If it works out of the box, perfect but if not use this [guide](https://askubuntu.com/questions/823669/volume-sound-and-screen-brightness-controls-not-working).
or [the Arch Wiki](https://wiki.archlinux.org/title/backlight#xbacklight)
or use [Gui Brightness control](https://github.com/lordamit/Brightness)

```bash
nm-applet 
```
the netword manager applet. Comes pre-installed with most Distros

```bash
pasystray
```
[Pulse Audio Controller](https://github.com/christophgysin/pasystray) directly fron the system tray (WM bar agnostic)
### Fonts ###

The system font that has been used is [SF Text](https://github.com/perrychan1/fonts.git) or you can download from official Apple website.

Terminal Font is Fira Code by default. It is possible that the font is available in the official repositories of your distro so you can install it from there or you can download from [here](https://github.com/tonsky/FiraCode)

### Theme ###
The theme used across all elements is Dracula for consistancy and also future proofing for any apps

## File Structure ##

1. `apps.lua` : This file contains all the details about the apps. The default apps can be changed in the defaul.apps object and the apps that run on start-up can be changed on the run_on_start_up object.

2. `rc.lua`: This is actually the main file for awesomewm which connects all lua files in the directory. Alternatively, we can write all the contents of all the files into the rc.lua file but that will be very messy and lengthy so dividing it into multiple files makes it easier to maintain and understand what each module is responsible for. The theme for the awesomewm can be changed through `.Xresources` file saved in your home directory. If not, create one for your own theme.

3. `tags.lua`: This file is only for the numbering of workspaces. IF you want to change the text on the workspace indicator on the top panel, you just need to change the .png files in the `icons/tags` directory and it will show on the top panel.

4. `keys.lua`: This file contains the keybindings of the spawning and resizing of apps and the mod key. You can change everything by changing the name of the keyboard button.

5. `rules.lua`: This file contains the rules for window spawning, the window borders and the look of the windows. This file can also be used for declaring rules specific to a particular window.

6. `theme.lua`: This file contains the rules for the current theme and the dpi of gaps and if the gaps should be present if only a single window is spawned in a workspace. This file can also be used for declaring and using your own custom layout icons, by placing the icons in `icons/layouts` directory.

7. `Widgets` Some widgets are custon made, others are based on [Vicious library](https://github.com/vicious-widgets/vicious) 
