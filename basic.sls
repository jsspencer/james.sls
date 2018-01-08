user accounts:
  user.present:
    - name: james
    - shell: /bin/zsh
    - home: /home/james
    - groups:
        - wheel

remove unwanted base packages:
  pkg.removed:
    - pkgs:
      - vi

install basic packages:
  pkg.installed:
    - pkgs:
      - aria2
      - bash-completion
      - bind-tools
      - binutils
      - clang
      - cmake
      - fakeroot
      - gcc
      - gcc-fortran
      - git
      - htop
      - make
      - openvpn
      - openssh
      - pkgfile
      - pkgstats
      - python
      - python2
      - rxvt-unicode-terminfo
      - stow
      - sudo
      - task
      - tig
      - tmux
      - tree
      - unzip
      - vim
      - w3m
      - wget
      - yajl
      - zip
      - zsh

vi symlink:
  file.symlink:
    - name: /usr/bin/vi
    - target: /usr/bin/vim
