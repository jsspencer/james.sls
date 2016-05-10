
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
{% endfor %}
