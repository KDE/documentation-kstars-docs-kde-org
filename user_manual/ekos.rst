===============
Chapter 5. Ekos
===============

**Ekos** is an advanced cross-platform (Windows®, Mac® OS, Linux®) observatory control and automation tool with a particular focus on Astrophotography. It is based on a modular extensible framework to perform common astrophotography tasks.  This includes highly accurate GOTOs using astrometry solver, ability to measure *and* correct polar alignment errors, auto-focus & auto-guide capabilities, and capture of single or stack of images with filter wheel support. Ekos is shipped with KStars.

.. youtube:: un2KVJY3Yis
   :width: 100%

Ekos introductory video

Features:

-  Control your telescope, Camera (& DSLRs), filter wheel, focuser, guider, adaptive optics unit, and any INDI-compatible auxiliary device from Ekos.

-  *Built-in* native :doc:`autoguiding  <ekos-guide>` with support for automatic dithering between exposures and support for Adaptive Optics devices in addition to traditional guiders.

-  `Extremely accurate GOTOs <https://knro.blogspot.com/2013/10/demo-of-ekos-alignment-module.html>`__ using astrometry.net solver (both Online and Offline solvers supported).

-  Load & Slew: Load a FITS image, slew to solved coordinates, and center the mount on the exact image coordinates in order to get the same desired frame.

-  Measure & Correct Polar Alignment errors using astrometry.net solver.

-  Easy to use Polar Alignment Assistant tool. A very quick and reliable tool to polar align your German Equatorial Mount!

-  Capture and record `video streams in SER format <https://www.youtube.com/watch?v=OJFZWwlAQRM>`__.

-  Completely `automated scheduler <https://www.youtube.com/watch?v=85L3J_iiXZ4>`__ to control all your observatory equipment, select the best targets for imaging given current conditions and constraints, monitor weather conditions, and capture your data while you are away!

-  *Smart* Dark Library: All your dark frames with different binning/temperature/frame settings are saved for future use. Ekos re-uses dark frames intelligently without taking unnecessary captures. You can configure how long you want to reuse all the dark frames.

-  Define multiple driver profiles for local and remote setups. Switch among them easily.

-  Auto and manual focus modes using Half-Flux-Radius (HFR)
   method.

-  `Automated *unattended* meridian flip <https://www.youtube.com/watch?v=stsrcsPxUZA>`__.  Ekos performs post meridian flip alignment, calibration, focusing, and guiding to resume the capture session.

-  Automatic focus between exposures when a user-configurable HFR limit is exceeded.

-  Powerful sequence queue for batch capture of images with optional prefixes, timestamps, filter wheel selection, and much more!

-  Export and import sequence queue sets as Ekos Sequence Queue (``.esq``) files.

-  `Center the telescope anywhere in a captured FITS image <https://www.youtube.com/watch?v=fg2HDFg_dCE>`__ or any FITS with World Coordinate System (WCS) header.

-  Automatic flat field capture, just set the desired ADU and let Ekos does the rest!

-  Automatic abort and resumption of exposure tasks if guiding errors exceed a user-configurable value.

-  Support for dome slaving.

-  Complete integration with KStars Observation Planner and
   SkyMap.

-  Fully scriptable via `D-Bus <https://freedesktop.org/wiki/Software/dbus/>`__.

-  Integrate with all INDI native devices.

=============================
  
.. toctree::

    ekos-setup
    ch05s02
    ekos-profile-wizard
    ekos-profile-editor
    ekos-logs
    ekos-capture
    ekos-focus
    ekos-guide
    ekos-align
    ekos-scheduler
    ekos-analyze
    ekos-extensions
    ekos-tutorials

