================
Setting the Time
================

When KStars starts up, the time is set to your computer's
system clock, and the KStars clock is running to keep up with
the real time. If you want to stop the clock, select the ``Time`` →
``Stop Clock`` menu item, or simply click on the ``Stop Clock`` icon in
the toolbar. You can make the clock run slower or faster than
normal, or even make it run backward, using the time-step
spinbox in the toolbar. This spinbox has two sets of up/down
buttons. The first one will step through all 83 available time
steps, one by one. The second one will skip to the next higher
(or lower) unit of time, which allows you to make large
timestep changes more quickly.

You can set the time and date by selecting the ``Time`` → ``Set
Time...`` menu item, or by pressing the ``Time`` icon in the toolbar.
The ``Set Time`` window uses a standard KDE Date Picker widget,
coupled with a spinbox for setting the hours and minutes. If
you want to re-synchronize the simulation clock back to the
current CPU time, just select the ``Time`` → ``Set Time to Now`` menu
item.

.. note::

    KStars can accept very remote dates beyond the usual limits
    imposed by QDate. Currently, you can set the date between
    the years -100000 and +100000. We may extend this range even
    further in future releases. However, please be aware that
    the accuracy of the simulation becomes more and more
    degraded as more remote dates are examined. This is
    especially true for the positions of solar system bodies.

