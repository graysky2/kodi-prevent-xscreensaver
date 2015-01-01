#Purpose
Keep xscreensaver from coming on when kodi is active. This bash script is infinitely more light weight than some alternatives such as caffeine.

#Dependencies
Below are the Arch Linux packages and the name of the dependency program in parentheses for users of other distros.
* sysvinit-tools (/bin/pidof)
* coreutils (/usr/bin/sleep)

#Usage
Run the script at startup or at login. For example, simply link the included kodi-prevent-xscreensaver.deskop to your user's ~/.config/autostart or do so via whatever GUI-based start-up manager you use.

    ln -s /usr/share/applications/kodi-prevent-xscreensaver.desktop ~/.config/autostart

#Arch Linux Package
https://aur.archlinux.org/packages/kodi-prevent-xscreensaver/
