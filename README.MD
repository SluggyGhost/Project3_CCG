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

**Update Method**
Each object (card, zone, player, gameObj, deck) has an update method.
The main game loop calls this update method for each object once per frame.

**Game Loop**
The functions love.update and love.draw act as the game loop.
This allows the game world to be updated and drawn every frame.

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


# POSTMORTEM


# ASSETS USED
None, at least at the present moment.
