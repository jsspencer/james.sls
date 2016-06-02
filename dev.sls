
install dev packages:
  pkg.installed:
    - pkgs:
      - abs
      - cgdb
      - cloc
      - ctags
      - gdb
      - lua
      - lua52
      - luajit
      - openmpi
      - perf

{% for python in ['python', 'python2'] %}
install {{ python }} packages:
  pkg.installed:
    - pkgs:
      - {{ python }}-matplotlib
      - {{ python }}-numpy
      - {{ python }}-pandas
      - {{ python }}-scipy
      - {{ python }}-sphinx
      - {{ python }}-virtualenv
{% endfor %}

install qt:
  pkg.installed:
    - pkgs:
        - qt4
        - qt5-base
        - qt5-svg
