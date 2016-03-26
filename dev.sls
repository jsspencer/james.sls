
install dev packages:
  pkg.installed:
    - pkgs:
      - openmpi
      - perf

install python packages:
  pkg.installed:
    - pkgs:
      - python-matplotlib
      - python-numpy
      - python-pandas
      - python-scipy
