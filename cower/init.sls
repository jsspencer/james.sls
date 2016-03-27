cower installed:
  file.exists:
    - name: /usr/bin/cower

# managed by my dotfiles repo but just in case:
cower config:
  file.managed:
    - name: /home/james/.config/cower/config
    - source: salt://cower/cower.conf
    - user: james
    - group: james
    - mode: 644
    - replace: false
    - makedirs: true
    - require:
        - file: cower installed
        - user: james

cower build:
  file.directory:
    - name: /home/james/build
    - user: james
    - group: james
    - mode: 755


