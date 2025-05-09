==========
Julian Day
==========

         **John Cirillo**

         Julian Days are a way of reckoning the current date by a simple
         count of the number of days that have passed since some remote,
         arbitrary date. This number of days is called the *Julian Day*,
         abbreviated as JD. The starting point, JD=0, is January 1, 4713
         BC (or -4712 January 1, since there was no year '0'). Julian
         Days are very useful because they make it easy to determine the
         number of days between two events by simply subtracting their
         Julian Day numbers. Such a calculation is difficult for the
         standard (Gregorian) calendar, because days are grouped into
         months, which contain a variable number of days, and there is
         the added complication of :doc:`Leap Years  <ai-leapyear>`.

         Converting from the standard (Gregorian) calendar to Julian
         Days and vice versa is best left to a special program written
         to do this, such as the KStars
         :doc:`Astrocalculator  <tool-calculator>`. However, for those
         interested, here is a simple example of a Gregorian to Julian
         day converter:

         JD = D - 32075 + 1461*( Y + 4800 + ( M - 14 ) / 12 ) / 4 +
         367*( M - 2 - ( M - 14 ) / 12 \* 12 ) / 12 - 3*( ( Y + 4900 + (
         M - 14 ) / 12 ) / 100 ) / 4

         where D is the day (1-31), M is the Month (1-12), and Y is the
         year (1801-2099). Note that this formula only works for dates
         between 1801 and 2099. More remote dates require a more
         complicated transformation.

         An example Julian Day is: JD 2440588, which corresponds to 1
         Jan, 1970.

         Julian Days can also be used to tell time; the time of day is
         expressed as a fraction of a full day, with 12:00 noon (not
         midnight) as the zero point. So, 3:00 pm on 1 Jan 1970 is JD
         2440588.125 (since 3:00 pm is 3 hours since noon, and 3/24 =
         0.125 day). Note that the Julian Day is always determined from
         :doc:`Universal Time  <ai-utime>`, not Local Time.

         Astronomers use certain Julian Day values as important
         reference points, called :doc:`Epochs  <ai-epoch>`. One
         widely-used epoch is called J2000; it is the Julian Day for 1
         Jan, 2000 at 12:00 noon = JD 2451545.0.

         Much more information on Julian Days is available on the
         internet. A good starting point is the `U.S. Naval
         Observatory <http://aa.usno.navy.mil/faq/docs/JD_Formula.html>`__.
         If that site is not available when you read this, try searching
         for “Julian Day” with your favorite search engine.

