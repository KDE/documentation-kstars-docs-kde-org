===============
Profile Wizard
===============

The Profile Wizard is a handy tool to setup your equipment for the first time. It should popup automatically the first time you run KStars. Follow the guided instructions to setup your first equipment profile.

Greeting Page

  |Profile Wizard Welcome|

  The first greeting screen contains some links to learn more about Ekos & INDI. Click ``Next`` to continue.

Equipment Location Page

  Next, you will be presented with the equipment location page. Your selection depends on where your equipment is connected to:

    -  ``Equipment is attached to this device``: Select this option if Ekos is running on your StellarMate (via HDMI or VNC), device (Windows®/Linux®) or Mac® OS.

    -  ``Equipment is attached to a remote device``: Select this option if Ekos is running on your device (Windows®/Linux®) or Mac® OS, and your equipment is connected to a remote computer.

    -  ``Equipment is attached to StellarMate``: Select this option if Ekos is running on your device (Windows®/Linux®) or Mac® OS, and your equipment is connected to StellarMate.

  |Equipment location page|

  Click ``Next`` to continue.

Remote Connection Page
  In case selected the 2nd option in the last step, you shall be presented with the Remote Connect Page, here you will enter the hostname or IP address of the StellarMate unit. You can get the hostname from the StellarMate mobile App. Alternatively, you can construct the hostname from StellarMate HotSpot SSID. You should see the SSID when you search for WiFi networks nearby. For example, suppose the SSID is ``stellarmate``. The hostname should be *stellarmate.local*. That is, if you remove the underscore, and append *.local*, then you will get the unit hostname. You can always use the StellarMate App to change the unit default hostname to the name of your choice.

  |Profile Wizard Remote page|

  For the INDI Manager question, always select **Yes** since StellarMate Web Manager is running by default on the unit. Click ``Next`` to continue.

Profile Creation Page
  Now you get to name your equipment profile. Afterwards select which guider application to use. The ``Internal Guider`` is the only officially supported selection in StellarMate. You may opt to select ``PHD2/LinGuider`` but the details are out of the scope of this documentation. If additional services are desired, check the ones you want to run.

  |The final page of Profile Wizard|

In the example above, we select Remote Astrometry, WatchDog, and SkySafari drivers. The detailed explanations for each is provided in the tooltip when you over them. Once done, click ``Create Profile`` button. You should now be presented with the Profile Editor.

.. |Profile Wizard Welcome| image:: /images/profile_wizard_welcome.png
.. |Equipment location page| image:: /images/profile_wizard_select.png
.. |Profile Wizard Remote page| image:: /images/profile_wizard_remote.png
.. |The final page of Profile Wizard| image:: /images/profile_wizard_done.png
