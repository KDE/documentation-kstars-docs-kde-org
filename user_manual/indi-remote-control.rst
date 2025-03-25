=====================
Remote Device Control
=====================

         KStars provides a simple yet powerful layer for remote device
         control. A detailed description of the layer is described in
         the INDI `white
         paper <https://www.clearskyinstitute.com/INDI/INDI.pdf>`__.

         You need to configure both the server and client machines for
         remote control:

            1. ``Server``: To prepare a device for remote control, follow
               the same steps in the
               :ref:`local/server <indi-indi-setup>` setup.
               When you start a device service in the ``Device Manager``, a
               port number is displayed under the ``Port`` column. In
               addition to the port number, you also need the hostname
               or IP address of your server.

            2. ``Client``: Select the ``Tools`` → ``Devices`` → ``Device Manager...``
               menu item and you can add, modify, or delete hosts into
               ``Client`` tab. Add a host by clicking on the ``Add`` button.
               Enter the hostname/IP address of the server in the ``Host``:
               field, and enter the port number obtained from the
               *server* machine in step 1.

               |image2|

         After you add a host, right click on the host to ``Connect`` or
         ``Disconnect``. If a connection is established, you can control the
         telescope from the ``Sky map`` or ``INDI Control Panel`` exactly as
         described in the :ref:`local/server <indi-indi-setup>`
         section. It is as easy at that.

.. _indi-remote-control-running-an-indi-server-from-the-command-line:

Running an INDI server from the command line
=============================================

            While KStars allows you to easily deploy an INDI server; you
            can launch an INDI server from the command line.

            Since INDI is an independent backend component, you can run
            an INDI server on a host without KStars. INDI can be
            compiled separately to run on remote hosts. Furthermore,
            device drivers log messages to ``stderr`` and that can be
            helpful in a debugging situation. The syntax for INDI server
            is as following:

            $ **indiserver** [options] driver [``driver`` ...]

            .. code:: 

               Options:
                -l d     : Log driver messages to <d>/YYYY-MM-DD.islog
                -m m     : Kill client if gets more than this many MB behind, default 128.
                -d m     : Drop streaming blobs if client gets more than this many MB behind, default 5. 0 to disable.
                -p p     : Alternate IP port, default 7624.
                -r r     : Maximum driver restarts on error, default 10.
                -f path  : Path to fifo for dynamic startup and shutdown of drivers.
                -v       : Show key events, no traffic.
                -vv      : -v + key message content.
                -vvv     : -vv + complete xml.
                driver   : Executable or [device]@host[:port]

            For example, if you want to start an INDI server running an
            LX200 GPS driver and listening to connections on port 8000,
            you would run the following command:

            $ **indiserver** -p 8000 ``lx200gps``

.. _indi-remote-control-secure-remote-operation:

Secure Remote Operation
========================

            Suppose we want to run an indiserver with INDI drivers on a
            remote host, ``remote_host``, and connect them to KStars
            running on the local machine.

            From the local machine log onto the remote host,
            ``remote_host``, by typing:

            $ **ssh** -L ``local_port``:``remote_host``:``remote_port``

            This binds the ``local_port`` on the local machine to the
            ``remote_port`` on the ``remote_host``. After logging in,
            run indiserver on the remote host:

            $ **indiserver** -p ``remote_port`` [``driver``...]

            Back on the local machine, start KStars then open the ``Device
            Manager`` and add a host under the ``Client`` tab. The host should
            be the local host (usually 127.0.0.1) and the port number
            should be the ``local_port`` used in the steps above.
            Right-click on the host and select ``Connect`` from the popup
            menu. KStars will connect to the remote INDI server
            securely. The host information will be saved for future
            sessions.

.. |image2| image:: /images/indiclient.png
