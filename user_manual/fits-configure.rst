====
FITS
====

   |FITS Window|

FITS (Flexible Image Transport System) is a popular open
standard for storage, transmission and processing of digital
data. For the details, one is referred to the `corresponding
Wikipedia article <https://en.wikipedia.org/wiki/FITS>`__. This
page allows you to configure presentation and processing of
FITS data in KStars.

The left panel is for configuring FITS viewer itself.

Check the ``Use FITS viewer`` item if you want automatically
display received images in the FITS Viewer.

The ``Single preview tab`` item is to display all captured FITS
images in a single tab instead of multiple tabs per image. The
``Single window capture`` item is to display captured FITS images
from all cameras in a single FITS Viewer window instead of a
dedicated window to each camera. The ``Single window open`` item is
to display opened FITS images in a single FITS Viewer window
instead of a dedicated window to each file and the ``Independent
window`` item is to make FITS Viewer window independent from
KStars.

The right panel lists processing options. The ``Auto stretch`` item
is to always apply auto stretch to images in FITS Viewer,
``Limited resources mode`` is to enable limited resource mode to
turn off any resource-intensive operations, namely: ``Auto
debayer`` (bayered images will not be debayered; only grayscale
images are shown), ``Auto WCS`` (World Coordinate System data will
not be processed; WCS maps sky coordinates to image
coordinates; equatorial grid lines, object identification, and
telescope slew within an image are disabled), and ``3D cube`` (RGB
images will not be processed; only grayscale images are shown).
You can switch off some of these resource-greedy operations
separately as well.

.. |FITS Window| image:: /images/fits_page.png
