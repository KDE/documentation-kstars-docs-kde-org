=============
INDI Concepts
=============

         The main key concept in INDI is that devices have the ability
         to describe themselves. This is accomplished by using XML to
         describe a generic hierarchy that can represent both canonical
         and non-canonical devices. In INDI, all *devices* may contain
         one or more *properties*. Any *property* may contain one or
         more *elements*. There are four types of INDI properties:

            -  Text property.

            -  Number property.

            -  Switch property (Represented in GUI by buttons and
               checkboxes).

            -  Light property (Represented in GUI by colored LEDs).

         For example, all INDI devices share the CONNECTION standard
         switch *property*. The CONNECTION property has two elements:
         CONNECT and DISCONNECT switches. KStars parses the generic XML
         description of properties and builds a GUI representation
         suitable for direct human interaction.

         The INDI control panel offers many device properties not
         accessible from the sky map. The properties offered differ from
         one device to another. Nevertheless, all properties share
         common features that constrains how they are displayed and
         used:

            -  Permission: All properties can either be read-only,
               write-only, or read and write enabled. An example of a
               read-write property is the telescope's Right Ascension.
               You can enter a new Right Ascension and the telescope,
               based on current settings, will either slew or sync to
               the new input. Furthermore, when the telescope slews, its
               Right Ascension gets updated and sent back to the client.

            -  State: Prefixed to each property is a state indicator
               (round LED). Each property has a state and an associated
               color code:

                  **Table 9.1. INDI State color code**

                  .. table:: INDI State color code
                     :name: indi-state-color

                     +-------+--------+---------------------------------------------------+
                     | State | Color  | Description                                       |
                     +=======+========+===================================================+
                     | Idle  | Gray   | Device is performing no action with respect to    |
                     |       |        | this property                                     |
                     +-------+--------+---------------------------------------------------+
                     | Ok    | Green  | Last operation performed on this property was     |
                     |       |        | successful and active                             |
                     +-------+--------+---------------------------------------------------+
                     | Busy  | Yellow | The property is performing an action              |
                     +-------+--------+---------------------------------------------------+
                     | Alert | Red    | The property is in critical condition and needs   |
                     |       |        | immediate attention                               |
                     +-------+--------+---------------------------------------------------+

               | 

               The device driver updates the property state in real-time
               when necessary. For example, if the telescope is in the
               process of slewing to a target, then the RA/DEC
               properties will be signaled as ``Busy``. When the slew
               process is completed successfully, the properties will be
               signaled as ``Ok``.

            -  Context: Numerical properties can accept and process
               numbers in two formats: decimal and sexagesimal. The
               sexagesimal format is convenient when expressing time or
               equatorial/geographical coordinates. You can use any
               format at your convenience. For example, all the
               following numbers are equal:

                  -  -156.40

                  -  -156:24:00

                  -  -156:24

            -  Time: The standard time for all INDI-related
               communications is Universal Time UTC specified as
               YYYY-MM-DDTHH:MM:SS in accord with ISO 8601. KStars
               communicates the correct UTC time with device drivers
               automatically. You can enable/disable automatic time
               updates from the ``INDI`` page in the settings dialog.

