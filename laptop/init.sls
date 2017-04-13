install laptop packages:
  pkg.installed:
    - pkgs:
      - acpi
      - dialog
      - notmuch
      - iw
      - pass
      - powertop
      - tlp
      - wpa_actiond
      - wpa_supplicant
      - udisks2

config udevil:
  pkg.installed:
    - name: udevil
  file.managed:
    - name: /usr/bin/udevil
    - mode: 0755
    - replace: false

configure tty:
  file.managed:
    - name: /etc/vconsole.conf
    - source: salt://laptop/vconsole.conf
    - user: root
    - group: root
    - mode: 644

install power management:
   pkg.installed:
     - pkgs:
       - powertop

install mail packages:
  pkg.installed:
    - pkgs:
      - isync
      - msmtp

install X, bspwm and related packages:
  pkg.installed:
    - pkgs:
      - bspwm
      - dmenu
      - gv
      - rxvt-unicode
      - sddm
      - sxhkd
      - tabbed
      - terminus-font
      - xdotool
      - xorg-xev
      - xorg-xinit
      - xorg-server
      - xorg-xsetroot
      - xf86-input-synaptics

install gui packages:
  pkg.installed:
    - pkgs:
      - archlinux-wallpaper
      - feh
      - mupdf
      - firefox
      - chromium
      - qutebrowser
      - vlc

{% for pkg in [
    'cower',
    'lemonbar',
    'neomutt',
    'sutils-git',
    'xtitle',
    'datamash',
    'openvpn-update-systemd-resolved',
] %}
download AUR packages {{ pkg }}:
  cmd.run:
    - name: cower -d {{ pkg }}
    - runas: james
    - creates: /home/james/build/{{ pkg }}
    - require:
      - file: cower config
      - file: cower build
{% endfor %}
