Menu Commands
===============

.. _commands-file-menu:

File Menu
----------

``File`` → ``Open Image...``  (**Ctrl** + **O**)
 Open an image in the FITS Viewer.

``File`` → ``Save Sky Image...``
 Create image on disk from current display.

``File`` → ``Run Script...`` (**Ctrl** + **R**)
 Run the specified KStars script.

``File`` → ``Printing Wizard...``
 Starts a wizard to configure capturing sky objects images using telescope and printing the results as a good looking printout for further use or catalogization.

``File`` → ``Print...`` (**Ctrl** + **P**)
 Send the current sky map to the printer (or to a PostScript®/PDF file).

``File`` → ``Quit`` (**Ctrl** + **Q**)
 Quit KStars.

.. _commands-time-menu:

Time Menu
-----------

``Time`` → ``Set Time to Now`` (**Ctrl** + **E**)
 Sync time to system clock.

``Time`` → ``Set Time...`` (**Ctrl** + **S**)
 Set time and date.

``Time`` → ``Advance One Step Backward in Time`` (**<**)
 Advance one step backward in time in the KStars simulation of the sky chart. The duration of the time step can be configured after pressing the little **>** button on the KStars toolbar.

``Time`` → ``Stop Clock``
 Toggle whether time passes.

``Time`` → ``Advance One Step Forward in Time`` (**>**)
 Advance one step forward in time in the KStars simulation of the sky chart. The duration of the time step can be configured after pressing the little **>** button on the KStars toolbar.

.. _commands-pointing-menu:

Pointing Menu
--------------

``Pointing`` → ``Zenith`` (**Z**)
 Center the display at the :doc:`Zenith  <ai-zenith>` point (straight up).

``Pointing`` → ``North`` (**N**)
 Center the display above the North point on the horizon.

``Pointing`` → ``East`` (**E**)
 Center the display above the East point on the horizon.

``Pointing`` → ``South`` (**S**)
 Center the display above the South point on the horizon.

``Pointing`` → ``West`` (**W**)
 Center the display above the West point on the horizon.

``Pointing`` → ``Set Coordinates Manually...`` (**Ctrl** + **M**)
 Center the display on specific :doc:`sky coordinates  <ai-skycoords>`.

``Pointing`` → ``Find Object...`` (**Ctrl** + **F**)
 Locate an object by name using the :ref:`Find Object Window  <skyobjects-finding-objects>`.

``Pointing`` → ``Engage/Stop Tracking`` (**Ctrl** + **T**)
 Toggle tracking on/off. While tracking, the display will remain centered on the current position or object.

.. _commands-view-menu:

View Menu
-----------

``View`` → ``Zoom In`` (**Ctrl** + **+**)
 Zooms view in.

``View`` → ``Zoom Out`` (**Ctrl** + **-**)
 Zooms view out.

``View`` → ``Default Zoom`` (**Ctrl** + **Z**)
 Restore the default Zoom setting.

``View`` → ``Zoom to Angular Size...`` (**Ctrl** + **Shift** + **Z**)
 Zoom to specified field-of-view angle.

``View`` → ``Full Screen Mode`` (**Ctrl** + **Shift** + **F**)
 Toggle full-screen mode.

``View`` → ``Switch to Star Globe View`` / ``Switch to Horizontal View`` (**Space**)
 Toggle between the :ref:`Horizontal  <ai-skycoords-horizontal>` and :ref:`Equatorial  <ai-skycoords-equatorial>` :doc:`Coordinate Systems  <ai-skycoords>`.

``View`` → ``Show Terrain`` (****Ctrl**** + ****Shift**** + ****T****)
  Toggle the :doc:`terrain image  <terrain>` visibility.

``View`` → ``Projection``
  A submenu that lists all projections.

  ``Lambert Azimuthal Equal-area`` (**F5**)
    Switch sky chart view to the `Lambert azimuthal equal-area <https://en.wikipedia.org/wiki/Lambert_azimuthal_equal-area_projection>`__ projection.

  ``Azimuthal Equidistant`` (**F6**)
    Switch sky chart view to the `azimuthal equidistant <https://en.wikipedia.org/wiki/Azimuthal_equidistant_projection>`__ projection.

  ``Orthographic`` (**F7**)
    Switch sky chart view to the `orthographic <https://en.wikipedia.org/wiki/Orthographic_projection_(cartography)>`__ projection.

  ``Equirectangular`` (**F8**)
    Switch sky chart view to the `equirectangular <https://en.wikipedia.org/wiki/Equirectangular_projection>`__ projection.

  ``Stereographic`` (**F9**)
    Switch sky chart view to the `stereographic <https://en.wikipedia.org/wiki/Stereographic_projection>`__ projection.

  ``Gnomonic`` (**F10**)
    Switch sky chart view to the `gnomonic <https://en.wikipedia.org/wiki/Gnomonic_projection>`__ projection.

``View`` → ``HiPS All Sky Overlay``
    A submenu that lists the enabled surveys. Select the ``HiPS Settings...`` menu item for configure the :doc:`HiPS  <hips>` sky overlays.

.. _commands-tools-menu:

Tools Menu
------------

``Tools`` → ``Calculator`` (**Ctrl** + **Shift** + **C**)
  Opens the :doc:`AstroCalculator  <tool-calculator>` Tool, which provides full access to many of the mathematical functions used by KStars.

``Tools`` → ``Devices``
  A submenu for control supported devices.

  ``List your Equipment...`` (**Ctrl** + **0**)
    Allows you to define your equipment characteristics for observation logs. The Configure Equipment window is divided into four tabs: Telescope, Eyepiece, Lens and Filter. You can add a new equipment by completing its characteristics and pressing Add New... button. You can also save or remove an equipment from the list.

  ``Device Manager...`` (**Ctrl** + **D**)
    Opens up the device manager, which allows you to start/shutdown device drivers and connect to remote INDI servers.

  ``Custom Drivers...``
    A dialog to customize the drivers.

  ``INDI Control Panel...``
    Opens up INDI Control Panel, which allows you to control all the features supported by a device.

``Tools → Sky Calendar``
  Opens the Sky Calendar Tool, which allows you to plan observations of Solar System planets by giving graphical data on sets and rises of these objects.

``Tools → Altitude vs. Time`` (**Ctrl** + **A**)
  Opens the :doc:`Altitude vs.  Time  <tool-altvstime>` Tool, which can plot curves representing the altitude of any object as a function of time. This is useful for planning observing sessions.

``Tools → What's up Tonight`` (**Ctrl** + **U**)
  Opens the :doc:`What's up Tonight  <tool-whatsup>` Tool, which presents a summary of the objects which are observable from your location on a given date.

``Tools → What's Interesting...`` (**Ctrl**\ +\ **W**)
  Opens the What's Interesting Tool, which allows you to be informed about the most interesting observations that can be made from your current location using the given equipment.

``Tools → XPlanet Solar System Simulator`` (**Ctrl** + **X**)
  This menu item will appear only if you have installed the XPlanet optional package.

``Tools → Script Builder`` (**Ctrl** + **B**)
  Opens the :doc:`Script Builder  <tool-scriptbuilder>` Tool, which provides a GUI interface for building KStars D-Bus scripts.

``Tools → Solar System`` (**Ctrl** + **Y**)
  Opens the :doc:`Solar System Viewer  <tool-solarsys>`, which displays an overhead view of the solar system on the current simulation date.

``Tools → Ekos`` (**Ctrl** + **K**)
  Opens :doc:`Ekos  <ekos>`, a complete and powerful tool for astrophotography. With Ekos, you can align and guide your telescope, focus your CCD, and capture images using an easy intuitive interface.

``Tools → Jupiter's Moons`` (**Ctrl** + **J**)
  Opens the :doc:`Jupiter Moons Tool  <tool-jmoons>`, which displays the positions of Jupiter's four brightest moons as a function of time.

``Tools → Flags``
  Opens the Flag manager Tool, which can be used to assign color labels and icons to the given positions on the sky chart.

``Tools → Imaging Planner``
  Opens the :doc:`Imaging Planner Tool  <tool-imaging-planner>`, which helps you find objects to image.

.. _commands-data-menu:

Data Menu
-----------

``Data`` → ``Download New Data...`` (**Ctrl** + **N**)
  Open the ``Get Hot New Stuff`` dialog to download additional data for KStars.

``Data`` → ``Manage DSO Catalogs``
  Open the ``DSO Catalogs`` dialog for manage the catalog database of KStars.

``Data → Updates``
  This submenu can be used to update various object data, namely asteroids, comets and satellites orbital elements as well as recent supernovae data from the Internet. The data will be downloaded for the current user account only. If you use KStars from different account you should download them for every account separately.

  KStars tries to download recent supernovae list automatically by default. You can switch the download off using ``Supernovae`` page of KStars Settings window.

.. _commands-observation-menu:

Observation Menu
-----------------

``Observation`` → ``Observation Planner`` (**Ctrl** + **L**)
  Open the :doc:`Observation Planner  <tool-obsplanner>` tool.

``Observation`` → ``Execute the Session Plan...`` (**Ctrl** + **2**)
  Opens :doc:`session plan wizard  <tool-obsplanner>` or execute the planned session.

``Observation`` → ``Polaris Hour Angle...``
  Opens the ``Polaris Hour Angle`` tool.

.. _commands-settings-menu:

Settings Menu
--------------

``Settings`` → ``Info Boxes``
  A submenu that lists the different info boxes.

  ``Show Info Boxes``
    Toggle display of all three Info Boxes:

      *  Time Box

      *  Focus Box

      *  Location Box

  ``Show Time Box``
      Toggle display of the Time Info Box. By default, the Time Info Box is located in the top left side of the screen. You can change the position of Time Info Box by holding the left-click mouse button and dragging it to the new position.

  ``Show Focus Box``
    Toggle display of the Focus Info Box. By default, the Focus Info Box is located in the top right side of the screen. You can change the position of Focus Info Box by holding the left-click mouse button and dragging it to the new position.

  ``Show Location Box``
    Toggle display of the Location Info Box. By default, the Location Info Box is located in the bottom left side of the screen. You can change the position of Location Info Box by holding the left-click mouse button and dragging it to the new position.

``Settings → Toolbars Shown``
  A submenu that lists the different toolbars.

  ``Main Toolbar``
    Toggle display of the Main Toolbar. By default, the Main Toolbar provides useful shortcuts for controlling the sky map view (i.e. Zoom in and Zoom out) and for controlling KStars clock as well. You can Start / Stop the clock, advance one step backward / forward in time and also you can easily set the time step used by KStars' clock. The time step is the rate at which time flows in the simulation. For setting the time step, you can use the spin box used for establishing the time step units and the spin box used for increasing / decreasing the time step value. Using the Main Toolbar you can quickly open the ``Find Object``, ``Set Time`` or ``Set Geographic Location`` window. Main Toolbar can be configured using the ``Settings`` → ``Configure Toolbars...`` menu item.

  ``View Toolbar``
    Toggle display of the View Toolbar. View Toolbar controls which sky objects are drawn on KStars Sky Map (stars, deep sky objects, Solar system objects, supernovae or satellites) as well as what constellation information is included (constellation lines, constellation names, constellation art or constellation boundaries). It also provides icon shortcuts for: showing milky way (drawn with dark grey color), showing equatorial/horizontal coordinate grid and for showing the green opaque ground. Note that when the horizon is switched off, refraction effects are temporarily disabled. View Toolbar can be configured using the ``Settings`` → ``Configure Toolbars...`` menu item.

  ``INDI Toolbar``
    Toggle display of the INDI Toolbar. By default, INDI Toolbar contains five shortcut icons:

      -  |image2| ``Toggle Ekos``
      -  |image3| ``Toggle INDI Control Panel``
      -  |image4| ``Toggle FITS Viewer``
      -  |image5| ``Toggle Sensor FOV``
      -  |image6| ``Toggle Lock Telescope Center``

    INDI Toolbar can be configured using the ``Settings`` → ``Configure Toolbars...`` menu item.

  ``Telescope Toolbar``
    Toggle display of the Telescope Toolbar. By default, Telescope Toolbar contains seven shortcut icons:

      -  |image7| ``Toggle Mount Control Panel``
      -  |image8| ``Toggle Telescope Tracking``
      -  |image9| ``Slew telescope to the focused object``
      -  |image10| ``Sync telescope to the focused object``
      -  |image11| ``Park telescope``
      -  |image12| ``Unpark telescope``
      -  |image13| ``Abort telescope motions``

    Telescope Toolbar can be configured using the ``Settings`` → ``Configure Toolbars...`` menu item.

  ``Dome Toolbar``
    Toggle display of the Dome Toolbar. By default, Dome Toolbar contains two shortcut icons:

      -  |image14| ``Park dome``
      -  |image15| ``Unpark dome``

    Dome Toolbar can be configured using the ``Settings`` → ``Configure Toolbars...`` menu item.

``Settings`` → ``Statusbar``
  A submenu that lists the different statusbars.

  ``Show Statusbar``
    Toggle display of the Statusbar. It is located in the bottom of KStars window.

  ``Show Az/Alt Field``
    Toggle display of the mouse cursor's horizontal coordinates in the statusbar.

  ``Show RA/Dec Field``
    Toggle display of the mouse cursor's equatorial coordinates in the statusbar.

  ``Show J2000.0 RA/Dec Field``
    Toggle display of the mouse cursor's equatorial J2000 coordinates in the statusbar.

``Settings → Themes``
  Lists the available Theme items.

``Settings`` → ``Color Schemes``
  This submenu contains all of the defined color schemes: Classic, Star Chart, Night Vision and Moonless Night. It can also include your custom color schemes. Select any item to set that color scheme.

``Settings`` → ``FOV Symbols``
  This submenu lists the available field-of-view (FOV) Symbols. The FOV Symbol is drawn at the center of the display. You may choose one or more from the list of predefined symbols (7x35 Binoculars, Telrad, One Degree, HST WFPC2 or 30m at 1.3cm) by checking their specific checkbox, or you may use no symbol by unchecking all the items from the symbols list. You can also define your own symbols (or modify existing symbols) using the ``Edit FOV Symbols...`` menu item.

``Settings`` → ``Artificial Horizon...``
  If you select this submenu, then Artificial Horizon Manager will be opened. Artificial Horizon Manager is used to define on the skymap one or more regions that are blocked from view from your current location (i.e. tall trees or building). The window is split in two sections: in the left side is the Regions section while in the right side is the Points section. You can add a new region by pressing the ``+`` (Add Region) button or you can remove a region by selecting it in the regions list and then pressing the ``-`` (Remove Region) button. In order to draw a region you need to define a list of points that encompasses the blocked area. You can add a new point by pressing the ``+`` (Add Point) button from the right Points section. You can also remove a highlighted point from the list of points or you can clear all the points. There are two ways to add a new point to a selected region: manually by entering the point's coordinates or by selecting the point from the skymap after clicking  ``Select Points`` button. Note that each point is described by a set of horizontal coordinates: Az (Azimuth) and Alt (Altitude). If you want to modify a point's coordinates, just double click on its Az/Alt text box value and enter the new value. First and Last points must be on the horizon. Polygons must be closed to be considered valid regions. Artificial Horizon Manager provides a easy way to rename your regions. By default, regions are named as: “Region ” plus an index (i.e. “Region 1” or “Region 2”).  For renaming a region, just double click on its name and then you will be invited to complete a new region name. You can also control which regions are enabled or disabled for marking on the map by a simple click on the checkbox in front of each region. After you defined your desired regions you can apply them by pressing the ``Apply`` button. If you want to use these regions again, in further astronomy sessions, you can save them such that next time when you will open KStars they will be automatically marked on the skymap.

``Settings`` → ``Manage Observer...`` (**Ctrl** + **1**)
  Selecting this will open Manage Observers window that enables you to register a number of observers which are using KStars on this computer. You can add a new entry to observers list by completing the mandatory fields: ``Name:`` and ``Surname:`` and then pressing the ``+`` (Add observer) button. Note that ``Contact:`` field is optional, KStars allowing you to add a new observer even though ``Contact:`` text box is empty. You can also remove an observer from the list using ``-`` (Remove observer) button.

``Settings`` → ``Geographic...`` (**Ctrl** + **G**)
  Select a new :doc:`geographic location  <config-setgeo>`.

``Settings`` → ``Configure Keyboard Shortcuts...``
  Open the Configure Shortcuts window which allows you to modify KStars shortcuts. You can use KStars default shortcuts scheme or define your own shortcuts scheme. In order to add a new custom shortcut to an action, you need to click on action's name and then press the ``Custom:`` checkbox.  Then click on the button next to ``Custom:`` checkbox and enter the shortcut you would like to use in KStars. You can also remove a shortcut by pressing the ``Delete`` button after you select an action from the list. KStars helps you to find an action by providing its search method; just enter the name of the action and the list will be reduced to its best matches. For example, I will give you a brief example on how to use KStars Configure Shortcuts feature:

    -  Firstly, open the Configure Shortcuts window from the ``Settings`` menu.

    -  Then select the action you would like to add a shortcut (i.e. Artificial Horizon). You can use the search method provided by KStars.  Just type “art” in the search text box and the list will be reduced to only four actions. The Artificial Horizon is the first action in the list.

    -  Now that you find your desired action, you can add a new shortcut by clicking on its name. After you click on the action name, press the ``Custom`` checkbox. There is a button next to ``Custom`` checkbox used for adding new shortcuts. By default, if an action has no custom shortcut, the “None” tag will be assigned to this button. Press this button and then add your custom shortcut. For example, for Artificial Horizon, you can use **Ctrl** + H shortcut. Hold the **Ctrl** key and press H. Your shortcut be automatically saved, thus you can use it next time when you open KStars.

``Settings`` → ``Configure KStars...``
  Modify :doc:`configuration options<config>`.

``Settings`` → ``Startup Wizard...``
  Shows the ``Setup Wizard`` dialog. It is the same window that you saw when you ran KStars for the very first time. KStars Setup Wizard will help you set up some basic options, such as your location on Earth. The first page of Setup Wizard is a welcome page and if you press ``Next`` button, you will get the ``Choose Your Home Location`` page. Here you can select your exact home location or a city near your home location if your accurate location is not present in KStars cities database. Browsing the entire list is not so efficient and thus, KStars provides you a easy-to-use method for selecting your desired city in a short time. You may filter the list of cities by the name of your city, province and country. By giving more details about your location, the list's size will reduced only to its best matches. When you highlight a city in the cities list, the ``Longitude:`` and ``Latitude:`` boxes will be updated, containing the accurate information of your selected location. When you hit the ``Next`` button, you will get the last page of KStars Setup Wizard: “Download Extra Data Files” page. Here you may download optional data files via the Internet, in order to enhance KStars, such as Messier object images, or a more complete NGC/IC catalog. Press the ``Download Extra Data...`` button to proceed. After you pressed this button, the ``Get Hot New Stuff`` dialog will appear. It is KStars Add-On Installer, which will help you to manage what extra information you added to KStars. Firstly, you can choose how the add-ons list is displayed, by pressing the ``Details view mode`` or ``Icons view`` mode button. You may also order the list by various criteria like: newest, rating, most downloads or installed. This can be easily done by selecting an option using the radio button. You can also make searches using the ``Search:`` text box. Regarding the list of add-ons, you may perform several actions by selecting an add-on from the list: you can install or uninstall an add-on using the ``Install`` / ``Uninstall`` button, you can open the Details window using the ``Details`` button or you can rate an add-on by giving a number of gold stars, up to five stars.  If you want to send an email to the author of an add-on, you are able to do that by clicking on his e-mail address. Then, your default e-mail application will guide you through the sending process. After you managed your KStars add-ons, then you can close the window by pressing the ``Close`` button. You can also use the Download Extra Data Files tool later, by selecting the ``Data`` → ``Download New Data...`` menu item.

Additionally KStars has the common ``KDE Settings`` menu items, for more information read the sections about the `Settings Menu <help:/fundamentals/menus.html#menus-settings>`__ of the KDE Fundamentals.

.. _commands-help-menu:

Help Menu
----------

  KStars has the common KDE ``Help`` menu items, for more information read the section about the `Help Menu <help:/fundamentals/menus.html#menus-help>`__ of the KDE Fundamentals.

.. _commands-popup-menu:

Popup Menu
------------

  The right click popup menu is context-sensitive, meaning its content varies depending on what kind of object you click on. We list all possible popup menu items here, with the relevant object type [in brackets].

  [All]
    Identification and quick info: The top several lines are devoted to the name(s) of the object, its type and the constellation in which it lies. The magnitude is shown with the superscript 'm' if it is available. For stars, the Spectral Type is also shown here. For deep-sky objects, the dimensions, if known, are shown in arcminutes (eg: 6'×3') and the source catalog is also shown.

  [All]
    Rise, Transit, and Set times for the object on the current simulation date are shown on the next three lines.

  [All]
    ``Center & Track``: Center the display on this location, and engage tracking. Equivalent to double-clicking.

  [All]
    ``Add flag...``: Open KStars “Flag manager” window.  Here you can manage your flags and use some of KStars features. When “Flag manager” window is open for a selected object, ``Right ascension`` and ``Declination`` text boxes will be automatically filled with the coordinate values of the selected object on the Sky Map. Besides these two text boxes, you can set the ``Epoch``, add a ``Label``, set the ``Label color`` or even add an ``Icon``. To add custom icons, just add images in :literal:`\`qtpaths --paths GenericDataLocation\`/kstars/`.  File names must begin with the “flag” keyword. For example, the file “flagSmall_red_cross.gif” will be shown as Small red cross in the combo box. After you set up the information of the new flag, you can add it to the flags list using the ``Add`` button. You may also change flags details (i.e. RA/Dec, label or icon) and then save the new ones by pressing the ``Save changes`` button. Using the Flag manager, you can easily center an object in Map or in Telescope, by pressing ``Center in Map`` or ``Center in Telescope`` button. In order to delete a value from the list, just select it in the list and then press ``Delete`` button. Your flags are saved after you close current session and thus you will be able to see them everytime you will use KStars again.

  [All]
    ``Angular Distance To...``: Enter "angular distance mode". In this mode, a dotted line is drawn from the first target object to the current mouse position. When you click with the right mouse button on a second object, this will display the angular distance between the two objects near the second object. You can press the **Esc** key to exit angular distance mode without measuring an angle.

  [All]
    ``Starhop from here to``: will enable you to find a path between two points in the sky. Star hopping is a technique that uses bright stars as a guide for finding fainter objects. So if you have a bright star, you can use it as a reference to find a fainter object. Starting from your reference star, KStars will find a route to the destination, traversing a sequence of stars/patterns of stars.  The object for which you called ``Starhop from here to`` tool will be your starting point. When your starting point is established, a dotted line will appear, allowing you to decide which will be your end point. You have to move the mouse cursor to your destination object position and right click on it. Then, a dialog box will pop up, requiring you to set the FOV used for star hopping. For selecting a FOV, you need to make a choice from the FOV combo box list of values. The values you can choose include default FOV values (7x35 Binoculars, Telrad, One Degree, HST WFPC2 and 30m at 1.3cm) plus your customized FOVs. After you selected the FOV, KStars will find a route for you. Thus, the dialog box will contain a list of object used in the starhop. If KStars did not manage to find a route, then an error dialog box will be displayed, giving you a helping hand. When the Star-Hopper algorithm ends, the dialog box will contain a list of objects used in starhop route. For every object from the list, you can perform a set of actions: you can ask for details using the ``Details`` button, center selected object in the map using ``Center on map`` button or you can go to next star by pressing the ``Next`` button. Note that when go to next star, it will be automatically centered on the map. Also, Star-Hopper tool provides directions to star hop for every object of the list.

  [All]
    ``Details``: Open the :ref:`Object Details window  <tools-object-details-window>` for this object.

  [All]
    ``Attach Label``: Attach a permanent name label to the object. If the object already has a label attached, this item will read ``Remove Label``.

  [All]
    ``Add to Observing WishList``: Add the selected object to ``Observation Planner``'s Wish List. You can see the Wish List, by selecting the ``Observation`` → ``Observation Planner`` menu item. If the object is already in the Observing WishList, then this item will become ``Remove Label``.

  [Solar system objects]
    ``Add Trail``: Add a trail to current Solar system object. A star trail is the continuous path created by the star in the night sky due to the rotation of the Earth. If the object already has a trail, this item will become ``Remove Trail``.

                  [All]
                     ``Simulate eyepiece view``: Eyepiece View feature renders the view through the eyepiece of various telescope types. Firstly, an input dialog is shown, which asks you to select one of the visible FOVs to use as a FOV for the eyepiece view. The user also has the option of trying to determine it from the image (accurate if image has metadata, otherwise it will be random). After you set the FOV, the "Eyepiece Field View" window will pop up. You can easily rotate the view using the "Rotation" slider.  You can also flip and invert the view to help match the view through a telescope/camera. "Eyepiece view" tool can help you locate many objects with ease, instead of trying to work with relative positions and relative orientations. This is an important advantage, especially when you are star hopping. Note that for getting best results, time must be synced with current time in KStars, and KStars must be in horizontal coordinates mode.

  [Solar system objects]
    ``Image Resources``: gives a list of image links for current Solar system object. The images are displayed in KStars Image Viewer tool. Image Viewer tool allows you to invert the colors and save the image in your computer.

  [Solar system objects]
    ``Information Resources``: gives a list of documentation links for current Solar system object. The links are opened in your default browser.

  [All objects without Solar system objects]
    ``Show SDSS Image``: download a SDSS (Sloan Digital Sky Survey) image of the object from the Internet, and display it in the Image Viewer tool.

  [All objects without Solar system objects]
    ``Show DSS Image``: download a DSS (Digitized Sky Survey) image of the object from the Internet, and display it in the Image Viewer tool.

.. |image2| image:: /images/kstars_ekos.png
.. |image3| image:: /images/kstars_indi.png
.. |image4| image:: /images/kstars_fitsviewer.png
.. |image5| image:: /images/archive-extract.png
.. |image6| image:: /images/center_telescope.png
.. |image7| image:: /images/draw-text.png
.. |image8| image:: /images/lock-open.png
.. |image9| image:: /images/object-rotate-right.png
.. |image10| image:: /images/media-record.png
.. |image11| image:: /images/flag-red.png
.. |image12| image:: /images/flag-green.png
.. |image13| image:: /images/process-stop.png
.. |image14| image:: /images/dome-park.png
             :width: 19px

.. |image15| image:: /images/dome-unpark.png
             :width: 19px
