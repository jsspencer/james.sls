test accounts:
  user.absent:
    - name: alarm
    - purge: True

install server packages:
  pkg.installed:
    - pkgs:
      - gitolite
