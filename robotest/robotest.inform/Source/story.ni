"Robotest" by Ben Collins-Sussman

Include Glimmr Canvas-Based Drawing by Erik Temple.
[other includes removed because GCBD includes these itself]
Include Real-Time Delays by Erik Temple.

The Big White Room is a room.  "My, this is a large, white, featureless room."

The flyer is in the Big White Room.  "The flyer seems to have a fascinating picture on it."

Robot delay is a number that varies. Robot delay is 1000. [milliseconds]


[
GOALS to ACHIEVE:

1.  Make 'robofire' draw a blinky line across the screen
2.  Create a ruleset to make the factory move the robot (explicit window refresh, after a 2 sec pause)
3.  World domination by means of a cybernetic army written in Inform 7

]


[Use Glimmr debugging.]

Book 1 Roborally Test Mechanics

Chapter Globals



Chapter Diagnostics 
[I've made this releasable so we have diagnostics in any test release blorbs]

[Note: Use command "image-map robogrid" to display the tile array as a text matrix within the game] 

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
	

Chapter Windows and Colors

The graphics-window is a graphics g-window spawned by the main-window.  The measurement of the graphics-window is 400.

The graphics-canvas is a g-canvas.  The associated canvas of the graphics-window is the graphics-canvas.
The canvas-width of the graphics-canvas is 400. The canvas-height of the graphics-canvas is 400.

After examining the flyer:  
	open up the graphics-window;
	if diagnostics mode is true, say "Opening graphics window." in diagnostics mode.

[TODO:  why does this line cause the graphics window to be blank when it opens??]

[building on the g-color table in Glulx Text Effects...]
Table of Common Color Values (continued)
glulx color value	assigned number
g-ultraviolet-laser	14647551 [0xDF80FF]
g-green-laser	6750003 [0x33FF66]

[g-red-laser	13737216 [0xD19D00]]

Chapter Figures, Tiles, Sprites

Figure of RobotYonder is the file "robotback.png".
Figure of RobotHither is the file "robotfront.png".
Figure of RobotLeft is the file "robotleft.png".
Figure of RobotRight is the file "robotright.png".
Figure of LeftBelt is the file "left.png".
Figure of RightBelt is the file "right.png".
Figure of UpBelt is the file "up.png".
Figure of DownBelt is the file "down.png".
Figure of UpRightTurn is the file "up2right.png".
Figure of UpLeftTurn is the file "up2left.png".
Figure of DownRightTurn is the file "down2right.png".
Figure of DownLeftTurn is the file "down2left.png".
Figure of RightUpTurn is the file "right2up.png".
Figure of RightDownTurn is the file "right2down.png".
Figure of LeftUpTurn is the file "left2up.png".
Figure of LeftDownTurn is the file "left2down.png".
Figure of Blank is the file "blank.png".

Robo is a tileset.  The translation-table is the Table of Robo Tiles.  The tile-width is 80.  The tile-height is 80.

Table of Robo Tiles
Char	Tile
number	figure-name
1	Figure of LeftBelt
2	Figure of RightBelt
3	Figure of UpBelt
4	Figure of DownBelt
5	Figure of UpRightTurn
6	Figure of UpLeftTurn
7	Figure of DownRightTurn
8	Figure of DownLeftTurn
9	Figure of RightUpTurn
10	Figure of RightDownTurn
11	Figure of LeftUpTurn
12	Figure of LeftDownTurn
13	Figure of Blank

The robogrid is a tileset image-map.  The associated tileset is Robo.  The associated canvas is the graphics-canvas.
The tile-array of the robogrid is  {
     { 10, 1, 1, 1, 1 },
     { 4, 10, 1, 1, 6 },
     { 4, 7, 2, 2, 3 },
     { 7, 2, 2, 2, 11 },
     { 2, 2, 3, 13, 13 }
}.

A character-sprite is a kind of sprite. A character-sprite has a list of numbers called the grid-coordinate. The associated canvas of a character-sprite is the graphics-canvas.  The display-layer of a character-sprite is 2.

A person has a character-sprite called the character.  [assuming robot is a person here too]

Some character-sprites are defined by the Table of Characters.

Table of Characters
character-sprite	image-ID	grid-coordinate
Robot-sprite	Figure of RobotHither	{ 3, 3 }
[TODO Add igneous and player sprites here]

Element scaling rule for a character-sprite (called the character) (this is the convert origin coordinate rule):
	now the origin of the character is the canvas coordinate equivalent of the grid-coordinate of the character in the coordinates of the robogrid;
	if diagnostics mode is true:
		say "[italic type]Element scaling rule firing:[line break]Origin of the character (canvas coordinates): [origin of the character][line break]Grid Coordinates of the character: ([entry 1 of the grid-coordinate of the character],[entry 2 of the grid-coordinate of the character])[roman type][paragraph break]";
	continue.
	
Chapter Sound
[
Sound of the conveyor  is the file "conveyor(523440).ogg".
Sound of the laser  is the file "laser(103239&52598).ogg".
]

Chapter Character Setup

[For simplicity, let's assume the player controls the robot via movement commands]
The Robot is a person.  The character of the Robot is the Robot-sprite.  The display status of the Robot-sprite is g-active.

A facing-direction is a kind of value.  The facing-directions are right, left, hither, and yonder.
The Robot has a facing-direction.  The facing-direction of the Robot is hither.


Chapter Movement Rules

To say wall detected:
	say "The robot holds position to avoid hitting a wall."

startx is a number that varies. starty is a number that varies.

To decide whether the destination of (xcoord - a number) and (ycoord - a number) is valid:
	if xcoord is 0 or xcoord is 6 or ycoord is 0:
		say "[wall detected]";
		decide no;
	otherwise if xcoord is 1 and ycoord is 1:
		say "The robot holds position to avoid collision with Professor Igneous.";
		decide no;
	otherwise if ycoord is 5:
		say "The robot holds position to avoid contact with the deathly energy of web of UV laser light.";
		decide no;
	decide yes.		

	
To set starting coordinates of (xcoord - a number) and (ycoord - a number):
	change startx to xcoord;
	change starty to ycoord;
	if diagnostics mode is true:
		say "Starting positions is ([startx],[starty])".
	
To finalize the coordinates of (xcoord - a number) and (ycoord - a number):
	change entry 1 of the grid-coordinate of the character of the robot to startx;
	change entry 2 of the grid-coordinate of the character of the robot to starty;
	if diagnostics mode is true:
		say "Finalizing position ([startx],[starty]).";
	follow the window-drawing rules for the graphics-window;
	follow the refresh windows rule;
	if diagnostics mode is true, say "[end of command]" in diagnostics mode.



Forwarding is an action applying to nothing.  Understand "forward" as forwarding.

Carry out forwarding:
	if diagnostics mode is true, say "[start of command]" in diagnostics mode;
	set starting coordinates of entry 1 of the grid-coordinate of the character of the robot and entry 2 of the grid-coordinate of the character of the robot;
	say "The robot takes a step forward.";
	if the facing-direction of the robot is:
		-- right: increment startx;
		-- left: decrement startx;
		-- hither: increment starty;
		-- yonder: decrement starty;
	if the destination of startx and starty is valid:
		robodelay;
		finalize the coordinates of startx and starty.
	
Backwarding is an action applying to nothing.  Understand "back" as backwarding.

Carry out backwarding:
	if diagnostics mode is true, say "[start of command]" in diagnostics mode;
	set starting coordinates of entry 1 of the grid-coordinate of the character of the robot and entry 2 of the grid-coordinate of the character of the robot;
	say "The robot takes a step backward.";
	if the facing-direction of the robot is:
		-- right: decrement startx;
		-- left: increment startx;
		-- hither: decrement starty;
		-- yonder: increment starty;
	if the destination of startx and starty is valid:
		robodelay;
		finalize the coordinates of startx and starty.		
		
	

Righting is an action applying to nothing.  Understand "right" as righting.

Carry out righting:
	if diagnostics mode is true, say "[start of command]" in diagnostics mode;
	if the facing-direction of the robot is:
		-- right:
			now the facing-direction of the robot is hither;
			now the image-ID of the character of the robot is Figure of RobotHither;
		-- left: 
			now the facing-direction of the robot is yonder;
			now the image-ID of the character of the robot is Figure of RobotYonder;
		-- hither:
			now the facing-direction of the robot is left;
			now the image-ID of the character of the robot is Figure of RobotLeft;
		-- yonder:
			now the facing-direction of the robot is right;
			now the image-ID of the character of the robot is Figure of RobotRight;
	robodelay;
	follow the window-drawing rules for the graphics-window;
	follow the refresh windows rule;
	if diagnostics mode is true, say "[end of command]" in diagnostics mode.


Lefting is an action applying to nothing.  Understand "left" as lefting.

Carry out lefting:
	if diagnostics mode is true, say "[start of command]" in diagnostics mode;
	say "The robot turns to its left.";
	if the facing-direction of the robot is:
		-- right:
			now the facing-direction of the robot is yonder;
			now the image-ID of the character of the robot is Figure of RobotYonder;
		-- left:
			now the facing-direction of the robot is hither;
			now the image-ID of the character of the robot is Figure of RobotHither;
		-- hither:
			now the facing-direction of the robot is right;
			now the image-ID of the character of the robot is Figure of RobotRight;
		-- yonder:
			now the facing-direction of the robot is left;
			now the image-ID of the character of the robot is Figure of RobotLeft;
	robodelay;
	follow the window-drawing rules for the graphics-window;
	follow the refresh windows rule;
	if diagnostics mode is true, say "[end of command]" in diagnostics mode.


Chapter Firing the Laser


The UVLaser is a line primitive.  The origin of the UVLaser is { 0, 320 }.  The endpoint of the UVLaser is { 400, 320 }.  The line-weight of the UVLaser is 4.  The tint of the UVLaser is g-ultraviolet-laser.  The associated canvas of the UVLaser is the graphics-canvas.  The display-layer of the UVLaser is 1.
	
The RobotLaser is a line primitive.  The origin of the RobotLaser is { 0, 0 }.  The endpoint of the RobotLaser is { 400, 320 }.  The line-weight of the RobotLaser is 4.  The tint of the RobotLaser is g-green-laser.  The associated canvas of the RobotLaser is the graphics-canvas.  The display-layer of the RobotLaser is 3.  The display status of the RobotLaser is g-inactive.

Firing is an action applying to nothing.  Understand "fire" as firing.

Carry out firing:
	let endX be a number;
	let endY be a number;
	let originX be entry 1 of the origin of the character of the robot plus 40;
	let originY be entry 2 of the origin of the character of the robot plus 40;
	[say "entry 1 is [entry 1 of the origin of the character of the robot][paragraph break], entry 2 is [entry 2 of the origin of the character of the robot][paragraph break]originX is [originX], originY is [originY][paragraph break]";]
	if the facing-direction of the robot is left:
		let endX be 0;
		let endY be originY;
	otherwise if the facing-direction of the robot is right:
		let endX be 400;
		let endY be originY;
	otherwise if the facing-direction of the robot is hither:
		let endX be originX;
		let endY be 400;
	otherwise if the facing-direction of the robot is yonder:
		let endX be originX;
		let endY be 0;
	let L be a list of numbers;
	add originX to L;
	add originY to L;
	let M be a list of numbers;
	add endX to M;
	add endY to M;
	change the origin of the RobotLaser to L;
	change the endpoint of the RobotLaser to M;
	now the display status of the RobotLaser is g-active;
	follow the window-drawing rules for the graphics-window;
	if glulx timekeeping is supported:
		[if glulx sound is supported:
			play the sound of the laser;
		otherwise:]
		say "Zotttt! The laser fires![paragraph break]";
		wait 1900 ms before continuing, strictly;
	[laser persists on screen for duration of sound effect]
	change originX to entry 1 of the origin of the character of the robot plus 40;
	change originY to entry 2 of the origin of the character of the robot plus 40;
	[kind of cheesy way of shrinking the beam to zero length; in practice we could condense this
	down to a subroutine]
	change endX to originX;
	change endY to originY;
	change L to have 0 entries;
	change M to have 0 entries;
	add originX to L;
	add originY to L;
	add endX to M;
	add endY to M;
	change the origin of RobotLaser to L;
	change the endpoint of RobotLaser to M;
	[these rules redraw the laser within this block]
	follow the window-drawing rules for the graphics-window.


Chapter Factory Movement

A conveyor-direction is a kind of value. The conveyor-directions are upwards, downwards, leftwards and rightwards.

[Is this really the best way to accomplish this??  Bleh.]
To decide which number is the current robot tile:
	let X be entry 1 of the grid-coordinate of the robot-sprite;
	let Y be entry 2 of the grid-coordinate of the robot-sprite;
	let gridrow be entry Y of the tile-array of the robogrid;
	decide on entry X of gridrow.
	
To shift (way - a conveyor-direction):
	set starting coordinates of entry 1 of the grid-coordinate of the character of the robot and entry 2 of the grid-coordinate of the character of the robot;
	say "The factory attempts to shift the robot [run paragraph on]";
	if way is:
		-- rightwards:
			say "to the right.";
			increment startx;
		-- leftwards:
			say "to the left.";
			decrement startx;
		-- upwards:
			say "away from you.";
			decrement starty;
		-- downwards:
			say "towards you.";
			increment starty;	
	if the destination of startx and starty is valid:
		finalize the coordinates of startx and starty;
		say "...the robot is moved by the conveyor belt!"
		
To robodelay:
	if glulx timekeeping is supported:
		wait robot delay ms before continuing, strictly.
		[in production, this would be hooked up with swivel sound]
			
This is the factory movement rule:
	say "The factory floor moves...";
	if the current robot tile is:
		-- 1: [left]
			shift leftwards;
		-- 2: [right]
			shift rightwards;
		-- 3: [up]
			shift upwards;
		-- 4: [down]
			shift downwards;
		-- 5: [up right]
			try lefting;
			robodelay;
			shift rightwards;
		-- 6: [up left]
			try righting;
			robodelay;
			shift leftwards;
		-- 7: [down right]
			try lefting;
			robodelay;
			shift rightwards;
		-- 8: [down left]
			try righting;
			robodelay;
			shift leftwards;
		-- 9: [right up]
			try righting;
			robodelay;
			shift upwards;
		-- 10: [right down]
			try lefting;
			robodelay;
			shift downwards;
		-- 11: [left up]
			try lefting;
			robodelay;
			shift upwards;
		-- 12: [left down]
			try righting;
			robodelay;
			shift downwards;
	if glulx timekeeping is supported:
		[if glulx sound is supported:
			play the sound of the conveyor;]
		wait 1400 ms before continuing, strictly.
	[this sound/timing stuff is wrapped up more nicely in nye, but you get the idea.]
		
	
Chapter Every Turn

[We might back off on these very turn rules, if the screen is updated atomically after each movement.]
Every turn:
	[follow the refresh windows rule;]
	follow the factory movement rule; 
	[follow the refresh windows rule.]
	




	
