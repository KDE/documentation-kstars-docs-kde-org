============================
Celestial Coordinate Systems
============================

         **Jason Harris**

         A basic requirement for studying the heavens is determining
         where in the sky things are. To specify sky positions,
         astronomers have developed several *coordinate systems*. Each
         uses a coordinate grid projected on the :doc:`Celestial
         Sphere <ai-csphere>`, in analogy to the :doc:`Geographic
         coordinate system <ai-geocoords>` used on the surface of
         the Earth. The coordinate systems differ only in their choice
         of the *fundamental plane*, which divides the sky into two
         equal hemispheres along a :doc:`great
         circle <ai-greatcircle>`. (the fundamental plane of the
         geographic system is the Earth's equator). Each coordinate
         system is named for its choice of fundamental plane.

.. _ai-skycoords-equatorial:

The Equatorial Coordinate System
=================================

            The *Equatorial coordinate system* is probably the most
            widely used celestial coordinate system. It is also the most
            closely related to the :doc:`Geographic coordinate
            system <ai-geocoords>`, because they use the same
            fundamental plane, and the same poles. The projection of the
            Earth's equator onto the celestial sphere is called the
            :doc:`Celestial Equator <ai-cequator>`. Similarly,
            projecting the geographic Poles onto the celestial sphere
            defines the North and South :doc:`Celestial
            Poles <ai-cpoles>`.

            However, there is an important difference between the
            equatorial and geographic coordinate systems: the geographic
            system is fixed to the Earth; it rotates as the Earth does.
            The Equatorial system is fixed to the
            stars\ `[1] <#ftn.fn-precess>`__, so it appears to rotate
            across the sky with the stars, but of course it is really
            the Earth rotating under the fixed sky.

            The *latitudinal* (latitude-like) angle of the Equatorial
            system is called *Declination* (Dec for short). It measures
            the angle of an object above or below the Celestial Equator.
            The *longitudinal* angle is called the *Right Ascension* (RA
            for short). It measures the angle of an object East of the
            :doc:`Vernal Equinox <ai-equinox>`. Unlike longitude,
            Right Ascension is usually measured in hours instead of
            degrees, because the apparent rotation of the Equatorial
            coordinate system is closely related to :doc:`Sidereal
            Time <ai-sidereal>` and :doc:`Hour
            Angle <ai-hourangle>`. Since a full rotation of the
            sky takes 24 hours to complete, there are (360 degrees / 24
            hours) = 15 degrees in one Hour of Right Ascension.

            The equatorial coordinates for deep-sky objects and stars do
            not vary appreciably over short durations of time, since
            they are not affected by the *diurnal motion* (the daily
            apparent rotation of the sky around the earth. However, note
            that this takes :doc:`1 sidereal day <ai-sidereal>`, as
            against 1 solar day). They are suitable coordinates for
            making catalogs of stars and deep-sky objects (note that
            *Galactic Coordinates* also work well, but are cumbersome to
            use from an earth point-of-view). However, there are effects
            that cause the RA and Dec of objects to vary over time,
            namely :doc:`Precession <ai-precession>` and *nutation*,
            and *proper motion*, the latter being even less important.
            Equatorial coordinates are thus generally specified with an
            appropriate :doc:`epoch <ai-epoch>`, to account for
            precession. Popular epochs include J2000.0 (:doc:`Julian
            Year <ai-julianday>` 2000) and B1950.0 (*Besselian
            Year* 1950).

.. _ai-skycoords-horizontal:

The Horizontal Coordinate System
=================================

            The Horizontal coordinate system uses the observer's local
            :doc:`horizon <ai-horizon>` as the Fundamental Plane. This
            conveniently divides the sky into the upper hemisphere that
            you can see, and the lower hemisphere that you can't
            (because the Earth is in the way). The pole of the upper
            hemisphere is called the :doc:`Zenith <ai-zenith>`. The
            pole of the lower hemisphere is called the *nadir*. The
            angle of an object above or below the horizon is called the
            *Altitude* (Alt for short). The angle of an object around
            the horizon (measured from the North point, toward the East)
            is called the *Azimuth*. The Horizontal Coordinate System is
            sometimes also called the Alt/Az Coordinate System.

            The Horizontal Coordinate System is fixed to the Earth, not
            the Stars. Therefore, the Altitude and Azimuth of an object
            changes with time, as the object appears to drift across the
            sky. In addition, because the Horizontal system is defined
            by your local horizon, the same object viewed from different
            locations on Earth at the same time will have different
            values of Altitude and Azimuth.

            Horizontal coordinates are very useful for determining the
            Rise and Set times of an object in the sky. When an object
            has Altitude=0 degrees, it is either Rising (if its Azimuth
            is < 180 degrees) or Setting (if its Azimuth is > 180
            degrees).

.. _ai-skycoords-ecliptic:

The Ecliptic Coordinate System
===============================

            The Ecliptic coordinate system uses the
            :doc:`Ecliptic <ai-ecliptic>` for its Fundamental Plane.
            The Ecliptic is the path that the Sun appears to follow
            across the sky over the course of a year. It is also the
            projection of the Earth's orbital plane onto the Celestial
            Sphere. The latitudinal angle is called the *Ecliptic
            Latitude*, and the longitudinal angle is called the
            *Ecliptic Longitude*. Like Right Ascension in the Equatorial
            system, the zeropoint of the Ecliptic Longitude is the
            :doc:`Vernal Equinox <ai-equinox>`.

            What do you think such a coordinate system would be useful
            for? If you guessed charting solar system objects, you are
            right! Each of the planets (except Pluto) orbits the Sun in
            roughly the same plane, so they always appear to be
            somewhere near the Ecliptic (i.e., they always have small
            ecliptic latitudes).

.. _ai-skycoords-galactic:

The Galactic Coordinate System
===============================

            The Galactic coordinate system uses the *Milky Way* as its
            Fundamental Plane. The latitudinal angle is called the
            *Galactic Latitude*, and the longitudinal angle is called
            the *Galactic Longitude*. This coordinate system is useful
            for studying the Galaxy itself. For example, you might want
            to know how the density of stars changes as a function of
            Galactic Latitude, to how much the disk of the Milky Way is
            flattened.

         .. container:: footnotes

            .. container:: footnote
               :name: ftn.fn-precess

               `[1] <#fn-precess>`__ Actually, the equatorial
               coordinates are not quite fixed to the stars. See
               :doc:`precession  <ai-precession>`. Also, if :doc:`Hour
               Angle  <ai-hourangle>` is used in place of Right
               Ascension, then the Equatorial system is fixed to the
               Earth, not to the stars.

