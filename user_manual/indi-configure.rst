==============
Configure INDI
==============

The ``INDI`` page allows you to modify *Client side* INDI specific
options. To access it, select the ``INDI`` page from ``Settings →
Configure KStars...`` menu item. The window is divided into
several main categories: General, Device Updates, Display and
Server Port:

    -  ``General``
          -  ``INDI server``: Specify the binary of installed INDI
             server in your system. By default, KStars uses
             “/usr/bin/indiserver” binary.

          -  ``INDI drivers XML directory``: Specify the XML
             directory where INDI drivers are located in your
             system. By default, KStars uses “/usr/share/indi”
             directory.

          -  ``Default FITS directory``: Specify the directory where
             all captured FITS images will be saved to. If no
             directory is specified, images will be stored in
             `$HOME`.

    -  ``Time & Location Updates``
          -  ``KStars updates all devices``: KStars is the master
             source for time and location settings. All INDI
             devices time and locations settings are
             synchronized to KStars settings.

          -  ``Mount updates KStars``: Mount handset is the master
             source of time and location settings. KStars time
             and location settings are synchronized with
             controller settings.

          -  ``GPS updates KStars``: GPS driver is the master source
             of time and location settings. KStars time and
             location settings are synchronized with GPS
             settings.

          -  ``Time``: Synchronize KStars date and time
             automatically from the update source.

          -  ``Location``: Synchronize KStars location settings from
             the update source.

    -  ``Display``
          -  ``Telescope crosshair``: When checked, KStars displays
             the telescope's target crosshair on the sky map.
             The crosshair is displayed upon a successful
             connection to the telescope and its location is
             updated periodically. The telescope's name is
             displayed next to the crosshair. KStars displays
             one crosshair per each connected telescope. To
             change the color of the telescope's crosshair, open
             the :doc:`Configure - KStars <viewops>` window.
             Select the ``Colors`` page, and then change the color
             of the ``Target Indicator`` item to the desired color.

          -  ``Independent window``: Make ``FITS Viewer`` window
             independent.

          -  ``Message notifications``: Show INDI messages as
             desktop notifications instead of dialogs.

    -  ``Server Port``
          -  Specify range of ports that INDI Server will bind
             to when starting new drivers.

