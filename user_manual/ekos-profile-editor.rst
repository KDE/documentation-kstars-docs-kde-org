==============
Profile Editor
==============

|Profile Editor|

Profiles
  You can define profiles for your equipment and their connection mode using the ``Profile Editor``. Ekos comes pre-installed with the ``Simulators`` profile which can be used to start simulator devices for demonstration purposes:

    -  ``Connection Mode``: Ekos can be started either locally or remotely. Local mode is when Ekos is running in the same machine as INDI server, i.e. all the devices are connected directly to the machine. If you run INDI server on a remote machine (for example, on a Raspberry PI), you need to set the INDI server host and port.

    -  ``Auto Connect``: Check this option to enable automatic connection to all your devices after INDI server is started. If unchecked, INDI devices are created but not automatically connected. This is useful when you want to make changes to the driver (e.g. change baud rate or IP address or any other settings) *before* you connect to it.

    -  ``Port Selector``: Check this option to enable Port Selector. When creating a new profile, it is checked by default. Port Selector is used to select initial serial and network communication parameters for the devices in the equipment profile. After connecting to equipment for the first time, the Port Selector popup is displayed where the communication parameters can be set before establishing connection. Once connected, the Port Selector option is turned off. It can be toggled to checked in the profile editor to enable it back.

    -  ``Site Info``: Optionally, you can check the ``Site Info`` checkbox and Ekos will load the **current** city and timezone whenever is Ekos is started with this profile. This can be useful when connecting to the remote geographic site so that Ekos is in sync location and time wise.

    -  ``Guiding``: Select which Guide application you want to use for guiding. By default, the Ekos internal Guide Module is utilized. External guiders include PHD2 and LinGuider.

    - ``INDI Web Manager``: StellarMate Web Manager is a web-based tool to start and stop INDI drivers. You should always check this option when connecting remotely to a StellarMate unit.

    - ``Device Selection``: Select your devices from each category. Please note that if you have a CCD with a guide head, you can leave the guider drop-down menu *blank* as Ekos will auto-detect the guide head from the CCD camera. Similarly, if your CCD includes embedded filter wheel support, then you do *not* need to specify the filter wheel device in the filter drop-down menu.

    - ``Scripts``: Adjust pre-driver and post-driver delays and scripts for each driver. A rule can be defined for each driver in case there is a need to introduce delays before and/or after starting a particular driver. The fields before the driver selection dropdown are to be executed *before* the driver is started, whereas the fields after the driver selection dropdown are to be executed *after* the driver started. The script field, if specified, should include the full path to an executable script with the appropriate permissions.  All drivers configured in the scripts editor would be started first and in order before the rest of the equipment profile drivers.

    |Profile Editor Scripts|

Start & Stop INDI
  Start and Stop INDI services. Once INDI server is established, INDI Control Panel will be displayed. Here you can change some driver options such as which port the device is connected to etc.

Connect & Disconnect Devices
  Connect to INDI server. Based on the devices connected, Ekos modules (CCD, Focus, Guide, etc.) will be established and available to use.

  Once you are ready, click ``Start INDI`` to establish INDI server and connection to your equipment. Ekos shall create the various module icons (Mount, Capture, Focus, etc.) as the connection is established with the device.

.. |Profile Editor| image:: /images/profile_editor.png
.. |Profile Editor Scripts| image:: /images/profile_editor_scripts.png
