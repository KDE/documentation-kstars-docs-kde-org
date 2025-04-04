=============
Sidereal Time
=============

         **Jason Harris**

         *Sidereal Time* literally means “star time”. The time we are
         used to using in our everyday lives is Solar Time. The
         fundamental unit of Solar Time is a *Day*: the time it takes
         the Sun to travel 360 degrees around the sky, due to the
         rotation of the Earth. Smaller units of Solar Time are just
         divisions of a Day:

            -  1/24 Day = 1 Hour

            -  1/60 Hour = 1 Minute

            -  1/60 Minute = 1 Second

         However, there is a problem with Solar Time. The Earth does not
         actually spin around 360 degrees in one Solar Day. The Earth is
         in orbit around the Sun, and over the course of one day, it
         moves about one Degree along its orbit (360 degrees/365.25 Days
         for a full orbit = about one Degree per Day). So, in 24 hours,
         the direction toward the Sun changes by about a Degree.
         Therefore, the Earth has to spin 361 degrees to make the Sun
         look like it has traveled 360 degrees around the Sky.

         In astronomy, we are concerned with how long it takes the Earth
         to spin with respect to the “fixed” stars, not the Sun. So, we
         would like a timescale that removes the complication of Earth's
         orbit around the Sun, and just focuses on how long it takes the
         Earth to spin 360 degrees with respect to the stars. This
         rotational period is called a *Sidereal Day*. On average, it is
         4 minutes shorter than a Solar Day, because of the extra 1
         degree the Earth spins in a Solar Day. Rather than defining a
         Sidereal Day to be 23 hours, 56 minutes, we define Sidereal
         Hours, Minutes and Seconds that are the same fraction of a Day
         as their Solar counterparts. Therefore, one Solar Second =
         1.00278 Sidereal Seconds.

         The Sidereal Time is useful for determining where the stars are
         at any given time. Sidereal Time divides one full spin of the
         Earth into 24 Sidereal Hours; similarly, the map of the sky is
         divided into 24 Hours of *Right Ascension*. This is no
         coincidence; Local Sidereal Time (LST) indicates the Right
         Ascension on the sky that is currently crossing the :doc:`Local
         Meridian  <ai-meridian>`. So, if a star has a Right
         Ascension of 05h 32m 24s, it will be on your meridian at
         LST=05:32:24. More generally, the difference between an
         object's RA and the Local Sidereal Time tells you how far from
         the Meridian the object is. For example, the same object at
         LST=06:32:24 (one Sidereal Hour later), will be one Hour of
         Right Ascension west of your meridian, which is 15 degrees.
         This angular distance from the meridian is called the object's
         :doc:`Hour Angle  <ai-hourangle>`.

         .. tip::

            The Local Sidereal Time is displayed by KStars in the ``Time
            Info`` Box, with the label “ST” (you have to “unshade” the box
            by double-clicking it in order to see the sidereal time).
            Note that the changing sidereal seconds are not synchronized
            with the changing Local Time and Universal Time seconds. In
            fact, if you watch the clocks for a while, you will notice
            that the Sidereal seconds really are slightly shorter than
            the LT and UT seconds.

            Point to the :doc:`Zenith  <ai-zenith>` (press **Z** or
            select the ``Pointing`` → ``Zenith`` menu item). The Zenith is the
            point on the sky where you are looking “straight up” from
            the ground, and it is a point on your :doc:`Local
            Meridian  <ai-meridian>`. Note the Right Ascension of
            the Zenith: it is exactly the same as your Local Sidereal
            Time.

