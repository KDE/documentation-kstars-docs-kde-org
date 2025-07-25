=================================
Chapter 10. Questions and Answers
=================================

.. _faqlist:

**What do the different symbols for deep-sky objects mean?**

The symbol indicates the object type:

    - dotted circle: Open Cluster

    - cross-in-circle: Globular Cluster

    - box: Gaseous Nebula

    - diamond: Supernova Remnant

    - circle with outer lines: Planetary Nebula

    - ellipse: Galaxy

**What do the different colors of Deep-sky objects mean?**

Generally, the different colors indicate to which catalog the object
belongs (Messier, NGC or IC).  However, some objects have a different
color which indicates that there are extra images available in the :ref:`popup menu <commands-popup-menu>` (the default ``extras`` color is red).

**Why are there so many more U.S. cities than in other countries?**

When we started KStars, we were unable to find a longitude/latitude
database that covered the globe equitably.  However, the KStars
community is rapidly overcoming this problem!  We have already
received city lists from many users around the world.  If you can
contribute to this effort, please send us your list of cities and
coordinates.

**How can I add a new custom location to KStars?**

If you would like to use a location that is not on the list, enter the
relevant information (longitude, latitude, city name, province name, and
country name), then press ``Add City`` button.
All fields must be filled, except the optional province field.
You can also modify the values for an existing city, by simply changing
the values in the window, and adding it to the list.

**I have added a custom location to KStars that I no longer want.  How do I remove it from the program?**

You can easily remove a custom location from KStars by selecting it in the
cities list and pressing the ``Remove City`` button.
Note that you can not remove a KStars default city.

**Why do some objects disappear when I am scrolling the display?**

When the display is in motion, KStars must recompute the screen
coordinates of every object in its database, which involves
some pretty heavy trigonometry.  When scrolling the display (either
with the arrow keys or by dragging with the mouse), the display may
become slow and jerky, because the computer is having trouble keeping
up.  By excluding many of the objects, the computational load is
greatly reduced, which allows for smoother scrolling.  You can turn
off this feature in the ``Configure - KStars`` window,
and you can also configure which objects get hidden.

**I do not understand all the terms used in KStars.  Where can I learn more about the astronomy behind the program?**

The KStars Handbook includes the :doc:`AstroInfo
Project <astroinfo>`; a series of short, hyperlinked articles about
astronomical topics that can be explored and illustrated with KStars.
AstroInfo is a community effort, like GNUpedia or Everything2.  If
you'd like to contribute to AstroInfo, please join our mailing list: (``kstars-devel AT kde.org``).

**I want KStars to start up with a time and date different from my system CPU clock.  Is this possible?**

Yes; to start KStars with a different time/date, use the ``--date`` argument, followed by a date string like ``4 July 1976 12:30:00``

**I want KStars to start up with the simulation clock paused.  Is this possible?**

Yes; to start KStars with the clock paused, simply add the ``--paused`` argument to the command line.

**How accurate/precise is KStars?**

KStars is pretty accurate, but it is not (yet) as precise as it can
possibly be.  The problem with high-precision calculations is that
you start having to deal with a large number of complicating factors.
If you are not a professional astronomer, you will probably never have a
problem with its accuracy or precision.

Here is a list of some of the complicating factors which limit the
program's precision:

    - Planet positions are only accurate for dates within 4000 years
      or so of the current epoch.  The planet positions are predicted using
      a Fourier-like analysis of their orbits, as observed over the past few
      centuries.  We learnt in school that planets follow simple elliptical
      orbits around the Sun, but this is not strictly true.  It would be true
      only if there was only one planet in the Solar system, and if the Sun
      and the planet were both point masses.  As it is, the planets are
      constantly tugging on each other, perturbing the orbits slightly, and
      tidal effects also induce precessional wobbling.  In fact, recent
      analysis suggests that the planets' orbits may not even be stable in
      the long term (i.e., millions or billions of years).  As a rule of
      thumb, you can expect the position of a planet to be accurate to a few
      arcseconds between the dates -2000 and 6000.
      Pluto is the exception to this; its position is perhaps ten times less
      precise than the positions of the other planets.  Still, for dates
      near the present epoch, its position can be trusted to about an
      arcsecond.
      The moon's position is the most difficult to predict to high precision.
      This is because its motion is quite perturbed by the Earth.  Also,
      since it is so nearby, even minute effects that would be undetectable
      in more distant bodies are easily apparent in the moon.
      The objects with the worst long-term precision in the program are the
      comets and asteroids.  We use a very simplistic orbital model for the
      minor planets that does not include third-body perturbations.
      Therefore, their positions can only be trusted for dates near the
      present epoch.  Even for the present epoch, one can expect positional
      errors among the minor planets of order 10 arcseconds or more.

**Why do I have to download an improved NGC/IC catalog and Messier
object images?  Why not just include them as part of the KStars distribution?**

The author of the downloadable NGC/IC catalog has released it with the restriction that it may not be used commercially.  For most KStars users, this is not a problem.  However, it is technically against the KStars license (the GPL) to restrict usage in this way.  We removed the Messier object images from the standard distribution for two reasons:  to simply reduce the size of KStars, and also because of similar licensing concerns with a couple of the images.  The inline images are significantly compressed to a very low quality from their original form, so I doubt there is a real copyright concern, but I did obtain explicit permission from the images' authors to use the few images for which there was any question about it (see :file:`README.images`).  Still, just to be absolutely safe, I removed them from the standard distribution, and marked the download archive as being ``free for non-commercial use``.

**I am really enjoying the beautiful images I have downloaded through KStars!  I would like to share them with the world; can I publish a calendar featuring these images (or are there any usage restrictions on the images)?**

It depends on the image, but many of the images restrict against commercial usage.  The Image Viewer's statusbar will usually contain information about the image's copyright holder, and what usage restrictions apply.  As a rule of thumb:  anything published by NASA is in the public domain (including all HST images).  For everything else, you can pretty safely assume that the images may not be used commercially without permission.  When in doubt, contact the image's copyright holder directly.

**Can I help contribute to future versions of KStars?**

Yes, definitely!  Introduce yourself on our mailing list: (``kstars-devel AT kde.org``).  If you want to
help with the coding, download the latest `KStars Git <https://invent.kde.org/education/kstars>`__ version of the
code and dive right in.  There are several :file:`README` files in the
distribution that explain some of the code's subsystems.  If you
need ideas of what to work on, see the :file:`TODO` file.  You can submit
patches to kstars-devel mailing list, and feel free to post any questions you
have about the code there as well.

If you are not into coding, we can still use your help with i18n, docs,
AstroInfo articles, URL links, bug reports, and feature requests.

