install laptop packages:
  pkg.installed:
    - pkgs:
      - acpi
      - dialog
      - iw
      - pass
      - wpa_supplicant
      - udisks2

config udevil:
  pkg.installed: 
    - name: udevil
  file.managed:
    - name: /usr/bin/udevil
    - mode: 0755

install mail packages:
  pkg.installed:
    - pkgs:
      - isync
      - msmtp

install bspwm and related packages:
  pkg.installed:
    - pkgs:
      - bspwm
      - sxhkd
      - terminus-font
      - xorg-xinit
