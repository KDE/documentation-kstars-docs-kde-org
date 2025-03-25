===============================
INDI Frequently Asked Questions
===============================

.. _indi-faq-what-is-indi:

What is INDI?
===============

INDI is the `Instrument-Neutral-Distributed-Interface <https://indilib.org>`__ control protocol developed by **Elwood C. Downey** of `ClearSky Institute <https://www.clearskyinstitute.com/>`__. KStars employs device drivers that are compatible with the INDI protocol. INDI has many advantages including loose coupling between hardware devices and software drivers. Clients that use the device drivers (like KStars) are completely unaware of the device capabilities. In run time, KStars communicates with the device drivers and builds a completely dynamical GUI based on services provided by the device. Therefore, new device drivers can be written or updated and KStars can take full advantage of them without any changes on the client side.

.. _indi-faq-id01:

Do you plan to support more devices?
=====================================

Yes. We plan to support major CCD cameras and focusers and extend support
for more telescopes. If you would like INDI to support a particular device,
please send an email to *indi-devel@lists.sourceforge.net*

.. _indi-faq-id02:

What operations does KStars provide to control the telescope?
========================================================================

It depends on the particular telescope you're running, but the minimum three operations are :command:`Slew`, :command:`Track`, and :command:`Sync`, which you can issue directly from the sky map. Your telescope must be aligned for those operations to perform correctly. Some telescopes offer you more operations like site management, slew modes, focusing, parking, and more. You can access the telescopes extended features from the ``Tools`` → ``Devices`` → ``INDI Control Panel...`` menu item.

.. _indi-faq-id03:

What's the difference between :command:`Slew`, :command:`Track`, and :command:`Sync` exactly?
==============================================================================================

The command :command:`Slew` orders the telescope to move to a particular target, and once the telescope reaches its target, the telescope keeps tracking that target at a *sidereal* rate (i.e., the rate at which stars move across the sky). This works well for stars, Messier objects, and about everything outside our solar system. But solar system objects travel differently across the sky and so the telescope must :command:`Track` the objects as they move.

Therefore, you need to issue a track command if you want to track an object with non-sidereal motion.
On the other hand, :command:`Sync` is used to synchronize the telescope's internal coordinates
with that of an object you select.

.. _indi-faq-id04:

Can I control my telescope remotely?
=====================================

Yes. You can start an INDI server on the machine connected to your telescope and the server will listen
to requests from KStars clients. Once you're connected, you can control your telescope directly from
the sky map. This procedure is described in detail in the :doc:`Remote device control <indi-remote-control>` section.

.. _indi-faq-id05:

When I try to ``Connect``, KStars reports that the telescope is not connected to the serial/USB port. What can I do?
===========================================================================================================================

This message is triggered when KStars cannot communicate with the telescope. Here are few things you can do:

    #. Check that you have both reading and writing permission for the port you are trying to connect to.

    #. Check the connection cable, make sure it is in good condition and test it with other applications.

    #. Check your telescope power, make sure the power is on and that the telescope is getting enough power.

    #. Select the ``Tools`` → ``Devices`` → ``INDI Control Panel...`` menu item and set the correct
       port in the ``INDI Control Panel`` dialog. The default device is ``/dev/ttyS0``

    #. Restart KStars and retry again.

.. _indi-faq-id06:

KStars reports that the telescope is online and ready, but I cannot find the telescope's crosshair, where is it?
===========================================================================================================================

KStars retrieves the telescopes RA and DEC coordinates upon connection. If your
alignment was performed correctly, then you should see the crosshair around your target
in the Sky Map. However, the RA and DEC coordinates provided by the telescope may be
incorrect (even below the horizon) and you need to :ref:`Sync <indi-telescope-setup-indi-sync>`
your telescope to your current target. You can use the right-click menu to center and track
the telescope crosshair in the sky map.

.. _indi-faq-id07:

The telescope is moving erratically or not moving at all. What can I do?
=========================================================================

This behavior is mostly due to incorrect settings, please verify the following check list:

    #. Is the telescope aligned?

    #. Is the telescope alignment mode correct? Use ``INDI Control Panel`` to check
       and change these settings (``Alt/Az,Polar, Land``).

    #. Are the telescope's time and date settings correct?

    #. Are the telescope's longitude and latitude settings correct?

    #. Is the telescope's UTC offset correct?

    #. Are the telescope's RA and DEC axis locked firmly?

    #. Is the telescope's N/S switch (when applicable) setup correctly for your hemisphere?

    #. Is the cable between the telescope and computer in good condition?

If you think all settings are correct but the telescope still moves erratically or not at all,
then please send a report to indi-devel@lists.sourceforge.net.
