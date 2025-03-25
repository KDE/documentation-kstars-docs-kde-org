=====
Align
=====

.. _ekos-align-intro:

Introduction
==============

|Ekos Align Module|

The Ekos Alignment Module enables highly accurate GOTOs and can measure and correct polar alignment errors. This is possible thanks to third-party plate-solving technology. The main plate-solving software used is the StellarSolver package, which itself makes use of the offline (and online) astrometry.net, ASTAP and Watney solvers. Ekos begins by capturing an image of a star field, feeding that image to the chosen solver (e.g. see `astrometry.net <https://astrometry.net>`__, `StellarSolver <https://github.com/rlancaste/stellarsolver>`__ or `ASTAP <https://www.hnsky.org/astap>`__), and gets in return the central coordinates (RA, DEC), scale, and orientation of the image. The solver essentially performs pattern recognition against a catalog of millions of stars.  Once the coordinates are determined, the true pointing of the telescope is known.

Often, there is a discrepancy between where the telescope thinks it is looking at and where it is truly pointing. The magnitude of this discrepancy can range from a few arcminutes to a couple of degrees. Ekos can correct the discrepancy by syncing to the new coordinates, and then slewing the mount to the desired target originally requested.

Ekos also provides a Polar Alignment Assistant Tool to correct polar alignment errors. It takes three images, slewing between the images, and calculates the offset between the mount axis and polar axis. It feeds back to the user the altitude and azimuth adjustments needed to align these axes. These images are typically taken near the celestial pole (close to Polaris for Northern Hemisphere) but can work well taken from anywhere, usually starting near the meridian and slewing either East or West.

At a minimum, you need a CCD/Webcam and a telescope that supports Slew & Sync commands. Most popular commercial telescope nowadays support such commands.

.. _ekos-align-typical:

Typical use
============

Using Ekos Alignment Module, aligning your mount using the controller's 1, 2, or 3 star alignment is *not* strictly necessary, though for some mounts it is recommended to perform a rough 1 or 2 star alignment before using Ekos alignment module. If you are using EQMod, you can start using Ekos alignment module right away. A typical workflow for GOTO alignment involves the following steps:

    1. Start KStars and Ekos and connect to INDI.

    2. Unpark your mount from its home position (usually the NCP for equatorial mounts).

    3. Slew to a nearby bright star using the slew telescope command in the SkyMap using the ``Slew the telescope to the mouse-pointer position`` command.

    4. Select ``Slew to Target`` in the ``Solver Action`` on the Align page.

    5. After slew is complete, click ``Capture & Solve`` on the Align page.

Align will capture an image and try to solve it. If the solver is successful, Ekos will send a sync command to the mount and then slew to the star. The results are displayed in the ``Solution Results`` tab along with a bullseye diagram that shows the offset the reported telescope coordinates (i.e. where the telescope *thinks* it is looking vs. its actual pointing position in the sky as determined by the solver). Align will stop if it is within the desired error tolerance, otherwise it will repeat the Slew/Capture/Solve/Sync process until it is within tolerance.

Each time the solver is executed and returns successful results, Ekos can run on the following actions:

    -  ``Sync``: Syncs the telescope coordinates to the solution coordinates.

    -  ``Slew to Target``: Syncs the telescope coordinates to the solution coordinates and then slew to the target.

    -  ``Nothing``: Just solve the image and display the solution coordinates.

.. _ekos-align-config-stellar-opt:

Configure StellarSolver Options
================================

|StellarSolver Options|

To use the solvers, you must first configure the StellarSolver options. The above page is displayed when clicking on the ``Options`` button on the lower right of the Align page, then selecting the ``StellarSolver Options`` tab.  Start with the ``Builtin method for solver Source Extraction method`` so that each solver uses its preferred star-extraction code. ``For Solving Method`` we recommend choosing ``Internal Solver`` to use StellarSolver's copy of the Astrometry.net code, or choose ``Local ASTAP`` if you prefer that. The online astrometry solver is accurate, but can take a long time to solve because of all the data transfer required. For ``Options Profile``, start with the ``1-Default`` profile.

There are two other minor options. ``WCS`` or World-Coordinate-System is a system for embedding equatorial coordinate information within the image. When you view a solved image, you can hover it and view the coordinate for each pixel. You can also click anywhere in the image and command to the telescope to slew there. It is highly recommended to keep this option on. ``Overlay`` overlays captured images unto the sky map of KStars.

.. _ekos-align-config-stellar-ext:

Configure StellarSolver External Programs
==========================================

|StellarSolver External Programs|

This is only required if you choose one of the external programs for your ``Solving Method``. If you choose ``Internal Solver``, then it is not necessary.

You will need to make sure the paths are correct for the solver you choose. The top menu item ``select to load one of the default sets`` usually configures the boxes correctly.

.. _ekos-align-config-stellar-scale:

Configure StellarSolver Scale and Position
===========================================

|StellarSolver Scale and Position|

This page tells Ekos whether you want to constrain your plate-solving search by scale or position.

Scale can be the image width in degrees (``dw``), the image width in arc-minutes (``aw``), or the pixel width in arc-seconds (``app``). All should work, but arc-seconds per pixel is recommended. Typically you want to use this constraint for faster solving, so we recommend you check this box. The system doesn't require that the scale be exactly right--it allows deviations of 10-20%. However, frequently issues related to solving are due to an inaccurate scale being used. Therefore, if you have plate-solving problems, you may want to uncheck ``Use Scale`` until those issues are resolved.  This will likely result in longer solving times. ``Auto-update`` will automatically fill the scale box with the scale found in the most-recent successful solve.

The RA and DEC positions are usually filled in from the position the telescope thinks it is pointing. Naturally, the system doesn't require an exactly correct positional constraint--afterall the purpose of plate-solving is to find that position. The maximum distance in degrees from the specified position to the actual position is given by the ``Radius`` field. Plate-solving will fail if the specified position is further away. Typically you want to enable ``Use Position`` for faster solving, so we recommend you check this box. However, frequently issues related to solving are due to using a poor positional estimate (e.g. the telescope is significantly misaligned). Therefore, if you have plate-solving problems, you may want to uncheck ``Use Position`` until those issues are resolved. As mentioned, this will result in longer solving times. ``Auto-update`` will fill the position box with the position found in the most-recent successful solve. However, a slew will update the position to the position where the telescope thinks it is pointing after the slew.

.. _ekos-align-config-stellar-profile:

Configure StellarSolver Profiles
=================================

|StellarSolver Profiles|

This applies if you are using the (recommended) ``Internal Solver`` ``Solving Method``.

You can choose an ``Options`` Profile on the ``StellarSolver Options`` tab. Profiles are simply collections of parameters to configure the performance of the star-extraction and plate-solving system inside of StellarSolver. The ``1-Default`` profile is the recommended one to start with. There are a few other possible profiles such as ``Large Scale Solving``, ``Small Scale Solving``, and ``Single Thread Solving``.

In the ``Align Options Profile Editor`` tab you can view and edit profiles. There are many parameters, most of which you need not change to solve issues. There are 3 types of parameters.

    -  The top section labelled ``Sextractor`` Parameters (with column headings ``Extraction Parameters``, ``Deblending Params``, and ``Photometry Params``) are star extraction parameters--that is those that help find stars in your image.

    -  The second section labelled ``Star Filtering Parameters`` filters/reduces the number of stars extracted before sending the list to either the plate-solver (when aligning or polar-aligning), or to autofocus or the internal guider (when just a list of stars is needed).

    -  The third section labelled ``Astrometry Parameters`` adjusts the performance of plate solving.

All the input fields have tooltips that are displayed if you hover your mouse over the input box.

You can make changes to the values and save the profile if you like, or restore the profile's original values.

.. _ekos-align-sextra-param:

Star-Extraction Parameters
---------------------------

The column headings are links to the Sextractor manual which is the main source for these parameters. View those links to find details on all the parameters. We will touch upon some of the parameters you might consider adjusting. However, it's probably best not to get into the weeds of modifying most of these values.

    -  ``Thresh Multiple`` and ``Thresh Offset`` relate to how sensitive the system will be to pixel values. The level of the background is multiplied by ``Thresh Multiple`` and then ``Thresh Offset`` is added to that.  If a pixel's value exceeds the result, then it may be used to detect a star. Therefore, lower values (especially for multiple) may cause even dim pixels to be detected as stars. Higher values will reduce the number of stars detected.

    -  ``Min Area`` is the minimum area for a star detection--area is in square pixels where all pixels have higher-than-threshold pixel values. If you are detecting small noise spikes as stars, you might want to increase this. If you are not detecting desired smaller real stars, perhaps your ``Min Area`` is too high.

    -  ``Conv FWHM`` should be adjusted to roughly the seeing in your area in pixels. The image is smoothed by this amount before star detection is initiated.

.. _ekos-align-sfilt-param:

Star-Filtering Parameters
--------------------------

This filtering is done for the sake of speed mostly, as well as for removing clipped stars, or very elliptical objects which might be galaxies. We will touch upon some of the parameters you might consider adjusting. Zero values for these parameters disable the filter. However, once again it's probably best not to get into the weeds of modifying most of these values.

    -  ``Initial Keep`` and ``Stars Keep #`` relates to the number of stars returned by the system. The system will initially run its detection algorithm and find some number of possible detections. It will filter that list, keeping only the ``Initial Keep`` brightest stars. It will then run the rest of the filtering, including computing the HFR of all those stars and finally only return a list of ``Stars Keep #`` stars.  None of the uses (alignment, autofocus, guiding) of StellarSolver require thousands of stars to be able to do their job, and the more stars processed the slower the operation. An initial list of 1000 stars and a few hundred returned stars should be sufficient for most applications.

    -  ``Max Size`` and ``Min Size`` filter stars by their sizes (pixel diameters), and are similar in usage to ``Min Area`` above.

    -  ``Max Ellipse`` specifies how elliptical a star can be before being removed. 2 would mean the larger axis could be twice as large as the smaller axis.

    -  ``Cut Brightest`` and ``Cut Dimmest`` remove the X% brightest or dimmest stars from consideration. ``Sat Limit`` removes stars whose pixel values exceed that percentage of the maximum pixel value--to remove saturated stars.

.. _ekos-align-platesolve-param:

Plate-Solving Parameters
-------------------------

These plate-solving parameters mostly relate to computation resources.

    -  ``Search Radius`` is the distance from the position estimate in degrees that may be searched if ``Use Position`` is checked.

    -  ``Maximum Time`` is the maximum number of seconds that the plate-solving will run before it times out.

.. _ekos-align-download-index:

Download Index Files
======================

Index files are required if you choose the ``Internal Solver`` or ``Local Astrometry`` ``Solving Method``.

For offline (and remote) solvers, index files are necessary for the solver to work. The complete collection of index files is huge (over 30 GB), but you only need to download what is necessary for your equipment setup. Index files are sorted by the Field-Of-View (FOV) range they cover. There are two methods to fetch the necessary index files: The new download support in Align module, and the old manual way.

.. _ekos-align-auto-download:

Automatic Download
---------------------

|Astrometry.net Indexes Download|

Automatic download is only available for Ekos users on Linux® & Mac® OS. For Windows® users, please download ANSVR solver.

To access the download page, click the ``Options`` button in the :doc:`Align module <ekos-align>` and then select ``Astrometry`` Index Files tab. The page displays the current FOV of your current setup and below it a list of available and installed index files. Three icons are used to designate the importance of index files given your current setup as follows:

    -  |image2| Required

    -  |image3| Recommended

    -  |image4| Optional

You must download all the required files, and if you have plenty of hard drive space left, you can also download the recommended indexes. If an index file is installed, the checkmark shall be checked, otherwise check it to download the relevant index file. Please only download one file at a time, especially for larger files. You might be prompted to enter the administrator password (default in StellarMate is **``smate``**) to install the files. Once you installed all the required files, you can begin using the offline astrometry.net solver immediately.

.. _ekos-align-manual-download:

Manual Download
-----------------

You need to `download <http://data.astrometry.net>`__ and install the necessary index files suitable for your telescope+CCD field of view (FOV). You need to install index files covering 100% to 10% of your FOV. For example, if your FOV is 60 arcminutes, you need to install index files covering skymarks from 6 arcminutes (10%) to 60 arcminutes (100%). There are many online tools to calculate FOVs, such as `Starizona Field of View Calculator <http://starizona.com/acb/ccd/calc_pixel.aspx>`__.

.. table:: **Table 5.1. Index Files**
   :name: ekos-align-index-files

   +-------------------+------------------+-----------------------------+
   | Index Filename    | FOV (arcminutes) | Debian Package              |
   +===================+==================+=============================+
   | index-4219.fits   | 1400 - 2000      | `astrometry-data-4208-4     |
   |                   |                  | 219 <http://data.astrometry |
   |                   |                  | .net/debian/astrometry-data |
   |                   |                  | -4208-4219_0.45_all.deb>`__ |
   +-------------------+------------------+                             +
   | index-4218.fits   | 1000 - 1400      |                             |
   +-------------------+------------------+                             +
   | index-4217.fits   | 680 - 1000       |                             |
   +-------------------+------------------+                             +
   | index-4216.fits   | 480 - 680        |                             |
   +-------------------+------------------+                             +
   | index-4215.fits   | 340 - 480        |                             |
   +-------------------+------------------+                             +
   | index-4214.fits   | 240 - 340        |                             |
   +-------------------+------------------+                             +
   | index-4213.fits   | 170 - 240        |                             |
   +-------------------+------------------+                             +
   | index-4212.fits   | 120 - 170        |                             |
   +-------------------+------------------+                             +
   | index-4211.fits   | 85 - 120         |                             |
   +-------------------+------------------+                             +
   | index-4210.fits   | 60 - 85          |                             |
   +-------------------+------------------+                             +
   | index-4209.fits   | 42 - 60          |                             |
   +-------------------+------------------+                             +
   | index-4208.fits   | 30 - 42          |                             |
   +-------------------+------------------+-----------------------------+
   | index-4207-*.fits | 22 - 30          | `astrometry-d               |
   |                   |                  | ata-4207 <http://data.astro |
   |                   |                  | metry.net/debian/astrometry |
   |                   |                  | -data-4207_0.45_all.deb>`__ |
   +-------------------+------------------+-----------------------------+
   | index-4206-*.fits | 16 - 22          | `astrometry-d               |
   |                   |                  | ata-4206 <http://data.astro |
   |                   |                  | metry.net/debian/astrometry |
   |                   |                  | -data-4206_0.45_all.deb>`__ |
   +-------------------+------------------+-----------------------------+
   | index-4205-*.fits | 11 - 16          | `astrometry-d               |
   |                   |                  | ata-4205 <http://data.astro |
   |                   |                  | metry.net/debian/astrometry |
   |                   |                  | -data-4205_0.45_all.deb>`__ |
   +-------------------+------------------+-----------------------------+
   | index-4204-*.fits | 8 - 11           | `astrometry-d               |
   |                   |                  | ata-4204 <http://data.astro |
   |                   |                  | metry.net/debian/astrometry |
   |                   |                  | -data-4204_0.45_all.deb>`__ |
   +-------------------+------------------+-----------------------------+
   | index-4203-*.fits | 5.6 - 8.0        | `astrometry-d               |
   |                   |                  | ata-4203 <http://data.astro |
   |                   |                  | metry.net/debian/astrometry |
   |                   |                  | -data-4203_0.45_all.deb>`__ |
   +-------------------+------------------+-----------------------------+
   | index-4202-*.fits | 4.0 - 5.6        | `astrometry-d               |
   |                   |                  | ata-4202 <http://data.astro |
   |                   |                  | metry.net/debian/astrometry |
   |                   |                  | -data-4202_0.45_all.deb>`__ |
   +-------------------+------------------+-----------------------------+
   | index-4201-*.fits | 2.8 - 4.0        | `astrometry-data-           |
   |                   |                  | 4201-1 <http://data.astrome |
   |                   |                  | try.net/debian/astrometry-d |
   |                   |                  | ata-4201-1_0.45_all.deb>`__ |
   |                   |                  | `astrometry-data-           |
   |                   |                  | 4201-2 <http://data.astrome |
   |                   |                  | try.net/debian/astrometry-d |
   |                   |                  | ata-4201-2_0.45_all.deb>`__ |
   |                   |                  | `astrometry-data-           |
   |                   |                  | 4201-3 <http://data.astrome |
   |                   |                  | try.net/debian/astrometry-d |
   |                   |                  | ata-4201-3_0.45_all.deb>`__ |
   |                   |                  | `astrometry-data-           |
   |                   |                  | 4201-4 <http://data.astrome |
   |                   |                  | try.net/debian/astrometry-d |
   |                   |                  | ata-4201-4_0.45_all.deb>`__ |
   +-------------------+------------------+-----------------------------+
   | index-4200-*.fits | 2.0 - 2.8        | `astrometry-data-           |
   |                   |                  | 4200-1 <http://data.astrome |
   |                   |                  | try.net/debian/astrometry-d |
   |                   |                  | ata-4200-1_0.45_all.deb>`__ |
   |                   |                  | `astrometry-data-           |
   |                   |                  | 4200-2 <http://data.astrome |
   |                   |                  | try.net/debian/astrometry-d |
   |                   |                  | ata-4200-2_0.45_all.deb>`__ |
   |                   |                  | `astrometry-data-           |
   |                   |                  | 4200-3 <http://data.astrome |
   |                   |                  | try.net/debian/astrometry-d |
   |                   |                  | ata-4200-3_0.45_all.deb>`__ |
   |                   |                  | `astrometry-data-           |
   |                   |                  | 4200-4 <http://data.astrome |
   |                   |                  | try.net/debian/astrometry-d |
   |                   |                  | ata-4200-4_0.45_all.deb>`__ |
   +-------------------+------------------+-----------------------------+

The Debian packages are suitable for any Debian-based distribution (Ubuntu, Mint, etc.). If you downloaded the Debian Packages above for your FOV range, you can install them from your favorite package manager, or via the following command:

**sudo dpkg -i astrometry-data-*.deb**

On the other hand, if you downloaded the FITS index files directly, copy them to ``/usr/share/astrometry`` directory.

.. note::

    It is recommended to use a download manager as such `DownThemAll! <https://addons.mozilla.org/en-US/firefox/addon/downthemall/>`__ for Firefox to download the Debian packages as browsers' built-in download manager may have problems with download large packages.

.. _ekos-align-get-astrometry:

Optionally get astrometry.net
==============================

This is only required if you choose the ``Local Astrometry`` option for ``Source Extraction Method`` which is no longer recommended.

.. note::

    Astrometry.net is already shipped with StellarMate so there is no need to install it. Index files from 16 arcminutes and above (4206 to 4019) are included with StellarMate. For any additional index files, you need to install them as necessary. To use Astrometry in StellarMate from a remote Ekos on Linux®/Windows®/Mac® OS, make sure to select ``Remote`` option in Ekos Alignment Module. Furthermore, make sure that the ``Astrometry`` driver is selected in your equipment profile.

|Ekos Remote Astrometry|

Windows®

    To use astrometry.net under Windows®, you need to download and install the `ANSVR Local Astrometry.net solver <https://adgsoftware.com/ansvr/>`__. The ANSVR mimics the astrometry.net online server on your local computer; thus the internet not required for any astrometry queries.

    After installing the ANSVR server and downloading the appropriate index files for your setup, make sure ANSVR server is up and running and then go to Ekos Alignment options where you can simply change the ``API URL`` to use the ANSVR server as illustrated below:

    |ANSVR Parameters|

    In Ekos Align module, you must set the solver type to ``Online`` so that it uses the local ANSVR server for all astrometry queries. Then you can use the align module as you would normally do.

    Remember as indicated above that StellarMate *already* includes astrometry.net. Therefore, if you would like to use StellarMate remotely to solve your images, simply change solver type to ``Remote`` and ensure that your equipment profile includes **Astrometry** driver which can be selected under the ``Auxiliary`` dropdown.  This is applicable to all operating systems and not just Windows®.

Mac® OS
    Astrometry.net is already included with KStars for Mac® OS, so no need to install it.

Linux®
    Astrometry.net is already included with KStars bleeding version. But if astrometry is not installed, then you can install it by running the following command under Ubuntu™:

    **sudo apt-get install astrometry.net**

.. _ekos-align-how-to-use:

How to Use?
============

Ekos Align Module offers multiple functions to aid you in achieving accurate GOTOs. For some mounts it is useful to start your session with your mount in home position with the telescope tube looking directly at the celestial pole. For users in Northern Hemisphere, point the telescope as close as possible to Polaris. It is not necessary to perform 2 or 3 star alignments, but it can be useful for some mount types. Make sure your camera is focused.

At the top left of the Align page you can find two solver commands, and two actions to take given the solver solution.

    -  ``Capture & Solve``: Capture an image and determine exactly where in the sky the telescope is pointing.  The astrometry results include the equatorial coordinates (RA & DEC) of the center of the captured image and the pixel scale and field rotation.  Depending on the Solver Action settings, the results can be used to Sync the mount or Sync and then Slew to the target location. For example, suppose you slewed the mount to Vega then used *Capture & Solve*. If the actual telescope location is different from Vega, it will be first synced to the solved coordinate and then Ekos shall command the mount to slew to Vega. After slew is complete, the Alignment module will repeat Capture & Solve process again until the error between reported and actual position falls below the accuracy thresholds (30 arcseconds by default).

    -  ``Load & Slew``: Load a FITS or JPEG file, solve it, and then slew to it.

.. warning::

    **Never** solve an image at or near the celestial pole (unless Ekos Polar Alignment Assistant Tool is used).  Slew at least 20 degrees away from the celestial pole before solving the first image. Solving very close to the poles will make your mount pointing worse, so avoid it.

.. _ekos-align-align-settings:

Alignment Settings
====================

Before you begin the alignment process, select the desired optical train. You can explore astrometry.net options that are passed to the astrometry.net solver each time an image is captured:

    -  ``Accuracy``: Acceptable difference between the desired target position and the solved coordinates from the captured image. If the difference exceeds this many arc-seconds, then the system will continue to capture, solve and slew until the solved position is close enough to the target position.

    -  ``Train``: Select the Optical Train which will be used to capture the image to be aligned. It is also used to compute the image scale.

    -  ``Exposure``: Exposure duration in seconds.

    -  ``Bin``: The binning of the image before solving.

    -  ``Gain/ISO``: The camera gain or ISO.

    -  ``Filter/Use Current``: The filter to use when capturing the image. ``Use Current`` uses whatever filter is currently active.

    -  ``Dark``: Whether to use the dark-image subtraction scheme before analyzing the captured image.

.. _ekos-align-polar-align:

Polar Alignment
=================   

When setting up a German Equatorial Mount (GEM) for imaging, a critical aspect of capturing long-exposure images is to ensure proper polar alignment. A GEM mount has two axis: Right Ascension (RA) axis and Declination (DE) axis.  Ideally, the RA axis should be aligned with the celestial sphere polar axis. A mount's job is to track the star's motion around the sky, from the moment they rise at the eastern horizon, all the way up across the median, and westward until they set.

.. video:: /videos/polar_align.webm
   :caption: Polar Alignment Assistant 
   :width: 100%

In long exposure imaging, a camera is attached to the telescope where the image sensor captures incoming photons from a particular area in the sky. The incident photons have to strike the same photo-site over and over again if we are to gather a clear and crisp image. Of course, actual photons do not behave in this way: optics, atmosphere, seeing quality all scatter and refract photons in one way or another. Furthermore, photons do not arrive uniformly but follow a Poisson distribution. For point-like sources like stars, a point spread function describes how photons are spatially distributed across the pixels. Nevertheless, the *overall* idea we want to keep the source photons hitting the same pixels. Otherwise, we might end up with an image plagued with various trail artifacts.

|Polar Alignment|

Since mounts are not perfect, they cannot perfectly keep track of object as it transits across the sky. This can stem from many factors, one of which is the misalignment of the mount's Right Ascension axis with respect to the celestial pole axis. Polar alignment removes one of the biggest sources of tracking errors in the mount, but other sources of error still play a factor. If properly aligned, some mounts can track an object for a few minutes with the only deviation of 1-2 arcsec RMS.

However, unless you have a top of the line mount, then you'd probably want to use an autoguider to keep the same star locked in the same position over time. Despite all of this, if the axis of the mount is not properly aligned with the celestial pole, then even a mechanically-perfect mount would lose tracking with time. Tracking errors are proportional to the magnitude of the misalignment. It is therefore very important for long exposure imaging to get the mount polar aligned to reduce any residual errors as it spans across the sky.

Before starting the process, point the mount as close as possible to the celestial pole with the counterweights down.  If you are living in the Northern Hemisphere, point it as close as possible to Polaris. If Polaris is not visible (e.g. blocked by trees or buildings) you may point elsewhere, preferably near the Meridian. Make sure there is at least 30-60 degrees of sky viewable in an arc East or West of the Meridian from the position you choose. Select the direction of free sky, the number of degrees for each of two slews, the mount slew speed, and whether the mount will be slewing automatically (recommended) or manually.

The tool works by capturing and solving three images. After capturing each, the mount rotates by the fixed amount you entered and another image is captured and solved. If you choose manual, you will need to slew the mount by roughly the angle chosen.

|Polar Alignment Assistant|

.. _ekos-align-plate-solve-corr:

Plate Solve Correction Scheme
------------------------------

The images below show the workflow when the *Plate Solve* correction technique is used. The image below shows a display after the 3 measurement images are captured and solved. It shows an error of almost 18' in altitude and that the mount's axis needs to be moved up. Similarly it shows an azimuth error of almost 15' and that the axis needs to be moved to the right (as viewed from behind the telescope).

|Polar Alignment Assistant, Plate Solve Workflow 1|

If your error is low enough (e.g. less than an arc-minute) then you don't need to make any adjustments.  Simply press stop and you're done.

If you will be making corrections to your mount's axis, you should select the adjustment approach (we're using Plate Solve in this example), and how often the system should recapture images to re-measure the polar alignment error. The refresh interval should be frequent, but it doesn't make sense to make it faster that your CPU can capture and plate-solve the images. We're using 2s in this example. Then press the ``Refresh`` button to begin the correction process.

The system will capture images, and re-estimate the polar alignment error after each image. You can try to reduce the error by adjusting the Altitude and Azimuth correction knobs on your mount. The image below shows the screen after the altitude error has been almost zeroed.  See the difference between the *Measured Error* row, which shows the originally measured error after the original 3 captures, and the *Updated Error* row which shows the current error estimate.

|Polar Alignment Assistant, Plate Solve Workflow 2|

Below the user has also adjust Azimuth to reduce the error further. Now the error is very low and the process is done. The user should press the stop button.

|Polar Alignment Assistant, Plate Solve Workflow 3|

.. _ekos-align-move-star-corr:

Move Star Correction Scheme
----------------------------

We also have an alternative schemes for correcting polar alignment. Two variations are *Move Star & Calc Error* and *Move Star*. When you select this scheme, the system place a yellow/green/violet triangle on the screen. The triangle can be moved by clicking near a star, and the yellow/violet corner is moved to that star. In this scheme the user corrects polar alignment by first adjusting the mount's azimuth knob so that the selected star moves along the yellow side of the triangle. Once the star is near the next vertex, the azimuth knob should be adjusted so that the star moves along the green side of the triangle. Once the star is moved to the green/violet vertex, the mount is polar aligned, and the user can click *stop*.

The difference between *Move Star & Calc Error* and *Move Star* is that in the former, the system attempts to track the star the user has selected, and places a circle around that star. In that scheme it also attempts to update the *Updated Err* row. If the star tracking isn't reliable, simply ignore it or use the *Move Star* scheme and move the star by-eye until it's close to the final target. An example of using this technique is shown in this video: https://www.youtube.com/watch?v=iOp7hrxw0oU

.. |Ekos Align Module| image:: /images/ekos_astrometry.png
.. |StellarSolver Options| image:: /images/ekos_stellarsolver_options.png
.. |StellarSolver External Programs| image:: /images/ekos_stellarsolver_external.png
.. |StellarSolver Scale and Position| image:: /images/ekos_stellarsolver_scale.png
.. |StellarSolver Profiles| image:: /images/ekos_stellarsolver_profiles.png
.. |Astrometry.net Indexes Download| image:: /images/astrometry_indexes_settings.png
.. |image2| image:: /images/security-high.png
.. |image3| image:: /images/security-medium.png
.. |image4| image:: /images/security-low.png
.. |Ekos Remote Astrometry| image:: /images/ekos_remote_astrometry.png
.. |ANSVR Parameters| image:: /images/astrometry_windows_ansvr.png
.. |Polar Alignment| image:: /images/alignment_polaris.png
.. |Polar Alignment Assistant| image:: /images/polar_assistant_main2.png
.. |Polar Alignment Assistant, Plate Solve Workflow 1| image:: /images/polar_assistant_ps1.png
.. |Polar Alignment Assistant, Plate Solve Workflow 2| image:: /images/polar_assistant_ps2.png
.. |Polar Alignment Assistant, Plate Solve Workflow 3| image:: /images/polar_assistant_ps3.png
