# ABOUT
AUTHOR: Joshua Acosta
CLASS: CMPM 121 - Game Dev Patterns
DATE CREATED: 5/20/25
LAST UPDATE: 5/20/25

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

# FEEDBACK


# POSTMORTEM


# ASSETS USED

