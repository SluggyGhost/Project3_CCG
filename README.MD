# ABOUT
AUTHOR: Joshua Acosta
CLASS: CMPM 121 - Game Dev Patterns
DATE CREATED: 5/20/25
LAST UPDATE: 6/3/25

# PROGRAMMING PATTERNS
**Type Object**
The Vector table acts as a type object.
This allows me to create 2D vector coordinates, 
useful for positioning and sizing.

**Command**
I have numerous small functions in their own separate file, commands.lua.
I chose to use this pattern for them because there are different ways to call each one, 
and I may want to queue the effects (a common practice in card games).

**Prototype**
The cards are prototypes. This allows the general values and structure to remain consistent, 
while allowing for each one to have unique abilities through commands.

**State**
State is used by the grabber and card interaction, to determine when the drop shadow should appear. 
It is also used keep track of the game and turn phases. I use it there because it works better 
than numerical values or strings.

**Event Queue**
While not currently implemented, I plan to use this pattern for the card effects, so they
activate in reveal order.

# FEEDBACK
**Cassian Jones**
- try to make a skeleton for your code, to avoid on-the-fly thinking
    - already have an outline, but I am reviewing it and updating it to keep it aligned with current goals
- the player:toggleType function seems superflous
    - this function was removed

**Andy Newton**
- csvreader returns M, which no other modules does. Consider adapting the csvreader to align it with the pattern of the rest of the code
    - updated csvReader to mainly use the loadCSV function, which is called from main
- use printf instead of print to allow for text wrapping
    - implemented
- move more things out of main
    - in progess; still building out more methods
- add more documentation for functions
    - added more documentation to existing code

# POSTMORTEM


# ASSETS USED
None, at least at the present moment.
