===============
Magnitude Scale
===============

         **Girish V**

         2500 years ago, the ancient Greek astronomer Hipparchus
         classified the brightnesses of visible stars in the sky on a
         scale from 1 to 6. He called the very brightest stars in the
         sky “first magnitude”, and the very faintest stars he could see
         “sixth magnitude”. Amazingly, two and a half millennia later,
         Hipparchus's classification scheme is still widely used by
         astronomers, although it has since been modernized and
         quantified.

         .. note::

            The magnitude scale runs backwards to what you might expect:
            brighter stars have *smaller* magnitudes than fainter
            stars).

         The modern magnitude scale is a quantitative measurement of the
         *flux* of light coming from a star, with a logarithmic scaling:

         m = m\ :sub:`0` - 2.5 log (F / F\ :sub:`0`)

         If you do not understand the math, this just says that the
         magnitude of a given star (m) is different from that of some
         standard star (m\ :sub:`0`) by 2.5 times the logarithm of their
         flux ratio. The 2.5 \*log factor means that if the flux ratio
         is 100, the difference in magnitudes is 5 mag. So, a 6th
         magnitude star is 100 times fainter than a 1st magnitude star.
         The reason Hipparchus's simple classification translates to a
         relatively complex function is that the human eye responds
         logarithmically to light.

         There are several different magnitude scales in use, each of
         which serves a different purpose. The most common is the
         apparent magnitude scale; this is just the measure of how
         bright stars (and other objects) look to the human eye. The
         apparent magnitude scale defines the star Vega to have
         magnitude 0.0, and assigns magnitudes to all other objects
         using the above equation, and a measure of the flux ratio of
         each object to Vega.

         It is difficult to understand stars using just the apparent
         magnitudes. Imagine two stars in the sky with the same apparent
         magnitude, so they appear to be equally bright. You cannot know
         just by looking if the two have the same *intrinsic*
         brightness; it is possible that one star is intrinsically
         brighter, but further away. If we knew the distances to the
         stars (see the :doc:`parallax  <ai-parallax>` article), we
         could account for their distances and assign *Absolute
         magnitudes* which would reflect their true, intrinsic
         brightness. The absolute magnitude is defined as the apparent
         magnitude the star would have if observed from a distance of 10
         parsecs (1 parsec is 3.26 light-years, or 3.1 x 10\ :sup:`18`
         cm). The absolute magnitude (M) can be determined from the
         apparent magnitude (m) and the distance in parsecs (d) using
         the formula:

         M = m + 5 - 5 \* log(d) (note that M=m when d=10).

         The modern magnitude scale is no longer based on the human eye;
         it is based on photographic plates and photoelectric
         photometers. With telescopes, we can see objects much fainter
         than Hipparchus could see with his unaided eyes, so the
         magnitude scale has been extended beyond 6th magnitude. In
         fact, the Hubble Space Telescope can image stars nearly as
         faint as 30th magnitude, which is one *trillion* times fainter
         than Vega.

         A final note: the magnitude is usually measured through a color
         filter of some kind, and these magnitudes are denoted by a
         subscript describing the filter (i.e., m\ :sub:`V` is the
         magnitude through a “visual” filter, which is greenish;
         m\ :sub:`B` is the magnitude through a blue filter;
         m\ :sub:`pg` is the photographic plate magnitude, etc.).

