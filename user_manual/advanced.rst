========
Advanced
========

   |Advanced Window|

The ``Advanced`` page provides fine-grained control over the more
subtle behaviors of KStars.

The ``Correct for atmospheric refraction`` checkbox controls
whether the positions of objects are corrected for the effects
of the atmosphere. Because the atmosphere is a spherical shell,
light from outer space is “bent” as it passes through the
atmosphere to our telescopes or eyes on the Earth's surface.
The effect is largest for objects near the horizon, and
actually changes the predicted rise or set times of objects by
a few minutes. In fact, when you “see” a sunset, the Sun's
actual position is already well below the horizon; atmospheric
refraction makes it seem as if the Sun is still in the sky.
Note that atmospheric refraction is never applied if you are
using ``Equatorial coordinates``.

The ``Use animated slewing`` checkbox controls how the display
changes when a new focus position is selected in the map. By
default, you will see the sky drift or “slew” to the new
position; if you uncheck this option, then the display will
instead “snap” immediately to the new focus position.

If the ``Attach label to centered object`` checkbox is selected,
then a name label will automatically be attached to an object
when it is being tracked by the program. The label will be
removed when the object is no longer being tracked. Note that
you can also manually attach a persistent name label to any
object with its :ref:`popup menu  <commands-popup-menu>`.

There are three situations when KStars must redraw the sky
display very rapidly: when a new focus position is selected
(and ``Use animated slewing`` is checked), when the sky is dragged
with the mouse, and when the time step is large. In these
situations, the positions of all objects must be recomputed as
rapidly as possible, which can put a large load on the CPU. If
the CPU cannot keep up with the demand, then the display will
seem sluggish or jerky. To mitigate this, KStars will hide
certain objects during these rapid-redraw situations, as long
as the ``Hide objects while moving`` checkbox is selected. The
timestep threshold above which objects will be hidden is
determined by the ``Also hide if time step larger than:``
timestep-spinbox. You can specify the objects that should be
hidden in the ``Configure Hidden Objects`` section.

.. |Advanced Window| image:: /images/advanced_page.png
