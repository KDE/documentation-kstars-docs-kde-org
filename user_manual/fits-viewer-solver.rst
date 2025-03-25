==================
FITS Viewer Solver
==================

               |FITS Viewer Solver|

         The FITS Viewer Solver is used to plate-solve the image loaded
         in the FITS Viewer's tab. It only works with the internal
         StellarSolver. You get the RA and DEC coordinates for the
         center of the image, the image's scale, the angle of rotation,
         and the number of stars detected in the image. Its main use
         case is debugging plate-solving issues in Ekos, though the
         information displayed can be generally useful. The controls and
         displays are described below.

            -  Solve Button. Pressing this button starts plate solving.
               When the system is plate solving, the button becomes an
               abort button.

            -  Scale: Checking the Use Scale checkbox constrains the
               solver to use approximately the pixel or image scale
               given. The scale is entered in the box and the units for
               the scale can be chosen from image width in degrees,
               image width in arc-minutes, and arc-seconds per pixel.
               When a solve successfully completes, it replaces the
               value in the box with solution's scale.

            -  Position: Checking the Use Position checkbox constrains
               the solver to search near the RA and DEC coordinates
               given. The extent of the search is given by the user in
               the Radius box in degrees. Note that RA is input in
               hours-minutes-seconds, e.g. 13h, and DEC is input in
               degrees-minutes-seconds, e.g. 85. When a solve
               successfully completes, it replaces the value in the RA
               and DEC boxes with solution's coordinates. In addition it
               fills in the Angle field with the solutions angle value
               in degrees.

            -  Use SkyMap Position: There is a button just below the Use
               Position checkbox that fills in RA and DEC boxes with the
               current center of the SkyMap display.

            -  Profile: The Profile menu selects which StellarSolver
               preset, among those used in the Ekos Align module, should
               be used for plate solving. This is further discussed
               below.

            -  Solution: The Solution section will display the number of
               stars found and the time taken to solve. The solution
               values for RA, DEC, Scale and Angle are displayed in
               those boxes above.

            -  Image: For any image where stars were detected, if the
               Mark Stars button is activated above the image display,
               then the detected stars are circled in red.

                     |FITS Viewer Mark Stars Button|

         Using this tool the user can try and debug solving issues as
         follows.

            -  He/she might have the KStars -> Settings -> Developer ->
               :doc:`Save Failed Align Images checkbox <developer>`
               enabled.

            -  Then a difficult image (for whom alignment failed) :doc:`could
               be located <developer>` and loaded into the
               fitsviewer.

            -  The image could be inspected to see if there were obvious
               visual issues.

            -  Clicking Solve in this tool for that image would show how
               many stars were detected, and the user could then decide
               if it is a star detection issue and experiment with
               adjusting the profile or star-detection parameters.

            -  The user could manually upload the image to
               astrometry.net to get scale and position values (or just
               see if it is a problematic image).

            -  The user could experiment with Use Position and Use
               Scale, using accurate values for those constraints (or
               disabling them) to see if those were the problem, or
               adjust the parameters in the align profile being used.

         To inspect or modify the profile, the user would open the align
         tab in Ekos, go to the Options menu, select the StellarSolver
         Options tab, make sure the right Options profile is selected,
         and click the pencil to view or edit that profile.

.. |FITS Viewer Solver| image:: /images/fitsviewer-solver.png
.. |FITS Viewer Mark Stars Button| image:: /images/fitsviewer-mark-stars.png
