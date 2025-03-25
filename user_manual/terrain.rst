=======
Terrain
=======

   |Terrain Window|

The ``Terrain`` page lets you configure whether the terrain (landscape) image will be shown on the skymap.

The user is responsible for creating a partially-transparent image, that is overlayed onto the sky map. This image should have transparent regions that the user creates to let the skymap show through, and opaque regions representing the trees, buildings, the landscape around the telescope. There is a particular format required, and this is a significant effort.  There are many resources on the web that explain how this is done for `Stellarium <https://stellarium.org/landscapes.html>`__. The details of image creation are the same.

Initially, the user captures a full sphere equirectangular projection image from approximately the same point-of-view as his/her telescope. This kind of image can be captured with the Google Camera App, or the Google YouTube App on iPhone, or likely many other camera apps. The user then needs to edit the resulting image so that the sky is erased/transparent, and save it as a PNG. Finally, the user needs to determine where North is in the image, so it can eventually be aligned with the skymap. Once all that is done, the sky map can simulate the local sky view including the local terrain.

Once the image is created, it is possible to upload it via the ``Terrain`` page and configure the azimuth correction value (in degrees) that allows the user to rotate the view so north in the sky map is aligned with the north in the image.

Moreover, some speedup options can be configured to achieve the best user experience when rendering the terrain on the sky map.

.. tip::

   You can toggle the terrain overlay on and off using a
   keyboard shortcut **Ctrl**\ +\ **Shift**\ +\ **T** and the
   ``View`` → ``Show`` Terrain menu item.

.. |Terrain Window| image:: /images/terrain_page.png
