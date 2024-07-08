# Arch-Linux-ARM-on-Raspberry-Pi-Zero-2W
Trying to Install Arch linux ARM on RPI 0 2W
- - -
- I'm using this as a way to learn how to configure a linux distribution from the ground up. I was able to successfully image an arch linux arm image onto a micro-sd through the guidance of this url: [Arch Linux ARM Installation on Raspberry Pi 0 2W](https://archlinuxarm.org/platforms/armv8/broadcom/raspberry-pi-zero-2#installation/)
- I'm creating a bash script, install.sh, to streamline this process for other users wishing to do the same.
- - - 
- I'm following along with this this for the setup of arch on the RPI: [Tutorial](https://www.freecodecamp.org/news/how-to-install-arch-linux/)
- - -
### Keyboard Layout and fonts
- After booting up the device, you can configure the keyboard layout with: 
```bash
ls /usr/share/kbd/keymaps/**/*.map.gz
loadkeys mac-us # You can load a keyboard layout by using loadkeys
```
- And for fonts:
```bash
ls /usr/share/kbd/consolefonts
setfont drdos8x16
```
### Internet Connectivity
- Check if an internet connection is currently present:
```bash
ping 8.8.8.8 # If not present, it will state "Network is unreachable"
```
- Connect to wifi using wifi-menu (Convenient tools like iwctl don't come prepackaged in arch linux arm in the raspberry pi zero 2 w)
```bash
wifi-menu
ping 8.8.8.8 # Check if the internet connection is active now

```
- Archinstall doesn't come prepackaged in this version.
- Since this is my first time trying to understand how partitioning works in linux installation, I've accidentally overwritten the entire microsd.

