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
I felt like I had to start again from this project. While I used my solitaire work for reference, I wasn't able to use much of it for this. 
I feel like what really held me back was not having a proper structure plan from the beginning. While I knew that cards were important, I 
wasn't certain how every other class, prototype, and object factored into it. What I mean is, I only had a vague plan from the collaborative board,
and should have tried to solidify the structure before committing to anything concrete. While I have a good architecture plan *now*, I ran out of 
time to fully implement it, or to implement much of the logic I meant to. I need to plan these projects out better in the future.

# ASSETS USED
None, at least at the present moment.
