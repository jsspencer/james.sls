
install dev packages:
  pkg.installed:
    - pkgs:
      - cgdb
      - gdb
      - lua52
      - lua
      - luajit
      - openmpi
      - perf

install python packages:
  pkg.installed:
    - pkgs:
      - python-matplotlib
      - python-numpy
      - python-pandas
      - python-scipy
