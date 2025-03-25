.. _indi-indi-setup:

INDI Setup
===========

            KStars can control local and remote devices seamlessly via
            the :ref:`INDI <indi-faq-what-is-indi>` server/client
            architecture. INDI devices may be run in three different
            modes:

               1. ``Local``: The local mode is the most common and is used
                  to control local device (i.e. a device attached to
                  your machine).

               2. ``Server``: The server mode establishes an INDI server for
                  a particular device and waits for connections from
                  remote clients. You cannot operate server devices, you
                  can only start and shut them down.

               3. ``Client``: The client mode is used to connect to remote
                  INDI servers running INDI devices. You can control
                  remote devices seamlessly like local devices.

            You can run local device, establish INDI servers, and
            connect to remote clients from the ``Tools`` → ``Devices`` → ``Device
            Manager...`` menu item.

            Here is a screenshot of the ``Device Manager`` window:

                  |Start device drivers|

            You can run devices by browsing the device tree, selecting a
            specific device, and then clicking on the ``Run Service``
            button. You can select the operation mode, either local or
            server as defined above. The port number is randomly
            generated between the range from 7624 to 10,000. To specify
            a port, click on the port column next to the desired driver.
            KStars allows multiple drivers to run under one INDI server,
            and hence one port. Select multiple drivers then press ``Run
            Service`` button.

            To control remote devices, refer to the :doc:`remote device
            control <indi-remote-control>` section.

.. |Start device drivers| image:: /images/devicemanager.png
