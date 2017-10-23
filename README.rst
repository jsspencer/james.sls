James' salt configuration
=========================

Just some setup for laptops and servers running Arch Linux (ARM Archlinux on raspberry pi) using salt in masterless mode.

Setup
-----

* install salt
* install cower for downloading AUR packages
* set ``file_client: local`` in ``/etc/salt/minion`` and, if not cloned to ``/srv/salt``, set ``file_roots`` to the appropriate directory.
* set the hostname or modify `top.sls` appropriately.
* run salt-call --local state.highstate as root/using sudo.

.. note::

    The necessary dependencies (except for cower) can be installed using:

    .. code::

        $ pacman -Syu gcc make yajl salt git sudo pkg-config fakeroot

Layout
------

top.sls
   top state - sets which states are included on a given machine.
basic.sls
    Common packages and setting.
dev.sls
    Development-specific packages.
laptop.sls
    Packages and settings specific to laptops/interactive machines.
server.sls
    Packages and settings specific to server (currently just a raspberry pi).

* todo
   + root setup (basic vim, tmux, zsh)
