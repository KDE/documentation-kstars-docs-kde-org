=================================================
Chapter 8. Command-Line mode for Image Generation
=================================================

         You can use KStars to generate an image of the sky without
         actually launching the GUI portion of the program. To use this
         feature, start KStars from a command prompt using arguments to
         specify the filename for the image, as well as the desired
         image dimensions:

         .. code::

            kstars --dump [--filename kstars.png] [--height
            640] [--width 480] [--script myscript.kstars]
            [--date "4 July 1976 12:30:00"]

         If no filename is specified, it generates a file named
         ``kstars.png``. It will attempt to generate an image that
         matches the extension of your filename. The following
         extensions are recognized: “png”, “jpg”, “jpeg”, “gif”, “pnm”,
         and “bmp”. If the filename extension is not recognized, it
         defaults to the PNG image type.

         Likewise, if the image width and height are not specified, they
         default to 640 and 480, respectively.

         By default, KStars will read in the options values stored in
         your ``$KDEHOME/share/config/kstarsrc`` file to determine where
         the image will be centered, and how it is rendered. This means
         you need to run KStars in normal GUI mode, and exit the program
         when it is set up with the desired options for the generated
         images. This is not very flexible, so we also provide the
         ability to execute a KStars D-Bus script to set the scene
         before generating the image. The filename you specify as the
         script argument should be a valid KStars D-Bus script, such as
         one created with the :doc:`Script Builder
         Tool <tool-scriptbuilder>`. The script can be used to
         set where the image is pointing, set the geographic location,
         set the time and date, change the Zoom level, and adjust other
         view options. Some of the D-Bus functions make no sense in
         non-GUI mode (such as ``waitForKey()``); if these functions are
         encountered while parsing the script, they are simply ignored.

         By default, KStars will use the system CPU time and date for
         generating the image. Alternatively, you may specify a time and
         date with the “--date” argument. You can also use this argument
         for specifying the startup date in normal GUI mode.

