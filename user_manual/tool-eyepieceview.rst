======================
Simulate Eyepiece View
======================

               |Example View|

                  On the left hand side is the sky map shot from KStars.
                  On the right hand side is the POSS (DSS) image of the
                  same region. The orientation in the above example has
                  been adjusted to match the view through a Dobsonian
                  telescope at the location and time of the simulation
                  in KStars.

         This tool simulates how an object looks through your eyepiece.
         In addition to rendering the eyepiece field, KStars can also
         fetch and overlay the DSS imagery. Additionally, if you are
         using a Dobsonian telescope, you can rotate the field of view
         to match the eyepiece view.

         To use this feature, first define your eyepieces' fields of
         view using the :doc:`FOV Symbol editor <customize>`.

         Then there are two ways to invoke the feature:

            -  In Sky Map, right click on the desired object and click
               ``Simulate eyepiece view`` in the popup menu.

            -  In observation planner, right click an object and click
               ``Simulate eyepiece view`` in the popup menu.

         When the tool is first invoked, it will prompt a dialog to
         select the desired FOV to render the view. To compare the
         rendered view against a real sky image, click the ``Fetch DSS
         image`` button to download a DSS image. You can manually adjust
         the view to match your eyepiece using the rotation slider, the
         ``Invert view`` and ``Flip view`` check boxes. Alternatively, you can
         use a pre-calculated amount of rotation by using one item of
         the ``Preset:`` dropdown box that is tailored for different optical
         systems.

               |View with Overlay|

                  Arp84 eyepiece view with ticks enabled indicating how
                  the chart must be oriented to match the eyepiece view
                  through a Dobsonian at a given time (the generated
                  data is for location McDonald Observatory Texas, and
                  the date is 14th Dec 2016).

         To export the view to a file, click ``Export`` button. Export
         enables adding ticks for printed charts as shown above and save
         the image.

.. |Example View| image:: /images/EPView_Screenshot.png
.. |View with Overlay| image:: /images/Arp84_EyepieceView.png
