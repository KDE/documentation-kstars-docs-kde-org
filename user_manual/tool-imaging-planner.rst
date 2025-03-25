====================
Imaging Planner Tool
====================

               |Imaging Planner|

         The Imaging Planner tool helps users choose which objects to
         image. Users can download catalogs of recommended objects, or
         possibly create and share their own catalogs. The tool computes
         when the objects in a read-in catalog may be imaged on the
         selected night given constraints such as minimum altitude,
         terrain and moon separation. It can sort the objects along
         several different dimensions including the number of hours an
         object may be imaged tonight (given the users geography,
         constraints and possibly artificial horizon), its peak
         altitude, distance from the moon, constellation, name and type.
         Objects can also be filtered out for several reasons (e.g. type
         of object, whether it was previously imaged, keywords the user
         has added, whether the object has been selected, user not
         interested, etc). This tool helps users research the objects by
         showing small images of the objects, showing the objects' sky
         locations on the skymap, and by providing links to follow to
         internet sites with more information and images. It allows
         users to attach notes and links to objects, and select certain
         of them for further consideration. This tool can be used in
         conjection with the Ekos imager or any other imaging tool. It
         does not currently directly interact with the actual imager; it
         only helps the user decide what to image.

.. _tool-imaging-planner-the-object-table:

The Object Table
==================

            The left side of the Imaging Planner tool is mostly occupied
            by the Object Table. It lists all the objects in the loaded
            catalog, other than those filtered out--see the Filters
            section below. Attributes of the objects are listed in the
            columns. Rows can be selected, and the selected row's
            information, altitude graph and image are shown on the right
            side of the tool.

            The table defaults to a sort order of more imaging hours on
            top. However one can change the sort order by clicking on
            column headers which will sort by that column (with certain
            secondary column sort defaults). Clicking on the same column
            header again will reverse the sort order.

            Right clicking (or control-click) on a row brings up a menu
            of operations that can be done on the object. Multiple rows
            can be selected (by the "click then shift-click technique")
            and the right-click menu may operate on all the selected
            rows. The operations allow you to add attributes to the
            object. Choices are:

               -  Pick the selected object (or un-pick an already picked
                  object). Note you can select more than one object at a
                  time with click then shift click. Marking an object as
                  picked will allow you to later just display a few
                  picked objects instead of the whole table. For
                  example, one may spend time researching many objects,
                  and when an interesting candidate is seen, it may be
                  marked picked for later examination. After a while,
                  when a collection of picked objects has been put
                  together, one can only show the picked objects by
                  using the picked filtering constraint (see Filters
                  below).

               -  Mark an object as already imaged (or undo that).
                  Again, one can set this object attribute and later
                  filter for not displaying these (or only displaying
                  those).

               -  Mark an object to be ignored (or undo that). Similar
                  to marking as already imaged.

               -  Center the object on the KStars SkyMap. This mostly
                  makes sense if auto-centering is disable in the
                  Options menu.

            Objects that are marked as imaged are displayed with a
            different background color as the other images in order to
            distinguish them. This tool doesn't automatically know that
            you've imaged an object, e.g. because you may have imaged it
            with KStars/Ekos. Rather you must explicitly mark an object
            as imaged using the menu, or use the Load Imaged button in
            the Filters section.

            Objects that are picked are also displayed differently. They
            are shown in bold-italic and underlined in order to
            distinguish them.

            The line above the table displays the number of rows in the
            table and total number of objects in the loaded catalog.
            They numbers may be different if some objects are filtered
            out. There is also a search box which will find a certain
            object if it is in the table.

.. _tool-imaging-planner-date-time-and-geography:

Date, Time and Geography
=========================

            The date for which the analysis is done can be changed by
            the date input boxes at the top-right of the tool. One can
            be move back a day by clicking the button on the left of the
            date, and one can more ahead one day with the button to the
            right. One can change to an arbitrary date by selected the
            menu button by the date, or by simply editing the date text.
            The moon illumination for that day is displayed to the left
            of the date.

            The time used (e.g. for the object's position in the skymap)
            and the geography/location used to determine an object's sky
            position are taken from the values being used in by KStars.
            To change your location, go to the ``Settings`` → ``Geographic``
            menu. To change the current time, go to the ``Time`` → ``Set
            Time...`` menu.

.. _tool-imaging-planner-options-and-help:

Options and Help
=================

            There are two buttons to the right of the date control.

               -  The options "hamburger" button brings up a small
                  options menu. Currently the menu contains two
                  checkboxes. One controls whether the system slews the
                  KStars SkyMap to an object's coordinates when the
                  object is selected in the table. The second decides if
                  the tool is an independent window (i.e. can go behind
                  or in front of other KStars windows), or if it always
                  goes in front of the main KStars window.

               -  The 2nd button, when clicked, brings up this KStars
                  Handbook in a web browser.

.. _tool-imaging-planner-object-information:

Object Information
===================

            The object information section near the top of the left-side
            of the tool displays information about the selected object.
            Click on an object and you should see this section filled
            in.

               -  The top line should display the primary name, object
                  type, and object size on the top line.

               -  The 2nd line should display any alternate names the
                  object has.

               -  The 3rd line give transit and moon-separation
                  information.

               -  The last line allows you to add notes about the
                  object. This information should be stored from
                  session-to-session by KStars in its MySQL database,
                  and is keyed by the object name. You edit these notes
                  by clicking on the pencil icon at the left of the Note
                  line. If you add a upto three URLs in the note
                  (remember to use http or https at the start of the
                  URL) then they should be automatically detected and an
                  icon for browsing those URLs will be added to the
                  Notes line. If the note you add is too long for the
                  line allocated in the Object Information section, you
                  can always see the full note by clicking the editing
                  pencil button.

.. _tool-imaging-planner-the-altitude-graph:

The Altitude Graph
====================

            The currently selected object's altitude is graphed in the
            Altitude vs Time graph. The graph runs from just before
            sunset to just after sunrise. You'll notice a dark
            background during the night. You may also notice a
            hash-pattern indicating moon illumination in the background.
            The altitude is graphed in white, but superimposed on top of
            it is a thicker green line indicating when the object can be
            imaged given your constraints (see Imaging Constraints
            section below). Thus if you just see a white altitude line,
            then the object cannot be imaged. If you see a green line,
            then those are the times and altitudes when the object can
            be imaged. If you click in the graph, you will see the
            altitude of the selected object displayed in the upper left
            of the graph.

.. _tool-imaging-planner-imaging-constraints:

Imaging Constraints
====================

            The Imaging Planner tool calculates when during the night
            objects can be imaged. There are several constraints that
            affect this calculation. Some are set in this tool and a few
            are KStars/Ekos parameters that may need to be modified.

               -  The minimum altitude in degrees that an object can be
                  imaged is given in the Min alt box. If you change this
                  value, you should see the Hours column recalculated in
                  the object table and the graph recalculated in the
                  Object Info section.

               -  Similar to altitude, you can change the minimum
                  Moon-separation angle in degrees.

               -  If the artificial horizon checkbox is checked, then
                  artificial horizon constraints are used to calculate
                  the possible imaging times. The artificial horizon are
                  the parts of the sky that are blocked from imaging by
                  buildings or trees or the like at your telescope's
                  location. The artificial horizon is set up elsewhere
                  in KStars (see :ref:`Setting
                  Menu  <commands-settings-menu>` and go down to
                  ``Settings`` → ``Artificial Horizon``) and at its simplest is
                  a list of azimuth and altitude values. If you make use
                  of this tool and image from an area where significant
                  parts of the sky is blocked, it is recommended you set
                  up and use the artificial horizon feature. Associated
                  with the artificial horizon is the SkyMap's :doc:`terrain
                  feature  <terrain>`. If you set up your terrain
                  image, then when the Imaging Planner tool displays the
                  object on the SkyMap, you will see when it is relative
                  to your local environment. Of course, you'd need to
                  set a realistic imaging time--that is, if you plan
                  during the daytime and the tool is locating objects at
                  the current time, then the object may be set or behind
                  buildings or trees.

               -  KStars/Ekos uses astronomical twilight times to
                  constrain imaging times. Using the defaults will
                  result in no imaging outside of astronomical twilight
                  times. If you wish to adjust this please see the
                  constraint in the ``Ekos Scheduler's Offset`` menu--change
                  the ``Dusk Offset`` positive to start imaging later, and
                  negative to start imaging earlier. Similarly change
                  ``Dawn Offset`` positive to continue imaging longer, and
                  negative to stop imaging sooner. These controls can be
                  found by selecting ``Tools`` → ``Ekos`` and then clicking on
                  the ``Scheduler`` tab (2nd from the left), clicking the
                  ``Options`` button on the bottom right, and the ``offset`` tab
                  on the top-left.

.. _tool-imaging-planner-imageobject-search:

Image/Object Search
====================

            The ``Search`` section provides some shortcuts for researching
            the currently selected object. The ``Wikipedia`` button brings
            up a browser window for Wikipedia using the object's ID.
            Similar for ``Simbad``. The ``NGC/IC`` button brings up a browser
            window for the Professor Seligman NGC/IC website.

            The ``Astrobin`` button uses the Astrobin.com search facility to
            perform a slightly more detailed image search. You can cause
            it search for images in Astrobin with a certain image
            radius, and require that the result images have won
            "Astrobin awards" such as top-pick nomination, top-pick or
            image-of-the-day. Once you browse to the Astrobin website,
            you can, of course, modify the Astrobin search constraints
            as you like given the constraints and capabilities of the
            Astrobin website. The Astrobin search constraints can be
            hidden and exposed using the button on the left of the
            Search line.

.. _tool-imaging-planner-filters:

Filters
=========

            There are a number of ways one can filter the objects
            displayed in the Imaging Planner's object table. Filtering
            objects removes them from the table, but they can be
            accessed again by changing the filter. Note that the filter
            section can be hidden and exposed by clicking the small
            button at the left of the filter section.

               -  Items can be filtered by how many hours they are
                  image-able this night. Change the value in the ``Min
                  Hours`` box, and objects with fewer hours than that
                  value will not be displayed.

               -  Checking or unchecking one of the object types will
                  cause objects with those types to be displayed or not.

               -  ``Picked``: Checking Picked will cause only "picked"
                  objects to be displayed. Similarly checking "Not
                  Picked" will cause only objects not picked to be
                  displayed. Checking ``Don't Care`` in the picked line will
                  cause the picked-status to be irrelevant in whether an
                  object is filtered from the table.

               -  Similar to picked, ``Imaged`` causes objects labeled as
                  previously imaged to be displayed or not.

               -  ``Ignored`` causes objects labeled as "Ignored" to be
                  displayed or not.

               -  ``Keyword`` searches inside the Notes the user has added
                  to the object, and is "true" if it sees a word in the
                  note that matches the keyword (see the Object
                  Information section above).

            The ``Load Imaged`` button in the Imaged row of the ``Filters``
            section allows you to load an already-imaged file. This file
            is a simple list of object names, one per row, that you can
            construct and load. Loading this will cause the tool to
            remember those object names and mark them as already imaged
            when it encounters them. If you wish to undo this action,
            the way to do that is to set the filters to just show imaged
            objects and then use the right-click/control-click menu to
            set the desired objects as not imaged. You can speed that up
            by selecting many objects at a time with the click then
            shift-click technique.

.. _tool-imaging-planner-object-image:

Object Image
==============

            If it is available, a small image of the currently selected
            object is displayed. Clicking on the image,
            astrophotographer credit line, or URL line will open a
            browser with given link to a full image, if a link was
            provided.

            Note that the ``Load Catalog`` button is also in this section.

.. _tool-imaging-planner-kstars-setup-for-the-imaging-planner:

KStars setup for the Imaging Planner
=====================================

            There are a number of ways KStars could be setup to improve
            your experience with this tool.

               -  The most important thing to do is go to ``Data`` →
                  ``Download New Data...`` and download a catalog associated
                  with this tool. The first time you use this tool
                  you'll need to click on the ``Load Catalog`` button and
                  load the downloaded catalog. The tool should
                  automatically download the catalog in subsequent runs.

               -  Another important thing to do, also in the above ``Data``
                  → ``Download New Data...`` menu, is to download some
                  deep-sky object catalogs. In particular the NGC IC,
                  OpenNGC, Sharpless, Abell, Lynds and Hickson catalogs
                  would be handy. You can run the Imaging Planner
                  without these (small) downloads, but the start-up time
                  on the first time you use this tool will be much
                  longer if you don't download them.

               -  Read the Imaging Constraints section above and follow
                  suggestions there, so that this tool can better
                  predict how long an object can be imaged during the
                  date selected.

               -  Selected objects can be automatically centered in the
                  SkyMap display. If that display is useful, you may
                  want to adjust the zoom so that it is close to your
                  imager's field of view. The items below also apply to
                  that SkyMap display.

               -  You may also want to set the time in KStars to reflect
                  when you'll be imaging. See the Time menu.

               -  If you don't set the time, you may want to hide the
                  terrain display (if you've set that up) and also not
                  render the ground, as those may obscure the object.
                  You show and hide the terrain display in the view
                  menu, and the ground can be disabled in ``Settings`` →
                  ``Guides`` with the ``Opaque Ground`` checkbox.

               -  If you're using a HiPS-based skymap, you would likely
                  want local copies of the DSS data to speed-up the
                  rendering of the SkyMap. See ``View`` → ``HiPS All Sky
                  Survey`` and under there ``HiPS Settings...`` → ``Cache`` and
                  enable the cache and enter the location of your local
                  copy of the data. The data is available on
                  https://irsa.ipac.caltech.edu/data/hips/CDS/DSS2/color/Norder1
                  ... /Norder7 and another resource is
                  https://coochey.net/?p=699

               -  It would be useful to create a custom SkyMap "FOV
                  Symbol" which is the same as the field-of-view of your
                  imager. See ``Settings`` → ``FOV Symbols``, and inside there
                  select ``New`` → ``Camera``, and enter the focal length of
                  your optics and the camera's specifications.

               -  You may want to adjust the color theme, e.g. in
                  ``Settings`` → ``Themes`` to Black Body if you like dark
                  themes.

.. _tool-imaging-planner-catalogs:

Catalogs
==========

            KStars currently provides a single imaging-planner catalog
            via the ``Data`` → ``Download New Data...`` menu item. The hope is
            that there will be future specialized catalogs, and possibly
            user-generated catalogs too. Therefore the catalog is
            formatted in a human-readable way.

.. _tool-imaging-planner-catalog-format:

Catalog Format
----------------

               The format is currently a comma-separated file with one
               object on a row.

                  -  The first column is an object ID--which is the kind
                     of ID that would work with the KStars :ref:`Find Object
                     tool  <skyobjects-finding-objects>`.

                  -  The 2nd column is a filename (relative to the
                     catalog's location) where an approximate 300x300
                     jpeg image of the object can be found.

                  -  The 3rd column is the name of the image's
                     photographer.

                  -  The 4th is a link to a larger version of the image,

                  -  The 5th column is Creative Commons license
                     permission for using the image (e.g. ACC is
                     Attribution Creative Commons, ANCSACC is
                     Attribution Non-Commercial ShareAlike Creative
                     Commons, using the same conventions as the
                     Astrobin.com website).

               To add an object without an image, simply add the object
               ID with no following commas, or an object ID with 4
               following commas, such as one of these lines (without
               quotes): "M 42", or "M 42,,,,". An example full line
               might be: "M 42,M_42.jpg,Hy
               Murveit,https://www.astrobin.com/x4dpey/,ACC".

               There are a few other possible specialized rows:

                  -  Rows that start with # are comments.

                  -  Rows that contain LoadCatalog
                     RELATIVE_CATALOG_FILENAME mean that the contents of
                     RELATIVE_CATALOG_FILENAME should be read in as if
                     they were in this catalog file.

               If you wanted to add your own objects to the existing
               catalog, you could do so by creating your own catalog,
               say on your desktop in a .csv file, and having the first
               line include the existing catalog with a LoadCatalog
               line, and having subsequent lines list your new objects.
               You'd then run ``Load Catalog`` on your new .csv file.

.. _tool-imaging-planner-loading-catalogs:

Loading Catalogs
==================

                  -  Catalogs read in from ``Data`` → ``Download New Data...``
                     are stored in the standard KStars data directory,
                     but catalogs can be read in from anywhere.

                  -  Use the Imaging Planner's ``Load Catalog`` button to
                     read in a new catalog.

                  -  When a catalog is read in, the previous catalog is
                     discarded.

                  -  When the tool starts, it reads in the catalog last
                     loaded in the previous session.

.. |Imaging Planner| image:: /images/imagingplanner.png
