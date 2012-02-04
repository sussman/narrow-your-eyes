"Robotest" by Ben Collins-Sussman

Include Flexible Windows by Jon Ingold.
Include Fixed Point Maths by Michael Callaghan.
Include Glimmr Drawing Commands by Erik Temple.
Include Glimmr Canvas-Based Drawing by Erik Temple.

The Big White Room is a room.  "My, this is a large, white, featureless room."

The flyer is in the Big White Room.  "The flyer seems to have a fascinating picture on it."


[
GOALS to ACHIEVE:

1.  Make 'robofire' draw a blinky line across the screen
2.  Create a ruleset to make the factory move the robot (explicit window refresh, after a 2 sec pause)
3.  World domination by means of a cybernetic army written in Inform 7

]


Book 1 Roborally Test Mechanics

Chapter Diagnostics - Not for release

Diagnostics mode is a truth state that varies. Diagnostics mode is false.  

Diagnosticking is an action out of world.  Understand "diagnostics"  as diagnosticking.

Carry out diagnosticking:
	if diagnostics mode is true:
		change diagnostics mode to false;
	otherwise:
		change diagnostics mode to true;
	say "Switching diagnostics mode to [if diagnostics mode is true]on[otherwise]off[end if][if diagnostics mode is true]. The current robot [robot details][end if]." in diagnostics mode.
	
To say robot details:
	say "position is x=[entry 1 of the grid-coordinate of the character of the robot], y=[entry 2 of the grid-coordinate of the character of the robot] and the robot is facing [run paragraph on]";
	if the facing-direction of the robot is:
		-- right: say "right";
		-- left: say "left";
		-- hither: say "hither";
		-- yonder: say "yonder";
		-- otherwise: say "undefined".
	
To say start of command:
	say "At the beginning of the command [quotation mark][player's command][quotation mark], the robot [robot details]."
	
To say end of command:
	say "At the end of the command [quotation mark][player's command][quotation mark], the robot [robot details]."
	
To say (phrase - text) in diagnostics mode:
	say "[italic type][the phrase][roman type][paragraph break]".
	

Chapter Windows

The graphics-window is a graphics g-window spawned by the main-window.  The measurement of the graphics-window is 400.

The graphics-canvas is a g-canvas.  The associated canvas of the graphics-window is the graphics-canvas.
The canvas-width of the graphics-canvas is 400. The canvas-height of the graphics-canvas is 400.

After examining the flyer:  
	open up the graphics-window;
	if diagnostics mode is true, say "Opening graphics window." in diagnostics mode.

[TODO:  why does this line cause the graphics window to be blank when it opens??

Every turn: follow the refresh windows rule.  [standard rule built into library]]


Chapter Figures, Tiles, and Sprites

[TODO:  we'll need sprits for the robot facing all 4 directions.]

Figure of RobotYonder is the file "robotback.png".
Figure of RobotHither is the file "robotfront.png".
Figure of RobotLeft is the file "robotleft.png".
Figure of RobotRight is the file "robotright.png".
Figure of LeftBelt is the file "leftbelt.png".
Figure of RightBelt is the file "rightbelt.png".
Figure of UpBelt is the file "upbelt.png".
Figure of DownBelt is the file "downbelt.png".
Figure of RightTurn is the file "rightturn.png".
Figure of LeftTurn is the file "leftturn.png".
Figure of UpTurn is the file "upturn.png".
Figure of DownTurn is the file "downturn.png".

Robo is a tileset.  The translation-table is the Table of Robo Tiles.  The tile-width is 80.  The tile-height is 80.

Table of Robo Tiles
Char	Tile
number	figure-name
1	Figure of LeftBelt
2	Figure of RightBelt
3	Figure of UpBelt
4	Figure of DownBelt
5	Figure of LeftTurn
6	Figure of RightTurn
7	Figure of UpTurn
8	Figure of DownTurn


The robogrid is a tileset image-map.  The associated tileset is Robo.  The associated canvas is the graphics-canvas.
The tile-array of the robogrid is  {
     { 2, 2, 2, 2, 8 },
     { 8, 1, 1, 1, 1 },
     { 2, 2, 2, 2, 8 },
     { 8, 1, 1, 1, 1 },
     { 2, 2, 2, 2, 3 }
}.

A character-sprite is a kind of sprite. A character-sprite has a list of numbers called the grid-coordinate. The associated canvas of a character-sprite is the graphics-canvas.  The display-layer of a character-sprite is 2.

A person has a character-sprite called the character.  [assuming robot is a person here too]

Some character-sprites are defined by the Table of Characters.

Table of Characters
character-sprite	image-ID	grid-coordinate
Robot-sprite	Figure of RobotHither	{ 3, 3 }
[TODO Add igneous and player sprites here]

Element scaling rule for a character-sprite (called the character) (this is the convert origin coordinate rule):
     now the origin of the character is the canvas coordinate equivalent of the grid-coordinate of the character in the coordinates of the the robogrid;
     continue.


Chapter Character Setup

[For simplicity, let's assume the player controls the robot via movement commands]
The Robot is a person.  The character of the Robot is the Robot-sprite.  The display status of the Robot-sprite is g-active.

A facing-direction is a kind of value.  The facing-directions are right, left, hither, and yonder.
The Robot has a facing-direction.  The facing-direction of the Robot is hither.


Chapter Movement Rules

Forwarding is an action applying to nothing.  Understand "forward" as forwarding.

Carry out forwarding:
	if diagnostics mode is true, say "[start of command]" in diagnostics mode;
	say "The robot takes a step forward.";
	if the facing-direction of the robot is right:
		if entry 1 of the grid-coordinate of the character of the robot is 5,  say "Oops, the robot hit a wall.";
		otherwise increment entry 1 of the grid-coordinate of the character of the robot;
	otherwise if the facing-direction of the robot is left:
		if entry 1 of the grid-coordinate of the character of the robot is 1, say "Oops, the robot hit a wall.";
		otherwise decrement entry 1 of the grid-coordinate of the character of the robot;
	otherwise if the facing-direction of the robot is hither:
		if entry 2 of the grid-coordinate of the character of the robot is 5, say "Oops, the robot hit a wall.";
		otherwise increment entry 2 of the grid-coordinate of the character of the robot;
	otherwise if the facing-direction of the robot is yonder:
		if entry 2 of the grid-coordinate of the character of the robot is 1, say "Oops, the robot hit a wall.";
		otherwise decrement entry 2 of the grid-coordinate of the character of the robot;
	follow the convert origin coordinate rule;
	follow the window-drawing rules for the graphics-window;
	if diagnostics mode is true, say "[end of command]" in diagnostics mode.
	

Backwarding is an action applying to nothing.  Understand "back" as backwarding.

Carry out backwarding:
	if diagnostics mode is true, say "[start of command]" in diagnostics mode;
	say "The robot takes a step backward.";
	if the facing-direction of the robot is right:
		if entry 1 of the grid-coordinate of the character of the robot is 1, say "Oops, the robot hit a wall.";
		otherwise decrement entry 1 of the grid-coordinate of the character of the robot;
	otherwise if the facing-direction of the robot is left:
		if entry 1 of the grid-coordinate of the character of the robot is 5,  say "Oops, the robot hit a wall.";
		otherwise increment entry 1 of the grid-coordinate of the character of the robot;
	otherwise if the facing-direction of the robot is hither:
		if entry 2 of the grid-coordinate of the character of the robot is 1, say "Oops, the robot hit a wall.";
		otherwise decrement entry 2 of the grid-coordinate of the character of the robot;
	otherwise if the facing-direction of the robot is yonder:
		if entry 2 of the grid-coordinate of the character of the robot is 5, say "Oops, the robot hit a wall.";
		otherwise increment entry 2 of the grid-coordinate of the character of the robot;
	follow the convert origin coordinate rule;
	follow the window-drawing rules for the graphics-window;
	if diagnostics mode is true, say "[end of command]" in diagnostics mode.
	

Righting is an action applying to nothing.  Understand "right" as righting.

Carry out righting:
	if diagnostics mode is true, say "[start of command]" in diagnostics mode;
	say "The robot turns to its right.";
	if the facing-direction of the robot is right:
		now the facing-direction of the robot is hither;
		now the image-ID of the character of the robot is Figure of RobotHither;
	otherwise if the facing-direction of the robot is hither:
		now the facing-direction of the robot is left;
		now the image-ID of the character of the robot is Figure of RobotLeft;
	otherwise if the facing-direction of the robot is left:
		now the facing-direction of the robot is yonder;
		now the image-ID of the character of the robot is Figure of RobotYonder;
	otherwise if the facing-direction of the robot is yonder:
		now the facing-direction of the robot is right;
		now the image-ID of the character of the robot is Figure of RobotRight;
	follow the window-drawing rules for the graphics-window;
	if diagnostics mode is true, say "[end of command]" in diagnostics mode.


Lefting is an action applying to nothing.  Understand "left" as lefting.

Carry out lefting:
	if diagnostics mode is true, say "[start of command]" in diagnostics mode;
	say "The robot turns to its left.";
	if the facing-direction of the robot is left:
		now the facing-direction of the robot is hither;
		now the image-ID of the character of the robot is Figure of RobotHither;
	otherwise if the facing-direction of the robot is yonder:
		now the facing-direction of the robot is left;
		now the image-ID of the character of the robot is Figure of RobotLeft;
	otherwise if the facing-direction of the robot is right:
		now the facing-direction of the robot is yonder;
		now the image-ID of the character of the robot is Figure of RobotYonder;
	otherwise if the facing-direction of the robot is hither:
		now the facing-direction of the robot is right;
		now the image-ID of the character of the robot is Figure of RobotRight;
	follow the window-drawing rules for the graphics-window;
	if diagnostics mode is true, say "[end of command]" in diagnostics mode.


Chapter Firing

[TODO:  implement 'fire', and draw a blinky line in the right direction, all the way to the wall.]




	
