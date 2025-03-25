===================
Observation Planner
===================

         **Kristian Ivanov**

         Since KDE SC 4.4, Prakash Mohan's GSoC work has been released
         in KStars. KStars now has an awesome observation planner to
         plan your observation sessions. The execute session option
         allows you to log information about objects as you observe
         them. Alternately, you may also write a short log in the
         session planner itself. We wish you a lot of fun planning your
         observations with KStars!

         You can even add some pictures to the objects. The image list
         is a Google image search list. To add image to an object just
         press ``Find Image`` button on the right and then find an image
         that you like. If you do not have an Internet connection you
         can open an image from your hard drive. Note that images that
         will be used are going to be cropped to 600x600 pixels.

         The first way of doing this is by pressing **Ctrl**\ +\ **2**
         or **Ctrl**\ +\ **L** to open the Observation List, then press
         the ``Add Object`` button.

         |image2|

         The ``Download all Images`` button does a search for the SDSS
         images and displays the DSS image if the requested RA/Dec is
         out of the SDSS footprint.

         |image3|

         This is an SDSS image of a galaxy

         |image4|

         This is an DSS image of the same galaxy

         The ``Delete all Images`` button does the opposite. It deletes all
         downloaded images.

         |image5|

         The image for the galaxy is now deleted

         You can add more objects by pressing the ``Find Object`` button. It
         will open the ``Find Object`` tool which provides two accurate
         methods for sorting out the items, depending on what criteria
         you want to use. You can filter the list by objects type: Any,
         Stars, Solar System, Clusters (Globular and Open), Nebulae
         (Gaseous and Planetary), Galaxies, Comets, Asteroids,
         Constellations, Supernovae or Satellites. You can also filter
         the objects list by name. Enter the name of desired object in
         the ``Filter by name`` text box.

         Inside Observation Planner window you can see the “Altitude vs
         Time” widget (AltvsTime), which shows you how the altitude of a
         selected object varies over time.

         Below the AltvsTime widget, there is a text box in that you can
         add observing notes for current sky object.

         Note that the Wish List is not the Session Plan. In the Wish
         List you can add objects that you wish to observe at some
         point. From there you can add them to the Session Plan.

         You can see the pop-up window that comes after right-clicking
         on an object.

         |image6|

         Add objects to Session Plan window

         Here is the second way of adding objects in your Observation
         Plan, using the Observing List Wizard. You just need to press
         the fourth button on the top-left corner of the Observation
         Planner window.

         Despite looking differently this way is basically the same as
         the first one. Although that it could be a bit more detailed.
         Here you can see the same categories of objects.

         |image7|

         |image8|

         You can choose where these objects to be on the sky. There are
         four options available for you: All over the sky (which is the
         default option), by constellation and in a region (rectangular
         or circular).

         |image9|

         You can choose the date for the observation and the place you
         are going to observe from.

         |image10|

         You can choose the threshold of magnitude for the objects to be
         shown. In astronomy, absolute magnitude (also known as absolute
         visual magnitude when measured in the standard V photometric
         band) measures a celestial object's intrinsic brightness.

         |image11|

         You can save your observation plan. And it will save it with a
         ``.obslist`` extension.

         |image12|

         You can also access the ``WUT`` (What's up tonight), which could be
         of a great assistance to you. It can give you ideas what to
         observe on a date, time and place that you specify using the
         configuration buttons int the top-right corner of the ``What's up
         tonight`` window.

         |image13|

         Another way of adding objects to your observation plan is using
         the newly introduced ``Batch Add`` will open up a text box where
         you can type many objects to add in one shot to the observation
         planner. Any objects not in the KStars database already will be
         resolved using SIMBAD Astronomical Database (provided this has
         been enabled in the Settings) and added to the database. The
         entire process of adding objects is slow and may take a while,
         and you can watch the progress in the Status Bar. Any objects
         that could not be found are then listed in an error message, so
         you can identify and fix the errors. Usually this may be
         because SIMBAD expects a different way of specifying the object
         (e.g. Sim 147 instead of Simeis 147). This new feature allows
         you to easily scrape data from observing lists on the web etc.
         and add them to your workflow in KStars.

         This is how the ``Execution Session`` Window look. It can be opened
         by pressing **Ctrl**\ +\ **2**. In it you can also see some
         information about the selected object and you are able to add
         observing notes.

         |image14|

         First Execute Session window

         By pressing the ``Next Page`` button you will access the second
         page of Session Plan. Here you are able to see information not
         about your object, but about your equipment.

         |image15|

         Second Execute Session window

         Pressing the ``Next Target`` button will cause the Execute Session
         to open the first window about the next object.

.. |image2| image:: /images/KStars_Neptune.png
.. |image3| image:: /images/sds.png
.. |image4| image:: /images/dss.png
.. |image5| image:: /images/Delete_all_images.png
.. |image6| image:: /images/Add_Object_to_Session_plan.png
.. |image7| image:: /images/Another_way_to_add.png
.. |image8| image:: /images/Another_way_to_add_part3.png
.. |image9| image:: /images/Another_way4.png
.. |image10| image:: /images/Another_way5.png
.. |image11| image:: /images/Another_way6.png
.. |image12| image:: /images/Savin_session.png
.. |image13| image:: /images/wut.png
.. |image14| image:: /images/execute_session_nt.png
.. |image15| image:: /images/execute_session_the_nt.png
