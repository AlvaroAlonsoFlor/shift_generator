# Early considerations

* We'll need to work with arrays for each week.

* We will have 3 kinds of shift:
  - E = early
  - L = late
  - O = off

* First we need the shift generator, and after the filter to improve the shifts, which probably would be in 2 classes.


# Shift generator

In the end starting to work with a class was easier since I had already part done from my world_generator project.

The shift generator is now working offering basic functionalities. Still can be adapted to offer a flexible number of weeks and days off.

# TL shift pattern

* Some ideas to review:
  - 2 weekends a month off.
  - finishing with earlies starting with lates?
* Started to test with pry and pry-byebug.
* I decided to put weeks Monday to Sunday instead of Sunday to Saturday since it will simplify the code.
