========================
HiPS Progressive Overlay
========================

KStars provides support for HiPS: Hierarchical Progressive
Surveys. HiPS provides multi-resolution progressive surveys to
be overlayed directly in client applications. It provides an
immersive experience as you can explore the night sky
dynamically. With over 200+ surveys across the whole
electromagnetic spectrum from radio, infrared, visual, to even
gamma rays, the user can pan and zoom progressively deeper into
the data visually.

It can be enabled from the ``View`` → ``HiPS All Sky Overlay`` submenu.

Under the submenu, a list of enabled surveys are listed. Click
on the survey of interest to activate it. You can only activate
one-overlay at a time. After activating the survey, KStars
shall begin downloading the data in the background and
progressively overlay the images unto the sky map as they
become ready. Zooming in usually requires another patch of
images that should trigger another download cycle.

   |DSS Color Overlay|

The above screenshot shows the DSS Color visual overlay in
KStars.

``HiPS Settings...`` menu item shows a dialog with the following
 pages:

    -  ``Display``: Enable or disable ``Show HiPS grid`` and ``Linear
       interpolation`` checkboxes. The interpolation is enabled by
       default and should make the overlay appear smoother.

    -  ``Cache``: Set the ``Disk``: and ``Memory``: cache size in MB.
       Increase cache size if you have abundant resources and
       want to reduce bandwidth required to download the images.

    -  ``Sources``: Browse a list of HiPS sources and enable/disable
       them accordingly. When you select each source, a summary
       and a preview are downloaded that include information on
       the mission in additional to technical data on the
       survey.

.. |DSS Color Overlay| image:: /images/kstars_hips.png
