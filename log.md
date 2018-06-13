# Early considerations

* We'll need to work with arrays for each week.

* We will have 3 kinds of shift:
  - E = early
  - L = late
  - O = off

* First we need the shift generator, and after the filter to improve the shifts.


# Shift generator

In the end starting to work with a class was easier since I had already part done from my world_generator project.

The shift generator is now working offering basic functionalities. Still can be adapted to offer a flexible number of weeks and days off.


# TL shift pattern

* Weekend filter:
  - Goal: Find at least two weekends in the roster.
  - Started to test with pry and pry-byebug.
  - I decided to put weeks Monday to Sunday instead of Sunday to Saturday since it will simplify the code.
  - Weekend filter finished.


One of the main problems I found was the following error:

`` stack level too deep (SystemStackError) ``

I manage to solve the issue refactoring and making simpler my algorithm.

In the end I didn't even need to pass parameters to my tl_filter function. I found easier to do everything inside the function, generating each shifts at the beginning and opting to use recursion.
