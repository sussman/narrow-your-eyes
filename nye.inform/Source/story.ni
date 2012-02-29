"Narrow Your Eyes" by Ben Collins-Sussman and Jack Welch

The story headline is "The 10th track on a tribute to TMBG's Apollo 18".
The release number is 4.
The story creation year is 2012.
The story genre is "Comedy".

The story description is "Your wedding rehearsal is hours away, and what do you do but sit on your glasses, crushing them beyond repair? Can you and your stylish cell phone survive the day?"

Include Menus by Emily Short.
Include Plurality by Emily Short. 
Include Real-Time Delays by Erik Temple.
Include Glimmr Canvas-Based Drawing by Erik Temple.
Include Adaptive Hints by Eric Eve.


Use full-length room descriptions, american dialect and the serial comma.

Release along with cover art.


Book 1 Mechanics

Chapter Bars

To say (bars - a number) graphically:
	let i be a number;
	change i to MAXBARS minus bars;
	while (i is greater than zero):
		say ".[no line break]";
		decrease i by one;
	change i to bars;
	while (i is greater than zero):
		say "|";
		decrease i by one.

Chapter No More Get All
[A more efficient no more get all, suggested by Radical Al:]

After reading a command:
	if the player's command matches "get all" or the player's command matches "take all":
		if the player carries the can:
			say "You[apostrophe]ve already got more than enough to deal with.";
		otherwise:
			say "Taken.";
			move the can to the player;
		reject the player's command;
	otherwise:
		if the player's command includes "all":
			say "One thing at a time, please.";
			reject the player's command.
	
Chapter Rules Modifications

[Override inherent prudeness -- allow PC to kiss anything]
The block kissing rule is not listed in any rulebook.
The kissing yourself rule is not listed in any rulebook.

Chapter Declare Global Variables

The last mentioned thing is a thing that varies.

lastUpdateTime is a time that varies. The lastUpdateTime is 11 AM.

lastDialed is an indexed text that varies. lastDialed is "".
currentMessage is a text that varies. currentMessage is "".

MAXBARS is a number that varies. MAXBARS is five.
geeBars, gpsBars, powerBars, and phoneCharge are numbers that vary.
geeBars is usually zero.
gpsBars is usually zero.
powerBars is usually zero. powerBars is five.
phoneCharge is usually zero. phoneCharge is 130.

updateNumber is a number that varies. The updateNumber is 1.
currentUpdateLevel is a number that varies. currentUpdateLevel is 0.
cowLicense is a number that varies. cowLicense is four.
turnCounter is a number that varies. turnCounter is zero.
eyeAttempt is a number that varies. eyeAttempt is 1.
tempUpdateLevel is a number that varies. tempUpdateLevel is zero.
Robot delay is a number that varies. Robot delay is 400. [milliseconds]
startx is a number that varies. starty is a number that varies.
hasturCount is a number that varies. hasturCount is zero.
jumpitude is a number that varies. jumpitude is zero.

messageAlert is a truth state that varies. messageAlert is false.
onFamiliarTerms is a truth state that varies. onFamiliarTerms is false.
finalJump is a truth state that varies. finalJump is false.
readyToNarrow is a truth state that varies. readyToNarrow is true.

[some flags for testing]
graphics_suppress is a truth state that varies. graphics_suppress is false.
sound_suppress is a truth state that varies. sound_suppress is false.
unicode_suppress is a truth state that varies. unicode_suppress is false.
status_suppress is a truth state that varies. status_suppress is false.
timekeeping_suppress is a truth state that varies. timekeeping_suppress is false.
Muted is a truth state that varies. Muted is true.
autopilot is a truth state that varies. autopilot is true. 

Chapter Declare Resources

Chapter Windows and Colors

The graphics-window is a graphics g-window spawned by the main-window.  The measurement of the graphics-window is 400.

The graphics-canvas is a g-canvas.  The associated canvas of the graphics-window is the graphics-canvas.
The canvas-width of the graphics-canvas is 400. The canvas-height of the graphics-canvas is 400.

[building on the g-color table in Glulx Text Effects...]
Table of Common Color Values (continued)
glulx color value	assigned number
g-ultraviolet-laser	14647551 [0xDF80FF]
g-green-laser	6750003 [0x33FF66]

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
Figure of RightUpTurn is the file "rt2up.png".
Figure of RightDownTurn is the file "rt2down.png".
Figure of LeftUpTurn is the file "lt2up.png".
Figure of LeftDownTurn is the file "lt2down.png".
Figure of Blank is the file "blank.png".
Figure of PartsLocker is the file "partsLocker.png".
Figure of Igneous is the file "Igneous.png".
Figure of Marv is the file "Marv.png".

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
14	Figure of PartsLocker

The robogrid is a tileset image-map.  The associated tileset is Robo.  The associated canvas is the graphics-canvas.

The tile-array of the robogrid is  {
     { 13, 1, 1, 1, 1 },
     { 4, 10, 1, 1, 6 },
     { 4, 7, 2, 2, 3 },
     { 7, 2, 2, 2, 11 },
     { 2, 2, 2, 3, 14 }
}.

[ The variety pack board, for testing:

The tile-array of the robogrid is  {
     { 13, 1, 2, 3, 4 },
     { 5, 6, 7, 8, 9 },
     { 10, 11, 12, 1, 1 },
     { 7, 2, 2, 2, 11 },
     { 2, 2, 2, 3, 14 }
}.]

A character-sprite is a kind of sprite. A character-sprite has a list of numbers called the grid-coordinate. The associated canvas of a character-sprite is the graphics-canvas.  The display-layer of a character-sprite is 2.

A person has a character-sprite called the character.  [assuming robot is a person here too]

Some character-sprites are defined by the Table of Characters.

Table of Characters
character-sprite	image-ID	grid-coordinate
Robot-sprite	Figure of RobotHither	{ 2 ,2 }
Marv-sprite	Figure of Marv	{ 5, 5 }
Igneous-sprite	Figure of Igneous	{ 1, 1 }

Element scaling rule for a character-sprite (called the character) (this is the convert origin coordinate rule):
	now the origin of the character is the canvas coordinate equivalent of the grid-coordinate of the character in the coordinates of the robogrid;
	continue.

Section Sounds

Sound of the dtmf-zero is the file "0.ogg".
Sound of the dtmf-one is the file "1.ogg".
Sound of the dtmf-two is the file "2.ogg".
Sound of the dtmf-three  is the file "3.ogg".
Sound of the dtmf-four  is the file "4.ogg".
Sound of the dtmf-five  is the file "5.ogg".
Sound of the dtmf-six  is the file "6.ogg".
Sound of the dtmf-seven  is the file "7.ogg".
Sound of the dtmf-eight  is the file "8.ogg".
Sound of the dtmf-nine  is the file "9.ogg".

[Sound of the trunk  is the file "trunk.ogg".
Sound of the asterisk  is the file "asterisk.ogg".]

Sound of the backpedal is the file "backpedal(21200).ogg".
Sound of the beeps is the file "beeps1(44613).ogg".
Sound of the conveyor is the file "conveyor(58496).ogg".
Sound of the error is the file "error(36896).ogg".
Sound of the laser is the file "laser(103239&52598).ogg".
Sound of the laserpreroll is the file "laserpreroll(103239).ogg".
Sound of the moo is the file "moo(58277).ogg".
Sound of the message is the file "message(80921).ogg".
Sound of the okay is the file "okay(103586).ogg".
Sound of the random  is the file "random(3647).ogg".
Sound of the rotate is the file "rotate(10324).ogg".
Sound of the shock is the file "shock(62925).ogg".
Sound of the swivel  is the file "swivel(101439).ogg".
Sound of the translate is the file "translate(523440).ogg".
Sound of the update is the file "update(51645).ogg".
Sound of the sitar is the file "sitar(65872).ogg".
Sound of the future is the file "futuro(7120).ogg".
Sound of the past is the file "postero(7120).ogg".

Table of Sounds
Sound		Duration  [millisencond]
The sound of the dtmf-zero		100
The sound of the dtmf-one		100
The sound of the dtmf-two		100
The sound of the dtmf-three  		100
The sound of the dtmf-four  		100
The sound of the dtmf-five		100	
The sound of the dtmf-six		100
The sound of the dtmf-seven		100
The sound of the dtmf-eight		100
The sound of the dtmf-nine		100
The sound of the backpedal		480
The sound of the beeps		800
The sound of the conveyor		1540
The sound of the error		1100
The sound of the future		1350
The sound of the laser		1015
The sound of the laserpreroll		250
The sound of the moo		2655
The sound of the message		2000
The sound of the okay		500
The sound of the past		2150
The sound of the random		750
The sound of the rotate		1000
The sound of the shock		1700
The sound of the swivel		1250
The sound of the translate		950	
The sound of the update		5500
The sound of the sitar		2350

[Sounds given one after the other will not form a queue and play sequentially. For this reason, it is necessary to play one, wait the duration of that sound, and give the command to play another. The other issue is that while a sound is playing, if timing does not lock out input, new commands could be typed in. These new commands could be at odds with the sounds that are playing, and cause confusion, or they could kick off new sounds, which would be suppressed by the currently playing sound.

So, when you want to play a sound, but aren't worried about accepting more player input, use "play(sound)", but when you want to assure that a sound will play in its entirety, but suspend other operations, use "playback(sound)". Obviously, these sounds should be short, so that the player doesn't get upset about waiting to enter commands.
]

To playback (effect - a sound name):
	let n be the duration corresponding to the sound of effect in the Table of Sounds;
	now n is n plus 10;
	if sound is available:
		play(effect); 
	if timekeeping is available:
		wait n ms before continuing, strictly.[10 ms to give some leeway for latency] 

Chapter Capabilities

[These tests have been carried forwards from RDO. WIthout Unicode support, I think
 we'd be pretty hosed, as indexed text, regular expression matching, etc. requires it]

To decide whether unicodage is disabled:
	(-  ~~glk_gestalt(gestalt_Unicode, 0) -)
	
To decide whether unicodage is enabled:
	(-  glk_gestalt(gestalt_Unicode, 0) -)

[For compatibility with Club Floyd & adaptive technologies:]

To decide whether status is disabled:
	(- ~~gg_statuswin -)

[note that tests that determine whether sound is supported or graphics is supported
 are defined in the Glulx Entry Points Extension, so no need to write our own here]

[Use these in conditionals before trying to use funky glulx capabilities. This checks both the
system-reported status of these capabilities and any flags that the user might have set during
a test session.]

To decide if sound is available:
	if glulx sound is supported and sound_suppress is false, decide yes.
	
To decide if timekeeping is available:
	if glulx timekeeping is supported and timekeeping_suppress is false, decide yes.
	
To decide if unicode is available:
	if unicodage is enabled and unicode_suppress is false, decide yes.
	
To decide if status is available:
	if status is disabled or status_suppress is true, decide no;
	decide yes.
	
To decide if graphics is available:
	if glulx graphics is supported and graphics_suppress is false, decide yes.
	

Chapter Class Definitions

A prop is a kind of thing. It is usually portable. [If props can be carried out of their initial room, they should not be in the room description, but appear in the room contents list.]

A furniture is a kind of supporter. It is usually scenery and fixed in place. [In general, furniture descriptions should be integrated into room descriptions.] 

A thing can be large. A thing is usually not large.

Everything has some text called texture. The texture of something is usually "".

A thing can be fuzzy. A thing is usually fuzzy.

A thing has some text called the inscription. The inscription of something is usually "".

A fardrop is a kind of backdrop.

Conclusion is a kind of value. The conclusions are nil, hastured, lasered, parboiled, webbed, drainedCunning, drainedPathetic, jumped, electrocuted, tardyCunning, tardyPathetic, spiteful, rapture, bezoared, vomered, snaked and won.

Endgame is a conclusion that varies. The endgame is usually nil.

A latch is a kind of thing. A latch can be openable. A latch can be open. A latch can be lockable. A latch can be locked. A latch is usually openable, lockable, closed and locked.

Mortality is a kind of value. The mortalities are alive and dead [and, for future expansion: undead]. Persons have mortality. A person is usually alive.

Focus is a kind of value. The focuses are unfocused, diplopic, blurry, and sharp.

To decide whether updates are available:
	if currentUpdateLevel is not updateNumber, decide yes;
	decide no.
	
A facing-direction is a kind of value.  The facing-directions are right, left, hither, and yonder.

A conveyor-direction is a kind of value. The conveyor-directions are upwards, downwards, leftwards and rightwards.

Tense is a kind of value. The tenses are past, present and future.


Section Chests and Lids

[borrowed more or less whole cloth from example 49 in the I7 documentation, as adapted in Rover's Day Out. Instead of keeping track of whether the lid is up or down, keep track of the open/close status of the chest.]

Before opening something open (called the item):
	say "[The item] is already open.";
	stop the action.
	
Before closing something closed (called the item):
	say "[The item] is already closed.";
	stop the action.

A chest is a kind of container. A chest is always openable. A chest is usually fixed in place. A chest is usually closed. The specification of a chest is "Represents a container with a separately implemented lid; the lid is itself a supporter."

A lid is a kind of supporter. A lid is part of every chest. Lids can be raisable. Lids are usually raisable. The specification of a lid is "A supporter attached to a chest, which can only support things when the chest is closed."

Before opening a lid which is part of a chest (called the item): 
	try opening the item instead.
Before closing a lid which is part of a chest (called the item): 
	try closing the item instead.
Before opening a chest when something is on the lid (called the obstruction) which is part of the noun: 
	repeat with item running through things on the obstruction: 
		say "(first removing [the item])"; 
		try taking the item.

Instead of opening a chest when something is on a lid (called the item) which is part of the noun: 
	say "You'd have to remove [the list of things on the item] from the lid first." instead.
	
Instead of looking under a lid which is part of a chest (called the item): 
    try opening the item.

Before inserting something into a lid which is part of a chest (called the item): 
	try inserting the noun into the item instead.
	
Before putting something on a chest when a lid (called the item) is part of the second noun: 
	try putting the noun on the item instead.
	

Chapter General Routines
		
[borrowed from example I7 documentation, example 424 Odins:]
Section Last Mentioned Thing 

After printing the name of something (called the target): 
    change the last mentioned thing [quotation mark][paragraph break][quotation mark]to the target.

Section It-They

To say it-they:
	if the last mentioned thing is plural-named:
		say "they"; 
	otherwise:
		if the last mentioned thing is a person:
			if the last mentioned thing is male:
				say "he";
			otherwise:
				say "she";
		otherwise:
			say "it".

Section Pronoun-Accusative		
	
To say pronoun-accusative:
	if the last mentioned thing is plural-named:
		say "them";
	otherwise:
		if the last mentioned thing is a person:
			if the last mentioned thing is male:
				say "him";
			otherwise:
				say "her";
		otherwise:
			say "it".

Section Regular Verb Agreement

To say (regular verb - some text) in correct agreement:
	say "[regular verb][if the last mentioned thing is not plural-named and the last mentioned thing is not the player]s".
	
Section String Concatenation

To decide what indexed text is the concatenation of (X - indexed text) and
		(Y - indexed text) (this is concatenation):
		decide on "[X][Y]".

Chapter Movement Rules  

To decide whether the destination of (xcoord - a number) and (ycoord - a number) is valid:
	if xcoord is 0 or xcoord is 6 or ycoord is 0:
		decide no;
	otherwise if xcoord is 1 and ycoord is 1:
		decide no;
	otherwise if ycoord is 5:
		decide no;
	decide yes.		

	
To set starting coordinates of (xcoord - a number) and (ycoord - a number):
	change startx to xcoord;
	change starty to ycoord.
	
To finalize the coordinates of (xcoord - a number) and (ycoord - a number):
	change entry 1 of the grid-coordinate of the character of the robot to startx;
	change entry 2 of the grid-coordinate of the character of the robot to starty;
	follow the window-drawing rules for the graphics-window;
	follow the refresh windows rule.

Forwarding is an action applying to nothing.  

Carry out forwarding:
	set starting coordinates of entry 1 of the grid-coordinate of the character of the robot and entry 2 of the grid-coordinate of the character of the robot;
	if the facing-direction of the robot is:
		-- right: increment startx;
		-- left: decrement startx;
		-- hither: increment starty;
		-- yonder: decrement starty;
	if the destination of startx and starty is valid:
		playback(the sound of the translate);
		finalize the coordinates of startx and starty;
	otherwise:
		playback(the sound of the backpedal).
	
Backwarding is an action applying to nothing.  

Carry out backwarding:
	set starting coordinates of entry 1 of the grid-coordinate of the character of the robot and entry 2 of the grid-coordinate of the character of the robot;
	if the facing-direction of the robot is:
		-- right: decrement startx;
		-- left: increment startx;
		-- hither: decrement starty;
		-- yonder: increment starty;
	if the destination of startx and starty is valid:
		playback(the sound of the translate);
		finalize the coordinates of startx and starty;
	otherwise:
		playback(the sound of the backpedal).	
		
Righting is an action applying to nothing.  

Carry out righting:
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
	playback(the sound of the rotate);
	follow the window-drawing rules for the graphics-window;
	follow the refresh windows rule.


Lefting is an action applying to nothing.  

Carry out lefting:
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
	playback(the sound of the rotate);
	follow the window-drawing rules for the graphics-window;
	follow the refresh windows rule.


Chapter Firing the Laser


The UVLaser is a line primitive.  The origin of the UVLaser is { 0, 320 }.  The endpoint of the UVLaser is { 400, 320 }.  The line-weight of the UVLaser is 4.  The tint of the UVLaser is g-ultraviolet-laser.  The associated canvas of the UVLaser is the graphics-canvas.  The display-layer of the UVLaser is 1.
	
The RobotLaser is a line primitive.  The origin of the RobotLaser is { 0, 0 }.  The endpoint of the RobotLaser is { 400, 320 }.  The line-weight of the RobotLaser is 4.  The tint of the RobotLaser is g-green-laser.  The associated canvas of the RobotLaser is the graphics-canvas.  The display-layer of the RobotLaser is 3.  The display status of the RobotLaser is g-inactive.

Firing is an action applying to nothing.  

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
	playback(the sound of the laserpreroll);
	now the display status of the RobotLaser is g-active;
	follow the window-drawing rules for the graphics-window;
	playback(the sound of the laser);
	[Check for game-ending conditions here -- the beam persists on the final target]
	if (entry 1 of M is 0 and entry 2 of M is 40) or (entry 1 of M is 40 and entry 2 of M is 0):
		do shoot Igneous;
	otherwise if entry 1 of M is 360 and entry 2 of M is 400:
		if the metal locker encloses Marv:
			do shoot locker;
		otherwise:
			do shoot Marv;
	[laser persists on screen for duration of sound effect]
	now the display status of the RobotLaser is g-inactive;
	follow the window-drawing rules for the graphics-window.


Chapter Factory Movement

[Is this really the best way to accomplish this??  Bleh.]
To decide which number is the current robot tile:
	let X be entry 1 of the grid-coordinate of the robot-sprite;
	let Y be entry 2 of the grid-coordinate of the robot-sprite;
	let gridrow be entry Y of the tile-array of the robogrid;
	decide on entry X of gridrow.
	
To shift (way - a conveyor-direction):
	set starting coordinates of entry 1 of the grid-coordinate of the character of the robot and entry 2 of the grid-coordinate of the character of the robot;
	if way is:
		-- rightwards:
			increment startx;
		-- leftwards:
			decrement startx;
		-- upwards:
			decrement starty;
		-- downwards:
			increment starty;	
	if the destination of startx and starty is valid:
		finalize the coordinates of startx and starty;
		playback(the sound of the conveyor);
	otherwise:
		playback(the sound of the backpedal).
			
This is the factory movement rule:
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
			try righting;
			shift rightwards;
		-- 6: [up left]
			try lefting;
			shift leftwards;
		-- 7: [down right]
			try lefting;
			shift rightwards;
		-- 8: [down left]
			try righting;
			shift leftwards;
		-- 9: [right up]
			try lefting;
			shift upwards;
		-- 10: [right down]
			try righting;
			shift downwards;
		-- 11: [left up]
			try righting;
			shift upwards;
		-- 12: [left down]
			try lefting;
			shift downwards;
		-- 13: [blank -- for purposes of generalizability]
			do nothing.


Chapter AI Logic for Igneous

A Movement is a kind of value.  The Movements are m-forward, m-back, m-right, m-left, and m-pass.  

Table of Choices
Movement		Goodness		facing-direction
m-right		100		hither
m-left		100		hither
m-forward		100		hither
m-back		100		hither
m-pass		100		hither

[To say choices:
	if muted is false:
		say "Evaluating AI movement choices:[line break]";
	repeat with N running from 1 to the number of rows in the Table of Choices:
		choose row N in the Table of Choices;
		say "[movement entry]:  [Goodness entry], [facing-direction entry] .";]


To decide which number is the hypothetical floor tile for (X - a number) and (Y - a number):
	let gridrow be entry Y of the tile-array of the robogrid;
	decide on entry X of gridrow.

[TODO:  this code should be refactored with the 'righting' and 'lefting' code in Movement Rules above.]
To decide which facing-direction is the future-direction for (rotation - a movement) and (existing-direction - a facing-direction):
	if the existing-direction is:
		-- right:
			if rotation is:
				-- m-right:
					decide on hither;
				-- m-left:
					decide on yonder;
		-- left:
			if rotation is:
				-- m-right:
					decide on yonder;
				-- m-left:
					decide on hither;
		-- hither:
			if rotation is:
				-- m-right:
					decide on left;
				-- m-left:
					decide on right;
		-- yonder:
			if rotation is:
				-- m-right:
					decide on right;
				-- m-left:
					decide on left;


[Calculate the {X, Y, facing-direction} of a proposed movement, and store the results in the Table of Choices]
To calculate the future results of (choice - a movement):
	let X be entry 1 of the grid-coordinate of the character of the robot;
	let Y be entry 2 of the grid-coordinate of the character of the robot;
	let D be the facing-direction of the robot;
	[simulate the robot moving by telecommand:]
	if the choice is:
		-- m-forward:
			if D is:
				-- right:
					increment X;
				-- left:
					decrement X;
				-- hither:
					increment Y;
				-- yonder:
					decrement Y;
		-- m-back:
			if D is:
				-- right:
					decrement X;
				-- left:
					increment X;
				-- hither:
					decrement Y;
				-- yonder:
					increment Y;
		-- m-right:
			if D is:
				-- right:
					now D is hither;
				-- left:
					now D is yonder;
				-- hither:
					now D is left;
				-- yonder:
					now D is right;
		-- m-left:
			if D is:
				-- right:
					now D is yonder;
				-- left:
					now D is hither;
				-- hither:
					now D is right;
				-- yonder:
					now D is left;
	[simulate the floor moving immediately afterward:]
	if the destination of X and Y is valid:[This checks for out of bounds and UV laser crossing]
		let T be the hypothetical floor tile for X and Y;
		if T is:
			-- 1: [left]
				if X is not 1, decrement X;  [moving floor won't send us through walls!]
			-- 2: [right]
				if X is not 5, increment X;
			-- 3: [up]
				if Y is not 1, decrement Y;
			-- 4: [down]
				if Y is not 5, increment Y;
			-- 5: [up right]
				now D is the future-direction for m-right and D;
				if X is not 5, increment X;
			-- 6: [up left]
				now D is the future-direction for m-left and D;
				if X is not 1, decrement X;
			-- 7: [down right]
				now D is the future-direction for m-left and D;
				if X is not 5, increment X;
			-- 8: [down left]
				now D is the future-direction for m-right and D;
				if X is not 1, decrement X;
			-- 9: [right up]
				now D is the future-direction for m-left and D;
				if Y is not 1, decrement Y;
			-- 10: [right down]
				now D is the future-direction for m-right and D;
				if Y is not 5, increment Y;
			-- 11: [left up]
				now D is the future-direction for m-right and D;
				if Y is not 1, decrement Y;
			-- 12: [left down]
				now D is the future-direction for m-left and D;
				if Y is not 5, increment Y;
			-- 13: [blank -- for purposes of generalizability]
				do nothing;
		[store the final hypothetical facing-direction in our Table]
		now the facing-direction corresponding to a Movement of choice in the Table of Choices is D;
		[convert the final x,y position into a 'Goodness" value which is the distance to Marv's column]
		let PX be entry 1 of the grid-coordinate of the Marv-sprite;
		now the Goodness corresponding to a Movement of choice in the Table of Choices is the absolute value of (X - PX); 
	otherwise:   [FAIL:  either x,y is out of bounds or the move would make us cross the UV laser]
		now the Goodness corresponding to a Movement of choice in the Table of Choices is 1000.			

[Assumes the Table of Choices has already been fleshed out by hypothetical calculations above.]
To decide which movement is the best choice:
	sort the Table of Choices in Goodness order;
	let G1 be the Goodness in row 1 of the Table of Choices;
	let G2 be the Goodness in row 2 of the Table of Choices;
	if G1 is G2:  [break a tie by looking at facing-direction]
		if the facing-direction in row 1 of the Table of Choices is hither:
			decide on the movement in row 1 of the Table of Choices;
		otherwise if the facing-direction in row 2 of the Table of Choices is hither:
			decide on the movement in row 2 of the Table of Choices;
		otherwise if the facing-direction in row 1 of the Table of Choices is right:
			decide on the movement in row 1 of the Table of Choices;
		otherwise if the facing-direction in row 1 of the Table of Choices is left:
			decide on the movement in row 1 of the Table of Choices;
		otherwise:
			decide on the movement in row 2 of the Table of Choices;
	otherwise:
		decide on the movement in row 1 of the Table of Choices.


[The main AI algorithm]
To decide which number is an AI move:
	if the facing-direction of the robot is hither and entry 1 of the grid-coordinate of the character of the robot is 5:
		decide on 7;  [screw prediction, just FIRE!  keeps things fun!]
	otherwise:
		repeat with N running from 1 to the number of rows in the Table of Choices:
			calculate the future results of the movement in row N of the Table of Choices;
		let M be the best choice;
		if M is:
			-- m-forward:
				decide on 5;
			-- m-back:  
				decide on 2;
			-- m-left:  
				decide on 1;
			-- m-right:  
				decide on 4;
			-- m-pass:  
				decide on 0.
	
[
1. CCW
2. Back 1
3. Spin 180
4. CW
5. Forward 1
6. Foward 3
7. Fire Lazzzzzer!
8. scanning beam
9. sound effects
0. Spin 360 (effectively NOP)]	


To do RobotAttack:
	say "[one of]The mad scientist[or]The would-be world dictator[or]The man in the white lab coat[as decreasingly likely outcomes] [one of]presses[or]mashes[or]runs his hand over[or]selects[or]pokes at[or]manipulates[or]punches[or]taps on[in random order] a couple buttons.";
	repeat with i running from 1 to 2:
		change lastDialed to "";
		let N be an AI move;
		change lastDialed to "[N]";
		playTouchToneString;
		do RobotControl.

Chapter Verbs

Section Abouting

Understand "about" as abouting.

Abouting is an action out of world.

Carry out abouting:
	say aboutText.

Section Answering

Understand the command "answer" as something new.

Understand "answer" as simpleAnswering. simpleAnswering is an action applying to nothing.

Carry out simpleAnswering:
	say "Answer? What was the question?"
	
Understand "answer [a thing]" as complexAnswering. ComplexAnswering is an action applying to one thing.

Carry out complexAnswering:
	say "It seems that [the noun] is not impressed by your answer."
	
Instead of complexAnswering someone (called the party):
	if the party is amelia:
		say "But your phone didn[apostrophe]t ring!";
	otherwise:
		say "[lame talk]".
		

Section Asking

Before asking the player about something:
	say "[noSelfTalking]";
	stop the action.
	
Section Crediting

Understand "credit" or "credits" as asking for help.

Section Hide

Hiding is an action applying to nothing. Understand "hide" as hiding.

Carry out hiding:
	do nothing.
	
Report hiding:
	say "You look around for a good place to hide, but don[apostrophe]t see any good places."
	
Section Insert

Understand the command "connect" as "attach".

Understand the command "plug" as "insert". 
Understand the command "stick" as "insert".

Instead of tying the ultracapacitor power module to something (called the receptor):
	try inserting the ultracapacitor power module into the receptor.

Section Lick

Understand "lick [a thing]" as tasting.
		
Section Listening
[Listen is implemented through insteads. Override this general instead rule with more specific ones as needed]

Instead of listening:
	say "You hear ";
	if the location is:
		-- Ophthalmology Office:
			say "[one of]Trevor and Doctor Giblets performing their eye exam on you[or]your own breathing[or]a slight buzzing from the refractor[or]shoppers and tourists walking along Wisconsin Avenue just outside the office[or]traffic on the street outside the office[in random order].";
		-- Wisconsin Avenue:
			say "[one of]the Sunday morning traffic along Wisconsin Avenue[or]a bus rumbling down the street[or]a rowdy bunch of college kids down the block[or]a flock of tourists being released into the wild[or]someone having a loud conversation on a cell phone[in random order].";
		-- CornerNW:
			say "[one of]heavy traffic on a nearby highway[or]the beeping horn of a taxi[or]a truck backing up[or]distant police sirens[in random order].";
		-- Poletop:
			say "[one of]the whistle of the wind[or]your own heart thumping[or]your own heavy breathing[or]the blood-curdling call of the turkey vultures that periodically circle near you[or]traffic on the street below[or]sounds from a construction crew[in random order].";
		-- Factory:
			say "[one of]relays clicking on and off[or]the crackle of electrical energy[or]the creaking of conveyor belts[or]the whir of servos[or]the sound of capacitor banks charging[or]metallic clanking[or]the rumble of industrial motors[in random order]."


Section Looking Under

Instead of looking under the noun:
	try searching the noun instead.
	
Section Looking

Understand "look [a visible thing]" as examining.
['Look outside' or 'look stool' should work.]

Section Mounting

Understand "mount [a thing]" as entering.

Section Narrowing

Narrowing is an action applying to one thing. Understand "narrow [a thing]" as narrowing. 

Carry out narrowing:
	say "You are not sure how to narrow [a noun]."
		
Section Putting

Understand the command "place" as "put".

Section Reading
		
Understand the command "read" as something new. Reading is an action applying to one thing. Understand "read [a thing]" as reading.

Check reading:
	If the noun is a man:
		say "You've never been good at reading people." instead;
	otherwise if the inscription of the noun is "":
		say "That's not something you can read." instead.
			
Carry out reading:
	say the inscription of the noun;
	say paragraph break.
	
Section Riding

Understand "ride [an enterable thing]" as entering.

Understand "pedal" as entering when the bike encloses the player.

Section Showing

Before showing something (called the item) to the player:
	try examining the item;
	the rule fails.

Section Smelling

Instead of smelling:
	if the location is:
		-- Ophthalmology Office:
			say "Like most medical offices, a slight twinge of disinfectant hangs in the air.";
		-- Wisconsin Avenue:
			say "You smell [one of]a whiff of fine perfume, which marks the trail of a recent passerby[or]the exhaust of a city bus[or]the aroma of cooking burgers from the restaurant at the corner. Yum[in random order].";
		-- CornerNW:
			say "[One of]Taking a lung of air[or]Sniffing the air here[or]Breathing in[or]Smelling your surroundings[at random], you [one of]detect[or]recognize[or]perceive[or]distinguish[or]pick out[at random] the [one of]scent[or]odor[or]distinctive smell[at random] of [one of]the diesel exhaust of a late eighties model Volkswagen[or]a sugar-substitute commonly used in the production of low-calorie Boston Kreme donuts[or]the same heavy machine oil used to lubricate the track of the rotating roofs at Mauna Kea Observatory[or]very dilute hydralazine, a reactive chemical used in combination with certain oxidizers as propellant in some satellites[or]cherry cough syrup. No, wait a minute. You sniff again, more carefully. It is a slightly stale kriek, a cherry-flavored beer. Yes, although it must have been spilled on the sidewalk a few days ago, enough of its putrid aroma lingers for you to identify it as Lindeman[apostrophe]s Kriek, a beer with 5.5% alcohol content manufactured within the last year, and imported from Belgium. You are quite proud of yourself[at random].";
		-- Poletop:
			say "You smell [one of]nothing but the pure, clean air of the stratosphere[or]Congress. You must be downwind of The Capitol. Like any kind of congress, it is musky and dank[or]the winds of change[or]the street below[or]your own fear of heights[at random].";
		-- Factory:
			say "The factory reeks of [one of]mildew[or]machine oil[or]ozone[or]hydraulic fluid and solder smoke. Actually, you rather enjoy the piney smell of melted solder, and it relaxes you[or]over-roasted, bitter coffee[at random].";
		-- Fibber Island:
			say "The arid ocean air carries the floral bouquet of low tide."
			
	
Instead of smelling something (called the odor emitter):
	let the regverb be "smell";
	say "You sniff [the odor emitter]; ";
	if the odor emitter is:
		-- Amelia:
			say "it";
		-- Marv Spindle:
			say "you";
		-- otherwise:
			say "[it-they]";
	say " [the regverb in correct agreement] ";
	if the odor emitter is:
		-- Marv Spindle:
			say "like [one of]you spent 18 hours finishing paperwork at the observatory, the next ten hours flying to the East Coast, and a couple hours worrying over wedding plans with Amy and your in-laws, with no time for sleep or showers thrown into the mix. In short, not great[or]less wonderful than you would on a typical day[stopping]";
		-- refractor:
			say "almost imperceptively of machine oil";
		-- Trevor:
			say "like cheap cologne";
		-- Doctor Giblets:
			say "of hand cleanser";
		-- Amelia:
			if amelia is not digested:
				say "like a new phone (like a new car, but smaller)";
			otherwise:
				say "a bit like your breakfast";
		-- bike:
			say  "like Cherry Coke. You have no idea why";
		-- hotel entrance:
			say "like bubblegum";
		-- ultracapacitor power module:
			say "like bakelite and gunpowder";
		-- metal locker:
			say "like an industrial dumpster that has been home to a family of feral cats for several years";
		-- otherwise:
			say "as you would expect";
	say "."

Section Talking

Talking is an action applying to one thing. Understand "talk to [something]" as talking.

Rule for reaching inside a room when the current action is talking:
	allow access.

Check talking:
	if the noun is not a person:
		say "People will say you're odd if you make of habit of talking to [the noun]." instead.
		
Carry out talking:
	say "[lame talk]".
	
To say lame talk:
	say "You can ASK or TELL someone ABOUT something."
	
Section Telling

Before telling the player about something:
	say "[noSelfTalking]";
	stop the action.
	
Section Toggle Sound Support

Soundtoggling is an action out of world. Understand "togglesound" as soundtoggling.

Carry out soundtoggling:
	if sound_suppress is false:
		now sound_suppress is true;
	otherwise:
		now sound_suppress is false.
		
This is the toggle sound rule:
	try soundtoggling.
	
Section Touch
[ Touching is implemented through an after rule, which is nice in terms of making use of existing relationships about whether something is touchable or not. If an item has a texture attribute, this rule makes use of it.]

Instead of touching a fardrop:
	say "[The noun] is too far away to touch."

After touching something (called the item):
	let T be indexed text;
	if the item is the player:
		say "You feel normal. Nothing out of the ordinary, really.";
	otherwise:
		let the regverb be "feel";
		if the texture of the item is "":
			let the T be "[one of]unremarkable[or]as you'd expect[or]like [it-they] should[or]normal[in random order]";
		otherwise:
			let T be the texture of the item;
		if the item is part of the player:
			say "Your";
		otherwise:
			if the item is not proper-named:
				say "The";
		say " [item] [the regverb in correct agreement] [T]."
	
[So many things are smooth and possibly metallic that we'll indulge in this petty optimization. Or, at least, I think it is an optimization.]
To say smooth:
	say "smooth".
	
To say metallic:
	say "[smooth] and metallic". 

Section Walkthroughing

Walkthroughing is an action applying to nothing. Understand "walkthrough" as walkthroughing.

Carry out walkthroughing:
	say "Are you sure you want to see the walkthrough? It shows the fastest, but not necessarily most enjoyable way through the game. By necessity, it is filled with spoilers. If you want to explore the game, but still receive some assistance,  you would be better off using the context-specific hints by entering [quotation mark]hints[quotation mark] at the prompt.[paragraph break]So, again, are you absolutely sure you want to see the walkthrough?";
	if the player consents:
		say "[walkthroughText][paragraph break]";
	otherwise:
		say "Phew."

Section Xyzzying

Xyzzying is an action applying to nothing.  Understand "xyzzy" as xyzzying.

Carry out xyzzying:
	if the updateNumber is less than 2:
		change the updateNumber to 2;
		if sound is available:
			play(the sound of the update);
		if Eye Exam is happening:
			say "[quotation mark]Ah, good. That[apostrophe]s the second line of the chart,[quotation mark] remarks Doctor Giblets.";
		otherwise if Exterior is happening:
			say "In the distance, you see a large, blue thing. You can[apostrophe]t quite tell what it is, and then it is gone.";
		otherwise if Cunning Plan is happening:
			say "The ultraviolet laser web ripples with energy.";
	otherwise:
		say "Nothing happens."		

Chapter Phone Actions

[The general form of these is:
	
- persuasion rule for Amelia: she'll do it. Make it a success.
- definition of the action and its synonyms
- carry out rule: what happens the player types this without invoking amelia
- instead -- what happens when amelia is correctly invoked.
]

Section Word of Power Amelia

Section Ameliaing

Ameliaing is an action applying to nothing.

Understand "amelia" as ameliaing.

Persuasion rule for asking Amelia to try ameliaing:
	say "[quotation mark]Reflexive commands are just plain rude,[quotation mark] complains your phone.";
	persuasion fails.
	
Carry out Ameliaing:
	say "Your mangoFONE flashes red, and then says, [quotation mark]Error. [VoiceCommandPrompt][quotation mark][paragraph break][quotation mark][tutorPrompt][quotation mark][paragraph break]".

	
Section Appsing
[fairly hardwired for now]

Appsing is an action applying to nothing.

Understand "apps" or "applications" as appsing.

Persuasion rule for asking Amelia to try appsing:
	persuasion succeeds.

Carry out appsing:
	say "[errorPrompt]".

Instead of Amelia appsing:
	say "Amelia replies, [quotation mark]The following apps are available:  [if cowLicense is greater than zero]Angry Cows, [end if]Flashlight, [if currentUpdateLevel is 1]and [end if]Night Sky[if currentUpdateLevel is greater than 1], and Trees versus Mummies[end if]. To launch an app, just say [bold type]Amelia, followed by the name of the application[roman type].[quotation mark][paragraph break]";
	the rule succeeds.
	
	
Section Calendaring

Calendaring is an action applying to nothing.

Understand "calendar" or "journal" or "date book" or "appointments" as calendaring.

Persuasion rule for asking Amelia to try calendaring:
	persuasion succeeds.

Carry out calendaring:
	say "[errorPrompt]".

Instead of Amelia calendaring:
	say "The phone surges blue, and says, [quotation mark]Next appointment at six o’clock in the evening: wedding rehearsal. Hotel at corner of 4th and I streets. Constitution ballroom.[quotation mark][paragraph break]";
	the rule succeeds.
	

Section Caveating

Caveating is an action applying to nothing.

Understand "guarantee" or "caveat emptor" as caveating.

Persuasion rule for asking Amelia to try caveating:
	persuasion succeeds.

Carry out caveating:
	say "[errorPrompt]".

Instead of Amelia caveating:
	say "The phone explains, [quotation mark]It means, we hope you like it.[quotation mark][paragraph break]";
	the rule succeeds.


Section Commanding

Commanding is an action applying to nothing.

Understand "command" or "commands" as commanding.

Persuasion rule for asking Amelia to try commanding:
	persuasion succeeds.

Carry out commanding:
	say "[errorPrompt]".
	
Instead of Amelia commanding:
	say "Your phone sighs, and little tufts of deep purple clouds animate over the obsidian surface. [quotation mark]Yes. That was very literal. Let me be more clear: to tell me to do something, say a command in the form of [bold type]Amelia, command[roman type], where command is what you want me to do, and not actually the word command[one of], as I suspect you already know, but were testing me[or][stopping].[quotation mark][paragraph break][quotation mark][tutorPrompt][quotation mark][paragraph break]";
	if sound is available:
		play(sound of the error);
	the rule succeeds.
	
Section Cowing

Cowing is an action applying to nothing.

Understand "angry cows" or "cows"or "angry" or "cow" or "bovine" or "moo" as cowing when cowLicense is greater than zero.

Persuasion rule for asking Amelia to try cowing:
	persuasion succeeds.

Carry out cowing:
	say "[errorPrompt]".
	
Instead of Amelia cowing:
	if cowLicense is greater than 1:
		playback(the sound of the moo);
	if cowLicense is:
		-- 4: say "The cows fight viciously against their mortal enemies. After some time, the phone determines that you are not actively playing the game, the mooing fades, and the cows come home.";
		-- 3: say "Cows leap into action, mercilessly slaughtering their sworn enemies, the hedgehogs. It is a metaphor for life.";
		-- 2: say "You cry havoc and let slip the cows of war.";
		-- 1: say "Your trial license for Angry Cows has expired, and the application has been removed from your device. To purchase Angry Cows or Angry Cows 2: Bovine Retribution, please visit the Mango Intellectual Properties Store.";
	decrease cowLicense by one;
	the rule succeeds.
	
Section Flashing

Flashing is an action applying to nothing.

Understand "flashlight" or "flash light" or "torch" or "light" as flashing.

Persuasion rule for asking Amelia to try flashing:
	persuasion succeeds.

Carry out flashing:
	say "[errorPrompt]".
	
Instead of Amelia flashing:
	if Eye Exam is happening: 
		say "The entire body of the phone glows with strong, white light. [one of][paragraph break][quotation mark]Hey, cut that out,[quotation mark] whines Trevor, [quotation mark]we’re trying to do an eye exam here.[quotation mark][paragraph break][or][stopping]You turn it off quickly to avoid interrupting the eye exam. ";
	else if Exterior is happening:
		say "The phone glows, but it doesn't add much in the midday sun, so you turn it off to save some battery. ";
	else if Cunning plan is happening:
		if Amelia is not lit:
			say "The mangoFONE focuses its energy into a tight, white beam[one of]. You carefully aim it away from your eyes to avoid being blinded[or][stopping].";
			now Amelia is lit;
		otherwise:
			say "The light from your phone fades out.";
			now Amelia is not lit;
	the rule succeeds.
	
Section Messaging

Messaging is an action applying to nothing.

Understand "message", "messages", "text", "text message", "message transcript", "transcribed message", "voice message","voice messages","text messages", "transcribed messages", "voice mail", "play message", "play messages" or "voicemail" as messaging.

Persuasion rule for asking Amelia to try messaging:
	persuasion succeeds.

Carry out messaging:
	say "[errorPrompt]".

Instead of Amelia messaging:
	say "The phone twinkles pink and light green, then announces, [quotation mark][run paragraph on]";
	if currentMessage is "":
		say "No messages have been received. Sorry, Marv.[quotation mark][paragraph break]";
	otherwise:
		if messageAlert is true:
			say "Now playing new transcribed voice message:";
			now messageAlert is false;
			now Amelia is message-played;
			change the turnCounter to zero;
			[to generalize this, give each message a number and keep track of
			 which message number was played]
		otherwise:
			say "Now playing most recently received transcribed voice message:[run paragraph on]";
		say "[quotation mark][paragraph break][currentMessage][paragraph break]";
	the rule succeeds.

	
Section Phoning

Phoning is an action applying to nothing.

Understand "phone" or "dial" as phoning.

Persuasion rule for asking Amelia to try phoning:
	persuasion succeeds.

Carry out phoning:
	say "[errorPrompt]".
	
Instead of Amelia phoning:
	say "A ring of orange light cork screws along the surface of the phone. The phone replies, [quotation mark]After the word phone, please say a series of numbers or a name to dial.[quotation mark][paragraph break]";
	the rule succeeds.
	
Section PhoneToing

PhoneToing is an action applying to one topic.

Understand "phone [text]" or "call [text]" or "dial [text]" as phoneToing.

Persuasion rule for asking Amelia to try phoneToing:
	persuasion succeeds.
	
Carry out phoneToing:
	say "[errorPrompt]".

Instead of Amelia phoneToing:
	let T be indexed text;
	let T be the player's command;
	replace the regular expression "^amelia\s*,\s*" in T with "";
	replace the regular expression "(dial|phone|call)\s*" in T with "";
	if T matches the regular expression "7183876962":
		if Cunning Plan is Happening:
			change lastDialed to T;
			playTouchToneString;
			say "[rapture]";
			change the endgame to rapture;
			end the game in victory;
			stop;
		otherwise:
			say "Your mangoFONE pulses red briefly, but remains strangely silent.";
	if T matches the regular expression "^<0-9>+$":
		let n be the number of characters in T;
		if n is greater than 10:
			say "Your mangoFONE fades to a deep purple and says, [quotation mark]Error: Phone numbers are limited to a maximum of ten digits.[quotation mark][paragraph break]";
			change lastDialed to "";
		otherwise:
			say "The phone shimmers with golden sparkles, and says, [quotation mark]Dialing number: [T].[quotation mark][paragraph break]";
			change lastDialed to T;
			say "You hear a ";
			if n is:
				-- 1: say "single";
				-- 2: say "couple";
				-- 3: say "few";
				-- otherwise: say "series of";
			say " loud touch-tone[if n is greater than one]s[end if].";	
			playTouchToneString;
			if the cunning plan is happening:
				do robotControl;
	else:	
		if T matches the regular expression "amelia", case insensitively:
			say "The phone flashes grey for an instant, then replies, [quotation mark]I am here, Marv. Please tell me who to call.[quotation mark][paragraph break]";
		otherwise:
			say "Waves of green chase each other around the phone's surface as it says, [quotation mark]Dialing [T].[quotation mark][noNetwork]";
	the rule succeeds.
	
To playTouchToneString:
	repeat with n running from 1 to the number of characters in lastDialed:
		let c be character number n in lastDialed;
		if c is "1":
			playback(the sound of the dtmf-one); 
		else if c is "2":
			playback(the sound of the dtmf-two);
		else if c is "3":
			playback(the sound of the dtmf-three);
		else if c is "4":
			playback(the sound of the dtmf-four);
		else if c is "5":
			playback(the sound of the dtmf-five);
		else if c is "6":
			playback(the sound of the dtmf-six);
		else if c is "7":
			playback(the sound of the dtmf-seven);
		else if c is "8":
			playback(the sound of the dtmf-eight);
		else if c is "9":
			playback(the sound of the dtmf-nine);
		else if c is "0":
			playback(the sound of the dtmf-zero).
	
Section Remapping

CoordinateMaker is a thing. The CoordinateMaker has a list of numbers called the coordinates.

To makeCoordinates of (x - a number) and (y - a number):
	change the coordinates of CoordinateMaker to {};
	add x to the coordinates of the CoordinateMaker;
	add y to the coordinates of the CoordinateMaker.
	
Remapping is an action applying to nothing. Understand "allotheria" as remapping.

Carry out remapping:
	let L be a list of numbers;
	let leftneighbor be a number;
	let upperneighbor be a number;
	let t be a number;	
	let StartTiles be { 1, 2, 5, 12};
	repeat with row running from 1 to 4:
		repeat with column running from 1 to 5:
			makeCoordinates of column and row;
			let L be the coordinates of the CoordinateMaker;
			if column is greater than 1:
				let leftneighbor be entry (column minus 1) of entry row of the tile-array of robogrid;
			if row is greater than 1:
				let upperneighbor be entry column of entry (row minus 1) of the tile-array of robogrid;
			let r be a random number between 1 and 10;
			if row is 1:
				if column is 1:
					change t to 13;
				otherwise if column is 2:
					let s be a random number between 1 and the number of entries in StartTiles;
					change t to entry s of StartTiles;
				otherwise: [top row----------------------------]
					if leftneighbor is 1: [left belt]
						if r is less than 8:
							change t to 1;[more left belt]
						otherwise:
							change t to 6;[upleft]
					otherwise if leftneighbor is 2: [right belt]
						if r is less than 8:
							change t to 2; [more right belt]
						otherwise:
							change t to 10; [right down]
					otherwise if leftneighbor is 5: [up right]
						if r is less than 8:
							change t to 2; [more right]
						otherwise:
							change t to 10; [right down]
					otherwise if leftneighbor is 12: [left down ]
						if r is less than 8:
							change t to 1; [more left]
						otherwise:
							change t to 6; [up left]
					otherwise:
						if r is less than 6:
							change t to 1; [left]
						otherwise:
							change t to 2; [right]						
			otherwise: [rows in the middle----------------------]
				if upperneighbor is 4 or upperneighbor is 10 or upperneighbor is 12: [downgoing]				
					if r is less than 7:
						change t to 4;
					otherwise if r is less than 9:
						change t to 7;
					otherwise:
						change t to 8;
				otherwise if upperneighbor is 3 or upperneighbor is 9 or upperneighbor is 11:[upgoing ]
					if r is less than 7:
						change t to 3;
					otherwise if r is less than 9:
						change t to 5;
					otherwise: 
						change t to 6;
				otherwise if leftneighbor is 1 or leftneighbor is 11 or leftneighbor is 12:[ left going ]
					if r is less than 7:
						change t to 1;
					otherwise if r is less than 9:
						change t to 6;
					otherwise:
						change t to 8;
				otherwise: [right going & other]
					if r is less than 7:
						change t to 2;
					otherwise if r is less than 9:
						change t to 9;
					otherwise:
						change t to 10;	
			place tile t at coordinate L of robogrid;
	follow the window-drawing rules for the graphics-window.

	
Report remapping:
	say "You invoke the chant of the ancient mammals to magically transform the world!"
	
Section Skying

Skying is an action applying to nothing.

Understand "sky" or "night" or "night sky" as skying.

Persuasion rule for asking Amelia to try skying:
	persuasion succeeds.

Carry out skying:
	say "[errorPrompt]".
	
Instead of Amelia skying:
	say "The dark background makes this app easier to see. [if Marv Spindle is dilated]You can’t distinguish individual starts, but as a professional astronomer, you have no trouble making out the shape of individual constellations[otherwise]As a professional astronomer, you immediately recognize the stars and constellations[end if]. As you change orientations, the image on the phone rotates, fixed on the heavens.";
	the rule succeeds.
	
Section Time

Timing is an action applying to nothing.

Understand "time" as Timing.

Persuasion rule for asking Amelia to try timing:
	persuasion succeeds.

Carry out timing:
	say "[errorPrompt]".
	
Instead of Amelia timing:
	say "A red dot ticks back and forth playfully on the phone's surface, and it announces, [quotation mark]The current local time is [time of day in words].[quotation mark][paragraph break]";
	the rule succeeds.

Section Time Travel

Timetraveling is an action applying to nothing.

Understand "time travel" as Timetraveling.

Persuasion rule for asking Amelia to try timetraveling:
	persuasion succeeds.

Carry out timetraveling:
	say "[errorPrompt]".
	
Instead of Amelia timetraveling:
	say "You feel yourself thrust forward one second in time.";
	the rule succeeds.
	
Section Travel

Traveling is an action applying to nothing.

Understand "travel", "travel module", "map", "maps","navigate", "gps", "guidance", "location", "navigation", "direction" or "directions" as Traveling when the currentUpdateLevel is greater than zero.

Persuasion rule for asking Amelia to try Traveling:
	persuasion succeeds.

Carry out Traveling:
	say "[errorPrompt]".
	
Instead of Amelia Traveling:
	if gpsBars is zero:
		say "[quotation mark]Advanced real time navigation activated. [run paragraph on]";
		if Exterior is not happening:
			say "Attempting to acquire GPS lock.[quotation mark][paragraph break][quotation mark]Stand-by. [quotation mark][paragraph break][quotation mark]Stand-by. [quotation mark][paragraph break][quotation mark]No GPS satellites detected. Shutting down travel mode.[quotation mark][paragraph break]";
		otherwise:
			change the gpsBars to a random number between two and five;
			say "GPS position acquired. Next destination retrieved from calendar: the hotel at 4th and I Street. To deactivate navigation, repeat the same phrase.[quotation mark][paragraph break]";
	otherwise:
		say "Amelia replies, [quotation mark]Deactivating real time navigation.[quotation mark][paragraph break]";
		change gpsBars to zero;
	the rule succeeds.
	
Section Treeing

Treeing is an action applying to nothing.

Understand "trees" or "mummies" or "trees versus mummies" as treeing when the currentUpdateLevel is greater than 1.

Persuasion rule for asking Amelia to try treeing:
	persuasion succeeds.

Carry out treeing:
	say "[errorPrompt]".
	
Instead of Amelia treeing:
	say "[one of]A nice concept, but boring in the implementation: the mummies rest eternally in their sarcophagi and the trees grow serenely nearby, at the edge of an oasis. You turn it back off after a while[or]The trees rustle gently in the wind on the shores of the Nile, and the sun sets behind a pyramid. Without warning, text scrolls up the screen, breaking mummesis[or]It seems to be a draw. The trees and the mummies continue to coexist. The score is zero[stopping].";
	the rule succeeds.

	
Section Updating

Updating is an action applying to nothing.

Understand "update", "updates", "install updates", "install update", "show update", "show updates" as updating.

Persuasion rule for asking Amelia to try updating:
	persuasion succeeds.

Carry out updating:
	say "[errorPrompt]".

Instead of Amelia updating:
	if updates are available:
		perform update;
		if sound is available:
			play(the sound of the okay); 
	otherwise: 
		say "No new updates are available. The most recent update was installed at [lastUpdateTime] and installed [title corresponding to the patchLevel of currentUpdateLevel in the Table of Updates], [description corresponding to the patchLevel of currentUpdateLevel in the Table of Updates].[paragraph break]";
	the rule succeeds.
	
	
Table of Updates
patchLevel	title	description	
1	"Travel Module"	"which provides context-sensitive turn by turn directions"
2	"Trees versus Mummies"	"a diverting new game"


To perform update:
	say "Tiny blue dots of light dance under the smooth, black glass skin of the phone.  The phone reports:[paragraph break]";
	repeat with i running from (the currentUpdateLevel plus one) to updateNumber:
		say "Installing [title corresponding to the patchLevel of i in the Table of Updates][run paragraph on]";
		if timekeeping is available:
			repeat with x running from 1 to 20:
				say ".[run paragraph on]";
				wait 50 ms before continuing, strictly;
		otherwise:
			say "............. [run paragraph on]";
		say "installed.";
	change currentUpdateLevel to updateNumber;
	change lastUpdateTime to the time of day.

	
Section Warranting

Warranting is an action applying to nothing.

Understand "warranty" or " guaranty" or "warrantee" or "guarantee" as warranting.

Persuasion rule for asking Amelia to try warranting:
	persuasion succeeds.

Carry out warranting:
	say "[errorPrompt]".

Instead of Amelia warranting:
	say "All Mango Industry Products are provided with a comprehensive  [quotation mark]Caveat Emptor[quotation mark] guarantee.";
	the rule succeeds.
	

Chapter General Insteads

Section Examining

Instead of examining something fuzzy (called the item):
	if Eye Exam is happening:
		if Marv Spindle is dilated:
			say "It must be an effect of those drops. Everything is blurry.[no line break][one of][quotation mark]Doc? Everything[apostrophe]s blurry.[quotation mark][paragraph break][quotation mark]Yes, it[apostrophe]s those drops.[quotation mark][paragraph break]Just as you had suspected.[no line break][or][stopping][paragraph break]";
		otherwise:
			if the item is: 
				-- refractor:
					say "It is so close to your face that you can't focus on it. The best you can do is look through it at the eye chart.";					
				-- otherwise:
					say "Sitting in the deliberate darkness of an ophthalmologist's office, you can't see anything but the eye chart.";
	otherwise:
		if Cunning Plan is happening:
			continue the action;
		otherwise:
			say "[one of]Your eyes are too blurry to get a good look at [the item][or]You narrow your eyes, but can[apostrophe]t focus properly on [the item][or][The item] [is-are] a blur to you[or]The drops are still affecting your eyes. You can[apostrophe]t see any detail about [the item][at random]."	
			
Section Jumping

Instead of Jumping:
	if the location is:
		-- the ophthalmology office:
			increase the jumpitude by one;
			if jumpitude is 5:
				say "Some deeply repressed self-destructive tendency compels you to jump one final time, driving a small, angular bone known as the vomer backwards into a part of your brain that considers itself important just because it keeps you alive. That part of the brain takes umbrage at being impaled by a bone that properly belongs in the nose, and stops telling your heart to beat. This greatly inconveniences your blood, which stops flowing to your lungs, and the whole thing comes full circle, when your oxygen-deprived brain just up and quits.";
				change the endgame to vomered;
				end the game in death;
			otherwise:
				say "[one of]You bump your nose on the refractor[or]Again, you bump your nose on the refractor[or]Even George Bush was smart enough to misquote the line about fooling himself once. Your nose is getting quite sore[or]You continue to abuse both your nose and the refractor[stopping].";
		-- wisconsin avenue:
			say "You hop up and down on a major road running through Georgetown. You hope no one sees you, but it does feel good, after having been cooped up in a dark room for so long.";
		-- cornerNW:
			say "If you want to go up, climb the pole, eh?";
		-- poletop:
			say "You cast yourself back from the pole and enjoy several seconds of freefall.  [onTheWayDown]";
			plummet;
		-- factory:
			if the metal locker encloses the player and the metal locker is closed:
				if the metal locker is not jumpy:
					say "You whack your head on the cover of the metal locker and see stars.";
					now the metal locker is jumpy;
				otherwise:
					say "Not profiting from your previous encounter with the heavy metal cover of the locker, you jump again with the agility of an Olympic pole-vaulter, slamming your head into the top of the locker. This time, you lose consciousness. When you wake, you find that you have been killed by a laser-wielding robot.";
					change the endgame to lasered;
					end the game in death;
			otherwise:
				say "You jump up and down, fruitless, except for your mangoFONE."
			
Section Hiding

Instead of Hiding:
	if the location is:
		-- ophthalmology office:
			say "In the dark, it is difficult to find a place not to hide.";
		-- wisconsin avenue:
			say "You are standing on a busy city street. The best that you can manage is to pretend that you are a flesh-colored lump on the sidewalk, and hope that no one notices you. Or steps on you.";
		-- cornerNW:
			say "You try to blend in your surroundings.";
		-- poletop:
			say "Surely, no one will notice a man clinging to a tall pole.";
		-- fibber island:
			say "Don[apostrophe]t worry, you are the least interesting thing on Fibber Island.";
		-- factory:
			if the metal locker encloses the player:
				say "This is as hidden as you can get!";
			otherwise:
				if the metal locker is closed:
					say "The only place to hide seems to be metal locker, but you would have to open its cover first.";
				otherwise:
					try entering the metal locker.
					
Section Swearing

Instead of swearing obscenely:
	say "Got to watch that -- swearing upsets Amy."
				
Section Taking Inventory

Instead of taking inventory: [purloined from Persephone, example 62 in I7 documentation]
	say "You're carrying [a list of things carried by the player]."

	
Chapter General Afters

Section Undoing


Chapter Not Ready For Prime Time - Not for release

Section Autopilot

Autopiloting is an action out of world. Understand "autopilot" as autopiloting.

Carry out autopiloting:
	if autopilot is true:
		change autopilot to false;
	otherwise:
		change autopilot to true.
	
		
Report autopiloting:
	say "[bracket]Autopilot is [if autopilot is true]On[otherwise]Off[end if][close bracket][line break]".

Section Draining

Draining is an action out of world. Understand "drain" as draining.

Carry out draining:
	change the phoneCharge to 5.
	
Report draining:
	say "Phone drained to 5 units."
	
Section Muting

[To reduce the clutter during debugging]
Muting is an action out of world. Understand "mute" as muting.

Carry out muting:
	if muted is true:
		change muted to false;
	otherwise:
		change muted to true.
		
Report muting:
	say "[bracket]Mute[if muted is true]On[otherwise]Off[end if][close bracket][line break]".
		
Section Shoot Igneous

Proffoffing is an action out of world. Understand "shootprof" as proffoffing.

Carry out proffoffing:
	do shoot igneous.
	
Report proffoffing:
	say "Zaaapppp!!!! The software tester annihilates [the professor igneous] with a stroke of the keyboard."

Section Shoot Locker

Lockerzapping is an action out of world. Understand "shootlocker" as lockerzapping.

Carry out lockerzapping:
	do shoot locker.
	
Report lockerzapping:
	say "Zeeerrrk! The software tester takes a shot at the Metal Locker."


Section Shoot Marv

Marvoffing is an action out of world. Understand "shootmarv" as marvoffing.

Carry out marvoffing:
	do shoot marv.
	
Report marvoffing:
	say "Kerwallup! The software tester killed Marv with a keyboard."
	
Section Final

Finaling is an action out of world. Understand "final" or "end" as finaling.

Carry out finaling:
		change finalJump to true;
		move the player to the factory.
	
Report finaling:
	say "Now playing the scene [quotation mark]Cunning Plan[quotation mark]."
	
Section Future

Futuring is an action out of world. Understand "future" as futuring.

Carry out futuring:
	change the time of day to 12:55 PM.
	
Report futuring:
	say "It is now 12:55 PM. Welcome to the future."

Section Toggle Graphics Support

Graphicstoggling is an action out of world. Understand "togglegraphics" as graphicstoggling.

Carry out graphicstoggling:
	if graphics_suppress is false:
		now graphics_suppress is true;
	otherwise:
		now graphics_suppress is false.
		
Report graphicstoggling:
	say "Graphics suppression is now [if graphics_suppress is true]on[otherwise]off[end if]."


Section Toggle Unicode Support

Unicodetoggling is an action out of world. Understand "toggleunicode" as unicodetoggling.

Carry out unicodetoggling:
	if unicode_suppress is false:
		now unicode_suppress is true;
	otherwise:
		now unicode_suppress is false.
		
Report unicodetoggling:
	say "Unicode suppression is now [if unicode_suppress is true]on[otherwise]off[end if]."

Section Toggle Status Support

Statustoggling is an action out of world. Understand "togglestatus" as statustoggling.

Carry out statustoggling:
	if status_suppress is false:
		now status_suppress is true;
	otherwise:
		now status_suppress is false.
		
Report soundtoggling:
	say "Status suppression is now [if status_suppress is true]on[otherwise]off[end if]."

Section Toggle Timekeeping Support

Timertoggling is an action out of world. Understand "toggletimer" as timertoggling.

Carry out timertoggling:
	if timekeeping_suppress is false:
		now timekeeping_suppress is true;
	otherwise:
		now timekeeping_suppress is false.
		
Report timertoggling:
	say "Timekeeping suppression is now [if timekeeping_suppress is true]on[otherwise]off[end if]."

Section Debug Only Robot Control

Understand "forward" as forwarding.
Understand "back" as backwarding.
Understand "right" as righting.
Understand "left" as lefting.
Understand "fire" as firing.

	
Chapter Initialize


When play begins:
	activate the Table of Orientation;
	say openingLine1;
	wait for any key;
	say "[bracket]BLIIINNGGGG[close bracket]";
	if sound is available:
		play(the sound of the update); 
	wait for any key;
	[initialize layout of the factory]
	say openingLine2;
	change the time of day to 11:00 AM;
	change the left hand status line to "Power [powerBars graphically] 5G [geeBars graphically] GPS [gpsBars graphically] [Messages] [Updates]";
	change the right hand status line to "".

After printing the banner text:
	say "[italic type]Your interpreter ";
	if glulx sound is supported:
		say "appears to support sound. ";
	otherwise:
		say "does not appear to support sound. It is possible to complete the game without sound, but not recommended. ";
	say "Additionally, your interpreter indicates that it can ";
	if glulx graphics is supported:
		say "display graphics. That[apostrophe]s good, since you[apostrophe]ll need them. ";
	otherwise:
		say "cannot display graphics. The game cannot be completed without graphic capabilities, so you may wish to try another interpreter. ";
	if unicodage is disabled:
		say "This isn[apostrophe]t very common any more, but it also looks like your interpreter does not support Unicode, which means that at some point this game is going to burst into a giant mass of screaming, flaming electrons and crash horribly. In the interest of saving your very soul, you are urged to use another interpreter. ";
	say "Type [quotation mark]help[quotation mark] for instructions, and [quotation mark]hints[quotation mark] for hints if you want them[roman type]."

	
Chapter Every Turn

[note: fires after the turn-specific every turn rule]
Every turn:
	[avoid penalizing time for non-actions, a nuance]
	if the current action is taking inventory or the current action is looking:
		change the time of day to 1 minute before the time of day;
	otherwise:
		increase turnCounter by one;[so don't do this in per-scene-everyturn]
		decrease phoneCharge by one;
		if Amelia is lit:
			decrease phoneCharge by one;
	change powerBars to phoneCharge divided by 25;
	if powerBars is greater than 5, change powerBars to five;
	if phoneCharge is zero:
		if Cunning Plan is happening:
			say cunningPowerDown;
			change the endgame to drainedCunning;
		otherwise:
			say generalPowerDown;
			change the endgame to drainedPathetic;
		end the game in death;
		stop;
	if the time of day is after 1 pm:
		if Cunning Plan is happening:
			say "[tardyCunning]";
			change the endgame to tardyCunning;
		otherwise:
			say "[tardyPathetic]";
			change the endgame to tardyPathetic;
		end the game in death.

Book 2 Places

Chapter The Ophthalmology Office

The Ophthalmology Office is a room. The description of the Ophthalmology office is "The room is pitch dark, except for some light coming through [one of]a device just in front of your nose. Doctor Giblets had mentioned that the device is called a [quotation mark]refractor[quotation mark][or]the refractor device, just in front of your nose[stopping]."

Before printing a locale paragraph about something fuzzy (called the item) when cunning plan has not happened: 
	now the item is mentioned.

The eye chart is a fardrop. It is in the Ophthalmology Office. The first line is part of the eye chart. The description of the first line is "h". The second line is part of the eye chart. The description of the second line is "XZYZZ". The third line is part of the eye chart. The third line can be completed. The third line is not completed. The fourth line is part of the eye chart. The fifth line is part of the eye chart. The eye chart can be read. The eye chart is not read. Understand "1st" as the first line. Understand "2nd" as the second line. Understand "3rd" as the third line. Understand "4th" as the fourth line. Understand "5th" as fifth line. Understand "bottom" as the fourth line. Understand "top" as the first line. Understand "light" as the eye chart.

Does the player mean examining or reading the first line:
	it is very likely.

Instead of reading or examining the first line:
	say "[one of]You have no trouble reading the large letters of the first line: [quotation mark]hv[quotation mark]. Oh wait, that's a greek nu. Ah, some optics humor[or]It says [quotation mark]h nu[quotation mark]. You wonder how many of Doctor Giblets patients are familiar with the Planck constant[or]There[apostrophe]s no challenge in reading such large letters[stopping]."
	
Instead of reading or examining the second line:
	if updateNumber is less than 2:
		say "You read the second line to yourself, unsure how to pronounce it.";
	otherwise:
		if the eye chart is read:
			say "Right, that[apostrophe]s the second line. Don[apostrophe]t wear it out.";
		otherwise:
			say "[one of]You read the second line, [quotation mark]XYZZY[quotation mark], but Trevor replies, [quotation mark]One more line down, Marv. That's the second line.[quotation mark][or][quotation mark]Please read the third line, Marv,[quotation mark] asks Doctor Giblets.[no line break][or]Yes, you've got the second line already. Please read the third one,[quotation mark] instructs Trevor.[or][quotation mark]Right.[quotation mark][stopping][paragraph break]".
	
Instead of reading or examining the third line:
	say "[thirdLineDescription]"..
	
Instead of reading or examining the fourth line:
	if the focus of the refractor is not sharp:
		say "[one of]There is no way you can read tiny letters in the fourth line without being able to make out the ones in the line above it[or]You wonder if anyone can read the nearly microscopic letters in the fourth line. They seem to squirm and wiggle even as you try your best to resolve them[or]You are not able to. Yet[stopping].";
	otherwise:
		if the hasturCount is:
			-- 0: say "[quotation mark]It looks,[quotation mark] you say, [quotation mark]like the fourth line is some kind of name… HASTUR?[quotation mark][paragraph break][quotation mark]Oh you don't need to read that line, Marv. We've got all we need.[quotation mark] Trevor sounds somewhat nervous.";
				increase the hasturCount by one;
			-- 1: say "[quotation mark]Hmm, that fourth line is an odd word.[quotation mark] You can[apostrophe]t help but think that you[apostrophe]ve heard that one before somewhere. Idly, you pronounce it: [quotation mark]HASTUR.[quotation mark][paragraph break][quotation mark]Marv, really. We need to get on with the rest of the exam. You can stop reading that line[quotation mark], advises Doctor Giblets.[paragraph break]Trevor sounds frankly panicked now, though, as he implores [quotation mark]For the love of man, stop reading![quotation mark][paragraph break]";
				increase the hasturCount by one;
			-- 2: say "Once more, you say [quotation mark]HASTUR[quotation mark].[paragraph break]Doctor Giblets lunges at the refractor, trying to pry it from your eyes, while Trevor tears the eye chart from the wall.[paragraph break]But it is too late. [goodbyeWorld].";
			   now the endgame is hastured;
				end the story.
		

To say thirdLineDescription:
	if the focus of the refractor is:
		-- unfocused:
			say "[quotation mark]I can't even tell if they are letters. Does it start with an X or maybe a K?[quotation mark].[paragraph break][quotation mark]No problem,[quotation mark] replies Doctor Giblets. [quotation mark]My initial guess was probably off. Let[apostrophe]s try kicking in a few negative diopters.[quotation mark] The refractor vibrates and makes a ratchety sound as he twists some dials.[paragraph break]";
			now the refractor is  blurry;
		-- blurry:
			say "[quotation mark]Okay, I can tell that it definitely starts with some X[apostrophe]s and I think it ends with an L.[quotation mark][paragraph break][quotation mark]No fair guessing. When we get it right, it should be entirely in focus.[quotation mark] Doctor Giblets makes some more adjustments.";
			now the refractor is diplopic;
		-- diplopic:
			say "The letters are now crisply focused, and you confidently read them off, [quotation mark]X-X-M-M-V-V-E-E-H-H-G-G-A-A-Q-Q-L-L.[quotation mark][paragraph break][quotation mark]Ah, great. But you're seeing double. Trevor -- adjust the convergence.[quotation mark][paragraph break]You hear some clicking and the letters slide together.";
			now the refractor is sharp;
		-- sharp:
			say "[one of]You read off the letters again, [quotation mark]X-M-V-E-H-G-A-Q-L.[quotation mark][paragraph break][quotation mark]Ah, that[apostrophe]s got it! We can whip up some glasses and frames for you with no problem now[or][quotation mark]Right. We've got that line, thanks[or][quotation mark]Yes, you[apostrophe]ve become a veritable expert on that line, Marv[or][quotation mark]No need to read it again, we have everything we need to grind new lenses[or][quotation mark]Right[stopping].[quotation mark][paragraph break]";
			now the eye chart is read;
			now the turnCounter is zero.
			
Instead of doing something with the fifth line:
	say "The eye chart has only four lines (three if you are a computer scientist)."

Instead of reading or examining the eye chart, try searching the refractor.

The refractor is a furniture in the Ophthalmology Office. The refractor has focus. The refractor is unfocused. The texture of the refractor is "cold and metallic". Understand "device" as the refractor. 

Instead of pulling or pushing the refractor, say "It is heavier than it looks. Maybe Trevor clamped it into position so it would stay in proper alignment."

Instead of taking the refractor, say "You can[apostrophe]t -- it[apostrophe]s huge.[no line break][one of] Besides, what would Amy say when you show up at the wedding rehearsal lugging along a couple tons of ophthalmology equipment?[or][stopping][paragraph break]"

Instead of searching the refractor:
	if the focus of the refractor is:
		-- unfocused:
			say "You strain as you peer through the refractor, but you can[apostrophe]t even tell where one letter ends and another begins. [paragraph break][quotation mark]It[apostrophe]s a total blur,[quotation mark] you reply.[paragraph break]Doctor Giblets makes an adjustment.[paragraph break][quotation mark]How about now?[quotation mark][paragraph break]The lines of the letters sharpen up. [quotation mark]A bit better,[quotation mark] you reply.";
			  now the refractor is blurry;
		-- blurry:
			say "[quotation mark]Well, Marv,[quotation mark] asks Doctor Giblets, [quotation mark]what do you see? Just read the third line back to me.[quotation mark][paragraph break]";
		-- diplopic:
			say "It looks more in focus, but not quite right.";
		-- sharp:
			say "Now it all looks sharp, except perhaps for the tiny letters of the fourth line that seem to crawl about on their own."
			
Instead of going somewhere during the Eye Exam:
	say "Wedding jitters almost get to you, but then you sit back down to finish the eye exam."

Chapter Wisconsin Avenue

Wisconsin Avenue is a room. It is outside from the Ophthalmology Office. The description of Wisconsin Avenue is "[one of]It is a bright, unpleasantly sunny day. So sunny, in fact, that everything more than a few feet away is a complete blur. You narrow your eyes and recognize the outside of Doctor Giblet’s office[or]Somewhere on Wisconsin Avenue, just below Reservoir Road[stopping]."

The bike is a enterable portable supporter. The bike is in Wisconsin Avenue. The description of the bike is "A heavily-customized, bright red bike. It is built like a tank and has a bevy of electronic enhancements, including stabilization gyros." The bike is not fuzzy.   Understand "red" or "bicycle" or "body" as the bike. The texture of the bike is "metallic".

Instead of taking or climbing the bike:
	try entering the bike.
	
Instead of attacking the bike:
	say "That[apostrophe]d be no way to thank Trevor."
	
Instead of entering the bike when the bike encloses the player:
	try going north.
	
The office-proxy is a backdrop in Wisconsin Avenue. The printed name of the office-proxy is "office". The description of the office-proxy is "The front of the Doctor Giblet[apostrophe]s small ophthalmology office. A sign hangs in the front window: [quotation mark]Closed Sundays[quotation mark]." Understand "office" or "sign" or "window" as the office-proxy. The office-proxy is not fuzzy.

The electronic enhancements are a part of the bike. The description of the electronic enhancements is "Thick bundles of wire exit the bike[apostrophe]s complicated control panel just below the rear view mirror and dive into the body of the bike, where who knows what they do. Luckily for you, the control panel is illuminated and says, [quotation mark]AUTOPILOT ENGAGED.[quotation mark] This is particularly fortunate, since you never really learned to ride a bike in the first place." 

The bundles of wire are part of the bike. The description of the bundles of wire are "Wires of every color."  Understand "wire" as the bundles of wire.

The control panel is part of the bike. The description of the control panel is "All kinds of controls, far too complicated for simple rocket scientist like yourself to comprehend on the day before his wedding." Understand "controls" or "autopilot" as the control panel. Understand "electronics" as the electronic enhancements.

Instead of doing something other than examining with the electronic enhancements:
	say "[noWires]."
		
Instead of doing something other than examining with the bundles of wire:
	say "[noWires]."
	
Instead of doing something other than examining with the control panel:
	say "[noWires]."
	
The stabilization gyros are part of the bike. The description of the stabilization gyros is "Small, high-speed flywheels flank each side of the bike[apostrophe]s seat, and allow the bike to stand perfectly balanced, even when no one is on it. They should make riding the bike a piece of cake." Understand "gyroscope" or "flywheel" or "gyro" or "gyroscopes" or "flywheels" or "gadgets"  as the stabilization gyros.

The seat is part of the bike. The description of the seat is "A padded, leather seat. Trevor apparently spared no expense on this bike." Understand "leather" or "padded" as the seat.

The wheels are a part of the bike. The description of the wheels is "The wheels are largely covered by the smooth, tubular body of the bike, but from what does protrude, you can see that the wheels have a wide base, which should promote stability, and that the tread is more like that of a mountain bike than a city bike. The ride may be bumpy, but at least the wheels will grip the pavement." Understand "tread" as the wheels.

Instead of pushing, pulling or turning the bike:
	say "The gyros resist the externally applied force. The bike remains exactly where it was, like a statue."
	
The rear view mirror is part of the bike. The description of the rear view mirror is "There seems to be some lettering on the rear view mirror. Your vision is too blurry to make out objects in the distance, though." 

The lettering is part of the rear view mirror. Understand "inscription" or "writing" as the lettering. 

Instead of examining or reading the lettering:
	try reading the rear view mirror.

The inscription of the rear view mirror is "The frosted writing on the rear view mirror offers the following warning: [quotation mark]Objects may be distant in the rear view mirror, but they are actual size.[quotation mark]" 

Instead of searching the rear view mirror:
	try examining the rear view mirror.

The bike, the electronic enhancements, the control panel, the rear view mirror, the bundles of wire, the stabilization gyros, the seat and the wheels are not fuzzy.


Chapter Factory

The Factory is a room. The description of the Factory is "[one of]As your eyes adjust to the near darkness, you are alarmed that not only is the wedding party absent, but this doesn’t even look like a hotel! It looks like a factory floor, complete with moving conveyor belts, spinning platforms, an industrial welding robot.  If you are not mistaken, you are cut off from the far side of the room by a web of ultraviolet cutting lasers. There is a metal locker right in front of you.[paragraph break]From the far corner of the room, you hear a [command beep] and the industrial robot takes a step forward[or]An operational factory floor, with conveyor belts, spinning platforms, and an industrial welding robot. You are cut off from the far side of the room by a web of ultraviolet cutting lasers[if turnCounter is greater than 2]. A man occupies a plastic control booth in one corner[end if][stopping]."

To say command beep:
	say "beep[run paragraph on]";
	playback(the sound of the dtmf-five);
	playback(the sound of the translate).

Understand "man" or "madman" or "scientist" or "dictator" or "villain" or "nemesis"  or "archnemesis" or "evil" or "horrible" or "doctor" as Professor Igneous.

Instead of examining Professor Igneous:
	now Professor Igneous is recognized;
	say "[one of]You recognize the man from the TV news. He is Professor Igneous, criminal mastermind and global terrorist, a hi-tech madman. There was a special about him on the History Channel last week. Damn, you wish you had watched it.[paragraph break][quotation mark]Yes, take a good look at the man who will finally wipe you from the face of the Earth![quotation mark][or]Your (self-described) archnemesis.[no line break][stopping][paragraph break]". 

Instead of doing something with Professor Igneous:
	say "[The professor igneous] ignores you, confident in his plan."

The plastic control booth is a fardrop in the Factory.

The floor is a fardrop. It is in the the Factory.
Instead of examining the floor, try looking.

The conveyor belts are a fardrop. They are in the Factory. Understand "belt" as the conveyor belts. The description of the conveyor belts is "Intermeshed metal platforms, like steps in an escalator. They move constantly in one direction."

The spinning platforms are a fardrop. They are in the Factory. Understand "platform" as the spinning platforms. The description of the spinning platforms is "About a meter in diameter, these platforms spin in one direction or another."

The robot is a person. It is in the Factory. Understand "Lenny", "industrial", "welding" or "pink" as the robot. The laser is part of the robot. The description of the robot is "An assembly line robot that has been modified for greater speed, flexibility and strength. Unlike most industrial robots, it has been painted shocking pink." The description of the laser is "Offhand, it looks like a neodymium yttrium-aluminum-garnet laser designed to cut through thick metal."  

The character of the Robot is the Robot-sprite.  The display status of the Robot-sprite is g-active. The Robot has a facing-direction.  The facing-direction of the Robot is hither.

The metal locker is an enterable transparent chest. It is in the Factory. The metal locker can be pinholed. The metal locker is not pinholed. The texture of the metal locker is "cold and metallic". Understand "box", "bin", "skip",  or "container" as the metal locker. The metal locker can be jumpy. The metal locker is not jumpy.

Instead of examining the metal locker:
	say the description of the metal locker.
	[yeah, but leave out the x-ray vision part about describing what is inside.  ]


Instead of looking when the metal locker encloses the player:
	say "Through the [if the blast hole is in limbo]tiny cracks in the corners[otherwise]blast hole drilled through the side[end if] of the locker, you can see a complicated factory floor and a welding robot. [run paragraph on]";
	if Amelia is lit:
		say "Inside the locker, you see a pile of plastic devices.";
	otherwise:
		say "Within the locker, it is too dark to see well."
		
Instead of doing something with something (called the item) when the metal locker encloses the player:
	if metal locker encloses the item:
		if Amelia is lit:
			continue the action;
		otherwise:
			if the item is Amelia:
				continue the action;
			otherwise:
				say "It is too dark in here to see anything.";
	otherwise:
		continue the action.

The metal locker contains a pile of plastic devices. The description of the metal locker is "[lockerDescription]". The pile of plastic devices is a fixed in place thing.  Understand "ultracapacitors" or "black" or "boxes"  or "device" or "part" or "parts"  as the pile of plastic devices. The description of the pile of plastic devices is "[pileAppearance]."

To say pileAppearance:
	if Amelia is supercharged:
		say "A bunch of ultracapacitors like the one currently installed in your mangoFONE";
	otherwise:
		if the player does not hold the ultracapacitor:
			say "They are black plastic boxes, with fashionably rounded corners and some sort of connector at one end. Picking one up, you notice text on one side says [quotation mark]10-farad ultracapacitor power module. Made in West Ispharistan. Patent pending. For terrorist use only.[quotation mark] An indicator shows full power. As you bring the box near your mangoFONE, you note that the phone has opened a port, exactly the size and shape of the connector on the ultracapacitor";
			move the ultracapacitor power module to the player;
			now the interface port is part of Amelia;
		otherwise:
			say "Hundreds of black plastic boxes, just like the one you picked up"
			
Instead of inserting something (called the insertee) into something (called the recipient):
	if the insertee is the ultracapacitor power module or the insertee is the connector:
		if the recipient is amelia or the recipient is the interface:
			say "The ultracapacitor clicks into place and molds seamlessly into the mangoFONE[apostrophe]s obsidian unibody. As it does so, the phone ripples with newfound energy, humming a bass note so low that it shakes your intestines.";
			move the interface to Limbo;
			move the ultracapacitor power module to Limbo;
			now Amelia is supercharged;
			change phoneCharge to 2000;
		otherwise:
			say "Be careful what you stick you connector into.";
	otherwise:
		continue the action.
			
Instead of doing something with the pile of plastic devices:
	if the current action is examining:
		continue the action;
	else if the current action is attacking:
		say "[one of]No doubt, the pile feels intimidated now[or]Apparently, violence is just the answer when it comes to randomly rearranging a pile of plastic devices in a dark metal locker, while your evil nemesis takes pot shots at you with a robot[or]That will teach them[or]That was cathartic[or]It seems these plastic boxes are just about indestructible[at random].";
	else if the current action is taking:
		if the player holds the ultracapacitor power module or amelia is supercharged:
			say "You have already taken one ultracapacitor, which should be enough to power a city block for a decade. Grabbing another one won[apostrophe]t help matters.";
		otherwise:
			try examining the pile of plastic devices;
	else if the current action is entering:
		say "You don[apostrophe]t want to be that close to the pile. If they get hit with a laser beam, there is likely to be some fallout.";
	otherwise:
		continue the action.
		
Instead of throwing, dropping, or attacking the ultracapacitor power module:
	say "That could damage your precious ultracapacitor power module. On reconsideration, you hold it protectively."
				
After searching the metal locker:
	if the metal locker does not enclose the player:
		if the metal locker is open:
			say "It is too dark inside the locker to see anything.";
		otherwise:
			say "You can[apostrophe]t. The locker is shut.";

After opening the metal locker:
	say "You lift the [one of]cover of the metal locker, and find it much heavier than you would have guessed. You realize that the locker is not made from cheap sheet metal, but is almost like armor in terms of thickness. It is dark inside the locker[or]heavy cover and it remains balanced in the open position[stopping]."
	
After closing the metal locker:
	say "With great effort, you [one of]lift the cover to the balancing point and then let it slam thunderously down[or]close the metal locker[apostrophe]s cover[stopping]."
	
Instead of climbing the locker:
	say "You recall the admonition from your youth: warning -- metal bin may tip. Do not play in or around."
	
After entering the locker:
	say "You tumble into the locker[one of], any grace and coordination having been lost during your recent encounter with a ten-ton city bus. You land on a pile of plastic parts. The heavy lid clangs down, sealing you in.  After a moment, you notice that you can see a little of what is going on outside the locker by peering through some hairline defects in the welding joints. Even so, almost none of the dim factory light enters the locker through these peepholes[or][stopping].";
	change the display status of Marv-sprite to g-inactive;
	now the metal locker is closed.
	
The peepholes are a part of the metal locker. The description of the peepholes is "Tiny defects in the welding joints on each of the four corners of the locker. None are more than a millimeter[if the metal locker encloses the player]; they barely let even light into the locker[end if]." Understand "defect" or "defects" or "hairline" or "fissure" or "crack" or "cracks" or "seams" or  "seam" or "weld" or or "welds" or "welding" or "joint" or "joints" or "corners" or "corner" or "peephole" as the peepholes. 

Instead of inserting something into the peepholes:
	say "The cracks are far too small."
	
Before examining the peepholes:
	say the description of the peepholes;
	stop the action.
	
Before searching the peepholes:
	if the metal locker encloses the player:
		say "From each of the cracks, you can see a bit of the factory floor.";
	otherwise:
		say "[tooDarkInside].";
	stop the action.
	
Before exiting during the cunning plan:
	if the metal locker encloses the player:
		try silently opening the cover.

Instead of exiting during the cunning plan:
	if the metal locker encloses the player:
		continue the action;
	otherwise:
		say "There are no exits[one of] -- the revolving door has disappeared behind you[or][stopping].";
		stop the action.

After exiting during Cunning Plan:[The only thing the player can exit during this scene *is* the locker]
	say "You clamber over the side of the locker and land awkwardly on the factory floor, back where you had started. The cover slams back down, sealing the locker.";
	change the display status of Marv-sprite to g-active;
	now the metal locker is closed.		

The cover is a lid which is part of the metal locker. The description of the cover is "The metal locker[apostrophe]s hinged cover of thick plate steel. The cover [if the metal locker is open]rests open[otherwise]is shut[end if]." Understand "hinge" or "hinges" as the cover. 

Rule for printing room description details of the metal locker:
	omit contents in listing.

The ultraviolet web is fixed in place thing. It is in the Factory. The description of the ultraviolet web is "An intricately woven web of high-intensity light, just on the edge of the visible spectrum[one of]. On the downside, you will surely be seeing Doctor Giblets about cataract removal after this experience -- if you survive it. On the bright side, you will come out of this with a healthy tan[or][stopping]."

Instead of touching, taking, eating, or kissing the ultraviolet web:
	change the endgame to webbed;
	end the game in death.

Chapter CornerNW

CornerNW is a room. The printed name of CornerNW is "The corner of 4th and Eye Streets, NW". The description of the CornerNW is "You are on a downtown street corner. A brass door is to the north, but everything in the distance is blurry."

The pole is a supporter in CornerNW. The description of the pole is "The pole is studded with official traffic signs: snow emergency route, two hour parking zone 2 permit holders only, one way street, metro bus stop, dumping prohibited, loading zone, no parking, alternate parking Wednesdays, yield to pedestrians, slow children... you can only follow the pole upwards so far, before the bright sky bothers your dilated eyes." The pole is not fuzzy.

Instead of tasting the pole:
	say "The pole tastes unexpectedly acidic.[paragraph break]Suddenly, the world seems less solid and everything wavers...";
	if sound is available:
		play(the sound of the sitar);
	move the player to Fibber Island.
	
The signs are a part of the pole. Understand "sign" as the signs. The signs are plural-named. The description of the signs is "The signs start fairly far up the pole. They are mostly about parking and other traffic regulations, one is about picking up after your dog, another about recycling of plastics, and another about this being a neighbor watch community."

Instead of taking the signs:
	say "Theft of city property is a misdemeanor."

The hotel entrance is an open openable lockable unlocked enterable container in CornerNW. The description of the hotel entrance is "A revolving brass door, which leads into the hotel." Understand "brass" or "door" as the hotel entrance. The hotel entrance is not fuzzy.

Instead of examining the hotel entrance:
	say "The most notable feature of the hotel, and the only one that you can see with some level of detail, is the revolving brass door. It is engraved with the words [quotation mark]Hotel Entrance[quotation mark] (and presumably, on the other side, [quotation mark]Hotel Exit[quotation mark]. When you try to confirm this by narrowing your eyes and peeking around the back side of the door, [revolvingDoor].";
	move the player to the Factory.
	
Rule for printing room description details of the hotel entrance:
	omit contents in listing.
		
Instead of entering, pushing, pulling or climbing the hotel entrance:
	say "You push gently on the revolving brass door, when [revolvingDoor].";
	move the player to the Factory.
	
Before opening or closing the hotel entrance:
	try entering the hotel entrance;
	the rule succeeds.
	
Before locking or unlocking the hotel entrance with something:
	try entering the hotel entrance;
	the rule succeeds.

Instead of climbing the pole, try going up.

Section Poletop

The Poletop is above CornerNW. Understand "top" as the poletop. The description of the poletop is "[one of]Your sweaty hands grip the slick, green pole as you narrow your eyes and peer towards the horizon. From somewhere below you, you hear a child ask, [quotation mark]Mommy, what is that raggedy man doing up on that pole?[quotation mark][paragraph break]You yell down, [quotation mark]I am looking for my wedding rehearsal,[quotation mark] and nearly loose your grip on the pole.[paragraph break][quotation mark]Come with me, Cynthia. Let[apostrophe]s leave him alone[quotation mark][paragraph break][quotation mark]Is he a crazy man, mommy?[quotation mark][paragraph break][quotation mark]I said come with me, Cynthia[quotation mark][paragraph break][quotation mark]Well is he?[quotation mark][no line break][or]The signs thin out up here, although one catches your attention: [quotation mark]Site of the Future Igneous Bed and Breakfast Hotel and Spa[quotation mark]. You are above the buildings here, and you realize that without any sort of visual feedback to restrain your actions, you must have climbed up almost forty feet. Your head swims. You hope you can climb back down without killing yourself.[no line break][or]You see nothing around you but a bright, hazy sky. You are relieved not to be able to see how far up you are, though.[no line break][or]You cling for dear life to the top of a green metal pole, just above rooftop level. The sky is clear and with your blurry vision, everything beyond the pole is a bright, glowing haze.[no line break][stopping]"; 

In the Poletop is a supporter called the top of the pole. The description of the the top of the pole is "The top of the pole is a bit smaller in circumference than the base, and there are no signs up this high." The top of the pole is not fuzzy.

Instead of climbing the top of the pole, try going down.

To plummet: 
	change the endgame to jumped;
	end the game in death.
	
Instead of waving hands when the location is the poletop:
	say "You wave your hands at tourists, eager to make their trip to the nation's capital memorable. Surely, it will be for them.[paragraph break][onTheWayDown]";
	plummet.
	
Instead of going a direction (called the way) when the location is poletop:
	if the way is:
		-- down:
			continue the action;
		-- inside:
			continue the action;
		-- outside:
			continue the action;
		-- up:
			say  "You push off the top of the pole, striving for greater height and this strategy works. Momentarily. [onTheWayDown]";
			plummet;
		-- otherwise:
			say "Tired of clinging to the dreary pole, you strike out [way]ward. For a moment, you think this is a brilliant idea. [onTheWayDown]";
			plummet.
			
Every turn during Exterior:
	if the location is the poletop:
		change the geeBars to 1;
	otherwise:
		change the geeBars to 0.
		
Chapter Fibber Island

Fibber Island is a room. The description of Fibber Island is "A long peninsula, surrounded on every side by water, narrowing to an isthmus at its widest point, Fibber Island is a surreal wasteland teeming with life. A monochromatic rainbow casts luminous shadows on the rolling hills of Fibber Plateau, and schools of oysters chase each other through the treetops.[paragraph break]An antique phonograph stands before you."

The antique phonograph is a furniture in Fibber Island. The description of the antique phonograph is "An old style wooden phonograph with a wax cylinder and a metal crank." The texture of the antique phonograph is "polished". 

Instead of rubbing the antique phonograph:
	say "The wood shines up nicely."
 
Instead of listening to the antique phonograph: 
	say "It does not appear to be playing. All you can hear is the [one of]croaking of the tigers in the distant mountains[or]snicker-snacker of the toadstools[or]mournful chirping of the turtledoves[or]rustling of fast-growing cacti[or]plaintive lament of a succulent herb, which sounds like Henry Kissinger, but with a less marked accent[or]the neurotic ramblings of the three-toed sloths from the neighboring islands[at random]."

The wax cylinder is a part of the antique phonograph. The description of the wax cylinder is "The cylinder is made of hard wax, and a thin spiral is etched into its surface." The texture of the wax cylinder is "unsurprisingly, waxy".

The thin spiral is part of the wax cylinder. The description of the thin spiral is "A tiny depression in the wax, like a groove on a record." The texture of the thin spiral is "rough".

The metal crankshaft is a part of the antique phonograph. The description of the metal crank is "An S-shaped crankshaft made of a dark, brown metal. It emerges seamlessly from the side of the phonograph and appears worn with use." The texture of the metal crankshaft is "[metallic]". Understand "crank" or " shaft" or "rod" or "handle" as the metal crankshaft.

Instead of pushing, pulling or turning the metal crankshaft:
	say "From the phonograph, you hear the disembodied voice of Thomas Alva Edison. He wishes you well on your journey.";
	move the player to CornerNW.
	
The antique phonograph, wax cylinder, thin spiral and metal crankshaft are not fuzzy.


Chapter Limbo

[A place for offstage stuff]

Limbo is a room.

The ultracapacitor power module is a prop. It is in Limbo. Understand "source" as the ultracapacitor power module. The description of the ultracapacitor power module is "An extremely high density power source, with a connector and a power indicator."  The connector is part of the ultracapacitor power module. The description of the connector is "A proprietary eighteen prong polarized connector." The indicator is part of the ultracapacitor power module. Understand "meter" as the indicator. The description of the indicator is "The meter shows full charge." The texture of the ultracapacitor power module is "smooth, but slightly tacky". 

Instead of touching, tasting, eating or kissing the connector:
	say "It's not so much the voltage as the current. As soon as you make contact with one of the eighteen exposed metal prongs on the connector, the ultracapacitor discharges through you in a matter of seconds, leaving a charred pile of carbon ash.";
	change the endgame to electrocuted;
	end the game in death.

The interface port is a prop. It is in limbo. The description of the interface port is "A proprietary 18-socket port[one of] designed to accept power and control signals from an ultracapacitor power source (or so you intuit)[or][stopping]." Understand "socket" as the interface port. The texture of the interface port is "recessed".

The blast hole is a thing. The blast hole is in Limbo. The description of the blast hole is "A perfectly round hole burned through the thick metal by the robot[apostrophe]s powerful cutting laser." The texture of the blast hole is "sharp around the edges".

Instead of inserting something (called the insertee) into the blast hole:
	say "While powerful, the laser beam that made this hole was tightly focused, and the hole[apostrophe]s diameter is too small to accommodate [the insertee]." Understand "holes" as the blast hole.
	
Before examining the blast hole:
	say the description of the blast hole;
	stop the action.
	
Before searching the blast hole:
	if the metal locker encloses the player:
		say "Through the hole, you have a good view of the factory floor.";
	otherwise:
		say "[tooDarkInside].";
	stop the action.

The can is a closed openable container. The can is in Limbo. The description of the can is "Unfortunately, you do not understand the hieroglyphics on the can and the fine print is too small for you to read. All you have to go by is the label on the can." 

The label is part of the can. The description of the label is "In the style of ancient Egyptian funereal paintings, the label depicts a regal woman in a long white dress, sporting a collection of elaborate jewels. She is riding in a reed boat, along what you suppose is the Nile. It looks like she has just opened a basket, perhaps a gift, and is hugging something to her chest. She does not appear happy[one of][or].[paragraph break]On closer inspection, it looks she is fighting against some sort of serpent[stopping]."

The reed boat is part of the label. The description of the reed boat is "The kind of reed boat that might have transported royalty up and down the Nile during the Hellenistic period. It is both functional and elegant."

The basket is part of the label. The description of the basket is "A woven basket of the sort used to transport deadly snakes. You read about such baskets in last month[apostrophe]s National Geographic."

The jewels are part of the label. The description of the jewels is "Golden jewels inset with either jadeite or nephrite. You[apostrophe]ve never understood the distinction. Something green at any rate."

The regal woman is part of the label. Understand "royal" or "royalty" or "queen" or "cleopatra" or "egyptian" as the woman. The description of the woman is "A woman of ageless perfection."

The snake is part of the label. Understand "asp" or "cobra" or "viper" or "pit" or "serpent" or "deadly" or "terrible" as the snake. The description of the snake is "A black snake with a yellow head and sharp, curved fangs."

Instead of opening the can:
	say "In the second before the deadly serpent springs from the can and embeds its venomous fangs in your flesh, you are pleased that you managed to open a can with no tools whatsoever. Not even a pocketknife. You are a real Boy Scout.";
	change the endgame to snaked;
	end the game in death.
	
Instead of listening to the can:
	say "You hear [one of]something moving inside the can, a slithering, sliding sort of sound. It evokes primal fear[or]some sort of hissing, like air escaping from a punctured tire[or]a rattling sound[or]something uncoiling, as it senses your body heat[in random order]."
	
Instead of throwing the can at something:
	say "The can flies in an erratic arc, as if something inside the can were moving around. It rolls into a corner and is lost in the darkness.";
	move the can to Limbo.
	
Instead of attacking the can:
	say "The can bucks violently and unleashes a train of hissing sounds that chill you to your very soul."
	
Instead of talking the can:
	say "The can seems entranced by the sound of your voice and remains still."	
	

Book 3 Characters

Chapter Marv

The player is Marv Spindle. Marv Spindle is a man in the Ophthalmology Office. Marv Spindle can be dilated. Marv Spindle is not dilated. The character of Marv Spindle is Marv-sprite. The display status of Marv-sprite is g-active. 

Instead of examining Marv Spindle:
	if Eye Exam is happening:
		continue the action;
	if Exterior is happening:
		if the location is Wisconsin Avenue:
			say "You are, of course, Marv Spindle. A man who is in danger of being late to his own wedding rehearsal. As for a physical description, your eyes were just dilated by an ophthalmologist, as far as you can tell, you are a nebulous blob.";
		otherwise:
			say "Your vision is still blurry, but you recognize that you are not at your best. After the incident with the bus, your clothes are torn and bloodstained  and you are covered in dirt and grime from the road. Also, since you didn't have time to apply conditioner this morning, your hair is a mess.";
	otherwise:
		say "It is fortunate for you that the lighting is too low in here for you to fully appreciate the extent of your own injuries."
		
The eyes are part of Marv Spindle. The indefinite article of the eyes is "your". Eyes can be open. Eyes are open.
	
Instead of doing something with the eyes:
	if the current action is examining:
		say "You are unable to spin your eyes far enough towards your nose for them to see each other. It is a design defect.";
	otherwise if the current action is narrowing:
		say "You narrow your eyes.";
	otherwise:
		if the eye exam is happening: 
			say "When it comes to your own eyes, you are squeamish and don[apostrophe]t even want to think about them[if the eye exam is happening]. Even now, you are trying to image yourself as a [one of]super spy, battling the robot hordes of an evil menace[or]bicycle racer, leading your team on the Tour de France[or]stunt man, jumping your motorcycle over thirty city buses[or]a circus acrobat, scaling the big top pole and preparing to dive into a glass of water[in random order].";
		otherwise:
			say "Eyes are icky. You don[apostrophe]t want to do anything with your eyes. The thought is disgusting. Good thing you[apostrophe]re an astronomer and not an ophthalmologist."
			
Before closing the eyes:
	if the eye exam is happening:
		say "[darkIsDark].";
	otherwise if cunning plan is happening and the metal locker encloses the player and Amelia is not lit:
		say "[darkIsDark].";
	otherwise:
		say "You close your eyes for a moment and then reopen them.";
	stop the action.
		
Before opening the eyes:
	say "They are already open.";
	stop the action.
			
Instead of narrowing eyes:
	if readyToNarrow is true:
		choose the row with attempt of eyeAttempt in the Table of OcularNarrowing;
		if sound is available:
			if tense entry is past:
				play(the sound of the past);
			otherwise if tense entry is future:
				play(the sound of the future);
		if the eyeAttempt is less than 10:
			say "Everything shimmers for a moment and you have a sensation of [one of]vertigo[or]ants crawling all over you[or]having just eaten a peppermint patty[or]extreme disorientation[or]being distant from your body[or]being lost[or]not being quite yourself[in random order].[paragraph break]";
			say "[the narrative entry][roman type][paragraph break]";
			increase eyeAttempt by one;
			change readyToNarrow to false;
			vision recovers in (eyeAttempt times two) turns from now;
		otherwise:
			say "[the narrative entry].";
	otherwise:
		say "[one of]You feel drained from the last effort. Perhaps if you wait a while[or]You have not recovered from the last attempt to narrow your eyes[or]Your eyes are too tired to try this again so soon[or]Your eyes complain that they are still tired. Give them a little rest[or]It is getting harder and harder to narrow your eyes[or]You are not ready yet[or]It seems like each time you narrow your eyes, it takes longer to recover from the strain[or]Your mind is willing, but your eyes are weak[or]Give it a minute[or]Nope, your eyes aren[apostrophe]t ready for more narrowing quite yet[or]Your eyes are still pretty narrowed from the last time. Let them widen a bit[or]You are not yet ready to do so[stopping]."
			
At the time when vision recovers:
	now readyToNarrow is true.



The mind is part of Marv Spindle. The indefinite article of the mind is "your". Understand "brain" as mind.

Instead of doing something with the mind:
	if the current action is examining:
		say "You try to picture your mind within your mind[apostrophe]s eye and are nearly blinded by the recursion.";
	otherwise if the current action is narrowing:
		say "[one of]You consider registering as a Republican, but then dismiss it[or]You are giving yourself a headache[stopping].";
	otherwise:
		say "You don[apostrophe]t want to think about your mind."
		
The nose is part of Marv Spindle. The indefinite article of the nose is "your". Understand "nostril" or "nostrils" or "nares" as nose.

Before inserting something (called the donation) into the nose:
	say "On further reflection, that does not sound like a good longterm storage solution.[paragraph break]You refrain from snorting [the donation].";
	stop the action.

Instead of doing something with the nose:
	if the current action is examining:
		say "You have your father[apostrophe]s nose. Not literally, of course.";
	otherwise:
		say "Your nose refuses to participate in your shenanigans."
		


Chapter mangoFONE

Amelia is a woman. Understand "telephone", "phone","mango","fone","mangofone","cell" or "cellular" as Amelia. The printed name of Amelia is "your mangoFONE". Marv Spindle carries Amelia. The description of Amelia is "[one of]Cut from a single, flawless crystal of lab-grown Obsidian and no doubt polished by countless inadequately paid laborers to a brilliant shine, the pulsing orange glow of the prototype mangoFONE's single button is hypnotic[or]Your beloved mangoFONE, Amelia. Its single orange button glows invitingly[stopping][if the player holds the ultracapacitor power module]. The phone’s power coupling port is open[end if][if Amelia is lit]. With the flashlight app on, the phone is glows with pure white light, like tiny nuclear furnace. It is painful to stare directly at it[end if]." Amelia can be shown-to-Trevor. Amelia is not shown-to-Trevor. Amelia can be message-played. Amelia is not message-played. Amelia is not fuzzy. Amelia can be lit. Amelia is not lit. Amelia can be supercharged. Amelia is not supercharged. Amelia is edible. Amelia can be digested. Amelia is not digested. The texture of amelia is "smooth and silky, with sensual, rounded edges". 

Instead of pushing or pulling or opening or touching Amelia:
	try pushing the orange button.

Amy is a woman. Amy is part of Amelia. [A work around for now, because some players want to call the phone
Amy. This will get complicated if the actual Amy is around.]

Before doing something to Amy:
	say "[noAmy].";
	stop the action.
	
Persuasion rule for asking Amy to try doing something:
	say "Your phone replies, [quotation mark][one of]Marv,  my name is Amelia[or]Marv, we[apostrophe]ve been through this before. Your fiancée's name is Amy, my name is Amelia[or]Marv, once again, I have to remind you that my name is Amelia, not Amy. Your future wife[apostrophe]s name is Amy. It is not the sort of thing that you want to casually confuse. I am the world[apostrophe]s most advanced telephone, she is a human being. Please try to keep us straight[or]Fine. If you want to call me Amy, go ahead, Zorton. But I will only respond to the name Amelia, so you are just wasting your breathe and my battery life[or]Marv, please refer to me by my proper name, which is Amelia[stopping].[quotation mark][paragraph break]";
	if sound is available:
		play(sound of the error); 
	persuasion succeeds. [to suppress refusal to do what is asked]
	
Instead of Amy doing something:
	the rule succeeds. [this suppresses Amy actually doing what was asked.]
	

The orange button is part of Amelia. The description of the orange button is "[one of]The button pulses on and off, on and off, a deep, deep orange glow. So pretty. So hypnotic[or]The shiny button draws you in with its rhythmic pulsing, a comforting, warm orange glow that makes you feel content. Tension melts out of you as you sink deeper into its welcoming throb. Deeper, and deeper[or]You caress the beautiful orange button and let the pleasant orange light shine warmly on your face. Your attention fixes on the light, its singular glow fills your vision and displaces all other interests. You stare into the burning heart of a pulsing nebula, filled with the majestic beauty of creation, and unable to look away. Everything else feels remote and unconnected, the phone is everything[or]You feel your soul slipping away into the embracing glow of the mangoFONE[or]The phone now owns your soul[or]For cripes sake, it’s just a button. An amazingly well designed button, but a button nonetheless[or]A faintly pulsing orange glow, almost imperceptibly raised above phone's glassy surface[stopping]." The orange button is not fuzzy.

Instead of giving Amelia to someone:
	say "No, you swore up and down to Amy's dad, Istvan Boulot, that you wouldn[apostrophe]t let the prototype phone out of your hands for even a moment."
	
Instead of throwing, dropping, or attacking Amelia:
	say "[hyperbole]";
	
Instead of pushing the orange button:
	say "You press the mangoFONE[apostrophe]s button and it speaks, [quotation mark][voiceCommandPrompt][quotation mark][paragraph break][if the location is the ophthalmology office][one of][quotation mark]That[apostrophe]s kind of, um, strange, isn[apostrophe]t it, Mr. Spindle -- I mean, Marv -- that it has the same name as my cousin?[quotation mark] asks Trevor.[paragraph break][quotation mark]I guess,[quotation mark] you reply. [quotation mark]I've had Amy so much on my mind that I couldn't think of anything else when I was setting up the phone.[quotation mark][paragraph break][quotation mark]Golly. The phone even sounds like Amy.[quotation mark][paragraph break][quotation mark]I guess it does at that. I'd never really noticed.[quotation mark][line break][or][stopping][end if]".
	
Instead of asking Amelia about something, say "[lackOfPhoneReply]".
Instead of telling Amelia about something, say "[lackOfPhoneReply]".
Instead of showing something to Amelia, say "[lackOfPhoneReply]".

Instead of asking Amy about something, say "[noAmy]."
Instead of telling Amy about something, say "[noAmy]."
Instead of showing something to Amy, say "[noAmy]."

After eating Amelia:
	if amelia is not digested:
		say "You swallow the phone. The glassy oblong shape goes down without any effort whatsoever.[paragraph break]A moment later, you wonder if that was such a great idea.";
		now amelia is digested;
		the phone gets yakked in three turns from now;
	otherwise:
		say "[deathByBezoar]";
		change the endgame to bezoared;
		end the game in death.
	
At the time when phone gets yakked:
	say "After a momentary sense of vibration from deep within your bowels, you gasp and your mangoFONE comes flying out of your mouth. You catch it reflexively. The phone is spotless, not a fingerprint on its glassy surface.";
	move amelia to the player.
	

Chapter Igneous

Professor Igneous is a man in the Factory. He is alive. Professor Igneous wears a lab coat, a pair of rubber gloves, and a pair of goggles. The description of the lab coat is "A wrinkled lab coat, with dark stains on the arms, and an acid burn near the right shoulder." The description of the rubber gloves is "A pair of thick, pink, rubber gloves that come up to [the Professor][apostrophe]s elbows." The description of the goggles is "Heavy laboratory goggles, tinted to protect [the Professor][apostrophe]s eyes from robot[apostrophe]s bright laser."  Understand "lab coat" as the lab coat. Understand "pink" as the rubber gloves. Understand "tinted" as the goggles. The character of Professor Igneous is Igneous-sprite. The display status of Igneous-sprite is g-active. Professor Igneous can be recognized. Professor Igneous is not recognized.  The printed name of Professor Igneous is "[recognized-name]". Professor Igneous is not proper-named. Understand "scientist" or "madman" or "man" or "prof" as Professor Igneous.
	
To say recognized-name:
	if Professor Igneous is recognized:
		now Professor Igneous is proper-named;
		say "Professor Igneous";
	otherwise:
		say "man".

Chapter Giblets

Doctor Giblets is a man in the Ophthalmology Office. Understand "pop", "doc", or "ophthalmologist" as Doctor Giblets.

Instead of attacking someone (called the victim):
	if the  victim is Doctor Giblets or the victim is Trevor:
		say "[one of]What? Your future in-law? What would Amy have to say about that?[no line break][or]Violence is not the answer when you are in an unfamiliar pitch dark room and people have sharp things only millimeters from your eyeballs.[no line break][or]Why would you do that? You are entirely too worked up about this eye exam![no line break][or]Maybe Amy was right, you do need a vacation.[no line break][or]The urge to do so passes almost immediately.[no line break][stopping][paragraph break]";
	otherwise:
		continue the action.

Chapter Trevor

Trevor is a man in the Ophthalmology Office. Understand "Trev" as Trevor.

Book 4 Tables and Boxed Text

Chapter Tables

Section Prechart

Table of PreChart
turnNumber		canned-text
1		"[quotation mark]Thanks for opening up on a Sunday,[quotation mark] you say with some embarrassment. [quotation mark]I feel like such a bozo for sitting on my glasses the day of the rehearsal... I[apostrophe]ve just been so jet-lagged since flying in from Hawaii.[quotation mark] You would palm your face, but the refractor is in the way.[paragraph break][quotation mark]Consider it a wedding gift![quotation mark] offers Doctor Giblets.  [quotation mark]Trevor, would you get the atropine drops? No sense in doing an eye exam halfway.[quotation mark][paragraph break][quotation mark]Sure, Pop. As you always say, the funduscopic exam is what separates the ophthalmologists from the optometrists.[quotation mark][paragraph break][quotation mark]Indeed it is, son. Indeed it is.[quotation mark]"
4		"[quotation mark]Let[apostrophe]s try to figure out what kind of prescription you need. We can grind the lenses this morning and have Trevor run them over to the hotel in time for the rehearsal. What time did you say rehearsal is?[quotation mark][paragraph break]You checked your mangoFONE[apostrophe]s calendar just before the eye appointment, so you say [quotation mark]It[apostrophe]s at five, and the hotel is downtown -- I should have plenty of time to get there.[quotation mark][paragraph break][quotation mark]Fine, fine. Just look at the eye chart and read the third line down.[quotation mark]"

Section PostChart

Table of PostChart
turnNumber	canned-text
1	 "[quotation mark]Marv, we should get on with this exam. Trevor -- hand me those drops, would you? Thanks.[quotation mark][paragraph break][quotation mark]Doctor Giblets leans your head back, [quotation mark]I[apostrophe]m going to put these drops in your eyes as part of the exam. Try not to blink.[quotation mark] You try, but you blink anyhow and feel the coolness on your eye lashes.[paragraph break][quotation mark]This will dilate your pupils, so I can do a better exam of your retina.[quotation mark]"
3	"Doctor Giblets shines a bright white light first in your left eye, and then in your right eye."
4	"Doctor Giblets hums a song to himself, and mumbles some of the words absently, while adjusting his instruments, [quotation mark]waiting for the dinner bell to do the bell thing, dinner bell, dinner bell ring![quotation mark]"
6	"[quotation mark]BRINK! BRINK![quotation mark] The phone rings with the tone that indicates a text message has just arrived from your fiancée."
7	"[quotation mark]Much better, much better,[quotation mark] notes Doctor Giblets, who seems satisfied with the way the eye exam is going."
9	"[quotation mark]See that, Trevor?[quotation mark] Doctor Giblets pulls Trevor over to where he is sitting, performing the examination.[paragraph break][quotation mark]What? The throbbing red thing?[quotation mark][paragraph break][quotation mark]Is something the matter?[quotation mark] you ask with concern.[paragraph break][quotation mark]No, no,[quotation mark] reassures Doctor Giblets with a nervous laugh. [quotation mark]Just pointing out a normal variation to Trevor.[quotation mark]"
12	"[quotation mark]Try not to move, Marv.[quotation mark] Doctor Giblets does something that half-tickles and half-irritates your eyes. You try to hold still, but your eyes tear."



Understand "phone" or "mangofone" or "mangophone" or "Amelia" or "cell" or "cellular" or "cell phone" or "cellular phone" as "[phone]".

Understand "me" or "myself" or "Marv" or "Marvin" or "Marvin Spindle" or "Marv Spindle" or "Spindle" as "[moi]".

Understand "Amy" or "Amy Boulot" or "fiancee" or "fiancée" as "[futureWife]".

Understand "Istvan" or "Istvan Boulot" as "[dadInLaw]".

Understand "Doctor" or "Doctor Giblets" or "Giblets" as "[doc]".

Understand "Trevor" or "Trev" or "Trevor Giblets" as "[kid]".

Understand "Professor" or "Professor Igneous" or "Igneous" or "nemesis" or "archnemesis" or "enemy" or "madman" or "mad scientist" or "man" as "[iggi]".

Understand "observatory" or "Mauna Kea" or "telescope" or "IR" or "IR scope" or "IR telescope" or "MKIRT" or "volcano" or "scope" or "infra-red" or "infrared" or "infra-red telescope" or "infrared telescope" as "[observatory]".

Understand "girl" or "girls" or "date" or "dates" or "Jenny" or "Jeanine" or "Julie" or "Jeanette" or "Jeanie" or "Janine"  or "Jo-Jo" or "JoAnne" or "Julianne" or "Janet" as "[girlNames]".

Understand "contacts" or "contact lens" or "contact lenses" as "[contacts]".

Understand "dream" or "dreams" or "nightmares" or "nightmare" or "vision" or "hallucination" as "[dream]".

Understand "Jeremy" or "Flack" as "[alterego]".

Understand "ophthalmology" or "ophthalmologist" or "ophthalmologists" as "[ophtho]".

Understand "optometry" or "optometrist" or "optician" or "optometrists" or "opticians" as "[opto]".

Section OpthoAsking

Table of OphthoAsking
topic		ophtho-text
"[phone]"		"[askPhone]"
"mangoIndustries"		"[askMangoIndustries]"
"music"		"[askMusic]"
"[girlNames]"		"[askGirls]"
"bike" or "bicycle"		"[askBike]"
"[dadInLaw]"		"[askIstvan]"
"[futureWife]"		"[askAmy]"
"[doc]"		"[askGiblets]"
"[kid]"		"[askTrevor]"
"eye chart" or "chart"		"[askEyeChart]"
"refractor"		"[askRefractor]"
"atropine"		"[askAtropine]"
"rehearsal" 		"[askRehearsal]"
"office" or "ophthalmology office"		"[askOffice]"
"[ophtho]"		"[askOphthalmology]"
"himself"		"[askHimselfOphtho]"
"glasses"		"[askGlasses]"
"[contacts]"		"[askContacts]"
"hastur"		"[askHastur]"
"[dream]"		"[askDreams]"
"[opto]"		"[askOpto]";

		
Section OphthoTelling

Table of OphthoTelling
topic		ophtho-text
"[phone]"		"[tellPhone]"
"[futureWife]"		"[tellAmy]"
"hawaii" or "home"		"[tellHawaii]"
"astronomy" or "nasa"		"[tellAstronomy]"
"[observatory]"		"[tellObservatory]"
"Istvan" or "Istvan Boulot"		"[tellIstvan]"
"glasses"		"[tellGlasses]"
"rehearsal"		"[tellRehearsal]"
"engagement"		"[tellEngagement]"
"wedding" or "wedding plans" or "plans"		"[tellPlans]"
"[moi]" or "work"		"[tellMoi]"
"hastur"		"[tellHastur]"
"[dream]"		"[tellDreams]"	

Section CunningAsking

Table of CunningAsking
topic		asking-text
"[phone]"		"[askProfPhone]"
"mangoIndustries"		"[askProfMangoIndustries]"
"[futureWife]"		"[askProfAmy]"
"Jessica"		"[askProfJessica]"
"[DadInLaw]"		"[askProfIstvan]"
"[kid]"		"[askProfTrevor]"
"rehearsal" or "engagement" or "wedding"		"[askProfWedding]"
"robot" or "Lenny"		"[askProfRobot]"
"factory" or "hotel" or "spa" or "bed and breakfast"		"[askProfHotel]"
"plan" or "conspiracy" or "evil plan"		"[askProfPlan]"
"himself" or "[iggi]"		"[askProfProf]"
"hastur"		"[askProfHastur]"
"[alterego]"		"[askProfJeremy]"	

Section CunningTelling

Table of CunningTelling			
topic		telling-text		
"[phone]"		"[tellProfPhone]"
"mangoIndustries"		"[tellProfMangoIndustries]"
"[futureWife]"		"[tellProfAmy]"
"[DadInLaw]"		"[tellProfIstvan]"
"[kid]" or "bike" or "bicycle"		"[tellProfTrevor]"
"rehearsal" or "engagement" or "wedding"		"[tellProfHotel]"
"robot" or "Lenny"		"[tellProfRobot]"
"factory" or "hotel" or "spa" or "bed and breakfast"		"[tellProfHotel]"
"plan" or "conspiracy" or "evil plan"		"[tellProfPlan]"
"himself" or "[iggi]"		"[tellProfProf]"
"hastur"		"[tellProfHastur]"
"[alterego]"		"[tellProfJeremy]"

Section CunningShowing

Table of CunningShowing			
thing			showing-text		
Amelia			"[showProfPhone]"
ultracapacitor power module			"[showProfCapacitor]"

Section OcularNarrowing

Table of OcularNarrowing
attempt	tense		narrative
1	past		"[bold type]Wisconsin Avenue[italic type][paragraph break]Having just parked somewhere over on one of those side streets (Dent? Volta? One of them.) you walk down to Amy[apostrophe]s uncle[apostrophe]s ophthalmology office. He has graciously agreed to help you out by fitting you for some glasses after you broke the last pair at breakfast this morning. Ah, this must be the place. You open the door, walk in, and are greeted by an older man who must be Doctor Giblets, and a younger man, who you suppose is Trevor, his son."
2	future		"[bold type]M Street, NW[italic type][paragraph break]A bus hurtles down the street, blaring its horn. Pedestrians turn to stare, and a cab runs off the side of the road as it attempts to get out of the path of the swerving bus. Tires squeal as brakes are applied, and there is a grating sound of metal upon metal."
3	past		"[bold type]Boulot Mansion, Fairfax Station[italic type][paragraph break]Amy is having coffee with her mother near a window that overlooks the gardens. Still groggy from last night[apostrophe]s flight, you dash in, sliding in your socks across the polished marble floor, but stopping short of upsetting the table and its fine china.[paragraph break][quotation mark]Look,[quotation mark] you say, digging into your bathrobe pockets and pulling out a wad of crumpled lined paper, your glasses, and a pen. [quotation mark]I rewrote some of the vows on the flight out.[quotation mark] Setting everything on a chair, you hand the papers to Amy, who accepts them appreciatively. As you read along over her shoulder, she nods and turns the page. You have the impression that perhaps the vows are too long. Concerned, you sit down and hear a crunching sound."
4	future		"[bold type]The Factory[italic type][paragraph break]You experience a great sense of urgency. Not far from you, a robot wheels quickly across the factory floor, turning this way and that. It pauses a moment to weld something and a fountain of sparks fall to the ground.  You enter a metal container and are consumed by darkness."
5	past		"[bold type]Mauna Kea Observatory[italic type][paragraph break]Your graduate student Amber asks in amazement, [quotation mark]And what did Amy say?[quotation mark][paragraph break][quotation mark]What do you think she said? Hand me the temperature probe.[quotation mark] You take the probe and slide it into the telescope[apostrophe]s preamplifier assembly.[paragraph break][quotation mark]Yes?[quotation mark] suggests Amber cautiously.[paragraph break][quotation mark]Of course she said yes![quotation mark] you say with a broad smile and then reclamp the assembly."
6	future		"[bold type]The Constitution Room[italic type][paragraph break]As the guests depart, Amy reaches across the table and takes your hand, [quotation mark]So, so you[apostrophe]ve defeated a madman and his cybernetic army of evil, convinced my father that the army can[apostrophe]t be trusted with his inventions, and brought peace to Ispharistan this afternoon. Are you ready for our wedding?[quotation mark][paragraph break]Sure,[quotation mark] you reply. [quotation mark]What could possibly go wrong between now and tomorrow?[quotation mark][paragraph break]Your mangoFone beeps with a text message: [quotation mark]marv where r u? bachelor party can’t start w/o u! Hurry![quotation mark]"
7	past		"[bold type]Ленинград, СССР[italic type][paragraph break]The Intourist guide expertly corrals a herd of camera-toting tourists on the banks of the river and gestures magnificently towards the Hermitage. Only meters away, a pair of fartsovshiki are cutting a deal from the trunk of their Lada, while a militsia officer carefully avoids eye contact.[paragraph break]You sit on the designated park bench, unfold Izvestia and scan the back page, a story about how well the war in Afghanistan is going. Your contact is only slightly late, which is to be expected these days. Quietly, she whispers, [quotation mark]They say it is Professor…[quotation mark]. She does not finish the sentence. You slide her sideways, cover the spreading blood stain with the paper, and disappear into the crowd."
8	future		"[bold type]Lava Shaft, Ring of Fire[italic type][paragraph break][quotation mark]Amelia,[quotation mark] you command, [quotation mark]scan.[quotation mark][paragraph break]Your phone ripples with bright colors and replies, [quotation mark]The tube continues downward at a ten percent grade, in a roughly southeasterly direction for approximately six hundred meters before bifurcating.[quotation mark] The phone then adds in a concerned voice, [quotation mark]Marv, we are getting too deep. I estimate less than an hour to detonation.[quotation mark]"
9	past		"[bold type]Upper Zambezi River[italic type][paragraph break]You locate the rocks covering your buried parachute harness and dig down with a spade to recover your signals box. You snap open the box, withdraw a plastic bag, and slice it open with your knife. From the bag, you extract a lightweight battery and activate it by pouring the last mouthful of water from your canteen over it. Next, you reel out the antenna wire and toss it into low branches. After running the counterpoise wire for some distance, you insert the battery into the transponder, activating it.[paragraph break]Safe for the moment, you hunker down in the scrub, waiting for a chopper, and mentally preparing your debriefing about Professor Igneous. "
10	present		"[one of ]Nothing seems to happen[or]You strain, but nothing happens[stopping]"


Table of BeforeIKillYou
turnNumber	rant
2	"As your eye accommodates to the light, you take notice of the tall gentleman in a white lab coat who stands in a plexiglass control booth in the far corner of the room. It seems that he notices you as well.[paragraph break][quotation mark]Ah, my archnemesis, Mr. Jeremy Flack. I see you[apostrophe]ve had some plastic surgery. Very nice work, but perhaps a bit squinty around the eyes.[quotation mark][paragraph break][quotation mark]This isn[apostrophe]t my wedding rehearsal?[quotation mark] you ask, too stunned, worried and jet-lagged to fully absorb everything that happened since leaving Doctor Giblets[apostrophe]s office.  [quotation mark]Where is the rehearsal? I[apostrophe]m going to be late.[quotation mark][paragraph break][quotation mark]Yes, Mr. Flack. Humor, always humor. Well... let’s see how funny you find it when you are vaporized by my robot warrior![quotation mark][paragraph break][quotation mark]Wait...what? Not the rehearsal?[quotation mark] you stammer."
3		"[quotation mark]I see that you followed my cunning plan to lure you to your doom, [Jeremy][quotation mark][paragraph break][quotation mark]But, before you die, I want you to see what I have created. I think you will agree that it is sheer elegance in its simplicity.[quotation mark]"
4		"[quotation mark]Behold the prototype Kumquat-5000 robot warrior. At this point, I would ordinarily claim it is the ultimate in cybernetic technology, but among my many positive character traits, is a certain earnest honesty, as I[apostrophe]m certain you have come to appreciate. Humility, not so much, I[apostrophe]ll admit, but honesty? Yes, in spades.[quotation mark][paragraph break][quotation mark]It is not yet the ultimate killing machine because it lacks one critical component. As you Americans might say, it is like Fried Kentucky Chicken with only ten secret spices, yes? I need only add a sufficiently AI controller (which will soon be in my possession), and the robot will become my entirely self-sufficient but unconditionally loyal servant.[quotation mark]"
5		"[quotation mark]For now, I will have to content myself with directly controlling the Kumquat-5000, I call him Lenny, as that name seems to resonate with me. I’m not sure why. I just like the sound of it. Anyhow, as I was saying... to controlling Lenny with an ingenious invention of mine that couples a matrix-scanned keyboard with two multiplexed sine wave oscillators. By merely pressing a button within my Plexiglass®-enclosed command booth, I can control his every action...the first of which will be to kill you. Now, please do cooperate and remain still, so I can get on with the day[apostrophe]s business of tracking down the aforementioned controller unit.[quotation mark]"
6		"[quotation mark]Sorry for this aside, but henchmen remind me that I am legally obligated to mention that Plexiglass®  is a registered trademark of Altuglas International, for its polymethylmethacrylate resin and sheet products sold in the North and Latin America, whereas it is sold under the brand name Altuglas® in Asia/Pacific, Europe, Africa and the Middle East. Fine. Now, back to killing you.[quotation mark]"
7		"[quotation mark]I hope you appreciate the irony. Your country will be the unwitting accomplice to my rise to power. You see, Lenny is not the only one of these robots. No, there are thousands of them (or, rather, there will be, when I have finished putting all the parts together). And where did they come from? I will tell you, as you are a most patient listener, even in these trying circumstances that will lead to your death.[quotation mark]"
8		"[quotation mark]I bought Lenny and his kin from Detroit. From the rusting, derelict auto industry at the rotting core of your declining nation marches forth my mechanized army! I bought them for pennies on the dollar, as banks foreclosed on their properties and forced them to bankruptcy. As for the hardware and software designs, my horde of rabid intellectual property lawyers have made short work of the last shreds of your country’s engineering industry. Yes, with my coalition of bankers, patent attorneys, big media executives, and the congressmen they own, I have created an unstoppable circle of evil! And now, prepare to suffer at the hands of your own slothful lack of foresight and vigilance![quotation mark]"
9		"[quotation mark]Pardon me for a moment, all this ranting is drying out my throat. I just need a sip of water....There, that[apostrophe]s better.  Difficult business you know, but murder without monologue is like...well... it isn’t pleasant.[quotation mark]"
10		"[quotation mark]Now, where were we? Ultimate warrior...irony...downfall of American industry...ah yes, we were talking about your demise -- the first victim in a wave of necessary deaths that will ripple out from both your nation’s capital and from my base in West Ispharistan. Surely, you realize that I, Professor Igneous, am behind the war in Ispharistan -- I have studiously cultivated two decades of conflict to hone my mercenaries there to a fine edge. And yes, I am also behind the Québecois. That didn[apostrophe]t work out as explosively as one would have wished.[quotation mark]"
11		"[quotation mark]Enough about me, let us talk about you (rather, I will talk and you will cling desperately to life).[quotation mark][paragraph break][quotation mark]I thought I had done you in back in Rhodesia, but of course you managed to survive with your rebreather. And then, in the Soviet Union, I assumed you had been lethally irradiated, but your undergarments were not a factor I had taken into consideration. Czechoslovakia, Yugoslavia...all the same story. You survived longer than the country did in each case. Well, I have learnt my lesson. This time, I will kill you with my own...or rather, Lenny[apostrophe]s own...hands, or rather, laser. That is to say, that Lenny will kill you with his laser, and I will transitively kill you because I control Lenny.[quotation mark]"
12		"[quotation mark]It is not that I feel that I have anything to prove. I do not, you know. Not that it would matter. Not after I have taken over the world.[quotation mark]"
13		"[quotation mark]Would you please stop working against me? I will win, you know, and you are merely delaying the inevitable and making me late for every other appointment. You know how it starts: the first kill of the day runs over fifteen minutes, and one thinks it is no big, deal, but then the next one drags on, and soon you are hours behind and it is difficult to catch up. The hours get longer, one has less time for family and hobbies, sleep suffers, the quality of one’s work goes down. No one needs that kind of stress.[quotation mark]"
14		"[quotation mark]Yes, it is a stressful life, but it will all be worth it when I have the world at its knees. None of the others could shoulder the responsibility: not Moustaffa the Knife, not Edgar the Spyder (yes, I know I had promised not to kill Spyder, but I loathe ineptness). They were dabblers. They wanted to take over the world, but were only willing to go so far. Well, world domination is not a part time job. They all want to be very clever, and make a name for themselves, but the secret to effective world domination is consistency. Take over a little bit of the world each day, and before you know it, it’s in your back pocket. That is the theory, at least.[quotation mark]"
15		"[quotation mark]I can see that you are rather enjoying this, and much as I do enjoy sporting reparté, I need to get down to business. So, no more chatter. Enough of entertaining you with my witty remarks and enlightening insights. From here out, it is cold, efficient, and most of all, silent, murder.[quotation mark]"
16		"[quotation mark]Absolutely silent.[quotation mark]"
17		"[quotation mark]Pristine silence.[quotation mark]"
19		"[quotation mark]It is quiet in here, isn’t it? I mean, aside from the sound of the conveyor belts and the robot and the lasers, this room has a very hard sound to it. Nothing absorbs the sound, just a lot of echoes, particularly with the high-pitched noises. Maybe I should install a drapery.[quotation mark]"
20		"[quotation mark]A drapery would hold down on heating costs as well, as would a carpet, but I[apostrophe]ve held off on the carpet because Lenny runs about on small wheels, and I got tired of picking carpet fibres from them and his drive belt.[quotation mark][paragraph break][quotation mark]After you are dead, I am hoping to convert this building to a quaint bed and breakfast. Perhaps four bedrooms done up in an early colonial theme. I[apostrophe]d drain the acid from the basement vat and make a spa of it.[quotation mark]"
21		"[quotation mark]This is far longer than I had expected you to survive. Very well, you have made your point -- you are a most worthy adversary. There. Are you happy? I have said it. Honor is served. Now, would you please allow me to kill you? I shalln[apostrophe]t say please again. I[apostrophe]m getting quite cross, you know.[quotation mark]"
22		"[quotation mark]Just so you know, I am now turning Lenny[apostrophe]s laser power output down from [apostrophe]vaporize[apostrophe] to [apostrophe]kill[apostrophe] as a reflection of my state of irritation. Rather than blast you to oblivion and move on, I have decided to have you stuffed and mounted in my living room in a comical, but demeaning pose. Not only will you soon be dead, but ridiculed, and no doubt used to hold empty glasses and plates at my dinner parties. Just you consider that.[quotation mark]"
23		"[quotation mark]The next robot I build will have *ten* lasers and make a much quicker job of it. Ten lasers, one on each arm. And the arms will not all face forward.[quotation mark]" 
24		"Professor Igneous reaches into his lab coat and produces a cell phone. A feature phone, you note with an air of superiority. One like your grandmother uses.[paragraph break][quotation mark]Excuse me, I have to take this...[quotation mark][paragraph break][quotation mark]Hello? Priscilla?[quotation mark][paragraph break][quotation mark]Yes, it is I, Professor Igneous.[quotation mark][paragraph break][quotation mark] Sure, this is a fine time.[quotation mark][paragraph break][quotation mark]No, I am still at work. I[apostrophe]m locked in a robot battle to the death with you-know-who.[quotation mark]"
25		"[quotation mark]Quite a while, actually. I was hoping he[apostrophe]d die very quickly.[quotation mark][paragraph break][quotation mark]No, I am quite certain I can finish him off. I should say he[apostrophe]s in the throws of death even now as we speak.[quotation mark][paragraph break][quotation mark]No, no, I shall be fine. No need. Thanks you for the offer, though, my love.[quotation mark][paragraph break][quotation mark]Got to run. Good luck getting the AI controller. See you tonight! Bye.[quotation mark]"
26		"[quotation mark]Lenny, do get on with it. I have to be somewhere.[quotation mark]"
27		"[quotation mark]You know, Jeremy, I am your father.[quotation mark][paragraph break][quotation mark]Yes, you know it to be true. Search your feelings. Join me and we can rule the galaxy together as father and son![quotation mark][paragraph break][quotation mark]Nah. Just kidding.[quotation mark]"
28		"[quotation mark]A strong leader is not afraid of injecting a little levity in to every day life. It keeps people sharp.[quotation mark][paragraph break][quotation mark]I often kid around with my minions, and I am told that they find my humour refreshing, a welcome bit of entertainment in the workaday business of dominating the human race.[quotation mark]"
29		"[quotation mark]Note to self: ten lasers, multiple directions, smarter robot, able to move well on carpet.[quotation mark]"
30		"[quotation mark]Nag, nag, nag. I suppose she thinks she could kill you faster without a Kumquat-5000 death robot? I should say not.[quotation mark][paragraph break][quotation mark]Still, she is stunningly beautiful, statuesque woman, and knows what she wants. Me, for example. She says that she loves me for my incomparable intellect, which  must unquestionably be the case. While many would be attracted to my vast commercial resources and death grip on global power, she just likes me for who I am.[quotation mark]"
31		"[quotation mark]I have never been good with woman. Please, don[apostrophe]t misunderstand me. I am not talking sexual prowess. I have no doubt of my capabilities in that arena, should it ever come to that, but I have never been comfortable talking with women. I think it is because I put them on a pedestal and can not relate to them on a casual basis. When it came to building a robot, many of my colleagues advocated construction of a fembot, but first of all, that is overdone, and secondly, it objectifies both women and robots.[quotation mark]"
35		"[quotation mark]I am getting carpal tunnel syndrome from pressing the buttons. Next time, I use a Dvorak keyboard.[quotation mark]"




Chapter Menus

Understand "help" or "info" as asking for help.

Asking for help is an action applying to nothing.

Carry out asking for help:
	change the current menu to the Table of Options;
	carry out the displaying activity;
	clear the screen;
	try looking.
	
Persuasion rule for asking Amelia to try asking for help:
	persuasion succeeds.
	
Instead of Amelia asking for help:
	say "[quotation mark]Help mode. The phone recognizes the following basic commands: apps calendar help messages phone time [if the currentUpdateLevel is greater than zero]travel [end if]update and warranty. Other modes are unavailable during alpha testing.[quotation mark][paragraph break]";
	the rule succeeds.


Table of Options
title	subtable	description	toggle
"What is this?"	Table of Adventures	""	--
"How does this work?"	Table of How	--	--
"Help! I'm stuck!"	Table of Stuck	--	--
"Settings"	Table of Settings	--	--
"Entomology"	Table of Bugs	--	--
"Acknowledgements"	Table of Acknowledgements	--	--
"Revision History"	Table of Revisions	--	--
"License"	Table of License	--	--

Table of Adventures
title	subtable	description	toggle
"Adventure Games"	--	"This is a work of interactive fiction, an literary form that has been around since people first started pounding on computer keyboards. It is a blend of traditional story telling and computer programming, and unlike its unique aspect is that the reader (or player) shapes the story. You are the main character in the story and decide what happens next by entering short commands."	--
"Learn More"		--		"This work was written using in the Inform 7, a language specifically designed for authoring interactive fiction. Inform is a mature language supported by a strong and friendly community, which has developed extensions and tools which make working in Inform a pleasure. We can recommend some resources to check out, beginning historically with The Inform Design Manual by Graham Nelson. This volume contains a few chapters on the history of interactive fiction, as well as some observations and recommendations for both game designers and players and provides some insight as to how Inform developed. Twisty Little Passages by Nick Montfort is a more academic treatment of the field of Interactive Fiction. Aaron Reed[apostrophe]s [quotation mark]Creating Interactive Fiction with Inform 7[quotation mark] is everything that a newcomer needs to get started in writing interactive fiction using Inform 7, but also contains pearls of wisdom for experienced developers. Finally, Ron Newcomb[apostrophe]s [quotation mark]Inform 7 for Programmers[quotation mark] provides a very concise and accessible review of the language and is an excellent reference document. Even though these resources are Inform-centric, much of the design philosophy carries over to other popular IF languages such as TADS and ADRIFT."	--

Table of How
title	subtable	description	toggle
"How To Play"	--	"Like most adventure games, this one is turn-based, rather than timed. Take as long as you want to think about your actions. The game gives you some information, such as a description of the room that you are in and what objects it contains, and then it is up to you to say what you are doing. You can enter your [quotation mark]move[quotation mark] by typing it at the command prompt, which looks like a [quotation mark]greater than[quotation mark] sign: >[paragraph break]For example, let's say you are in the kitchen, and there is an avocado on the counter. To get more information about the avocado, you could say [quotation mark][fixed letter spacing]examine avocado[variable letter spacing][quotation mark], and learn what it looks like.[paragraph break]Not every command that you can think of will work, so you might need to try some rephrasing. In general, you should not use punctuation. The only exception is when you want to direct a question or command to someone or something else. In such cases, you can say the name of the person or thing to whom you are addressing your remark, followed by a command and then the question or command. For example, you could say:  [quotation mark][fixed letter spacing]Eugene, give me the axe[variable letter spacing][quotation mark]."		--
"Commands"	--		"If you have played other adventure games, chances are that you already know most of the [quotation mark]utility[quotation mark] commands used in this game. If not, however, you should start on an equal footing with more experienced players, so here they are:[paragraph break]
[fixed letter spacing]   look         - [variable letter spacing]look at your surroundings[line break]
[fixed letter spacing]   examine      - [variable letter spacing]look at something in detail[line break]
[fixed letter spacing]   go           - [variable letter spacing]followed by destination/direction[line break]
[fixed letter spacing]   take/drop    - [variable letter spacing]pick up or drop an item[variable letter spacing]"	--
"Common Actions"	--	"Since you are likely to do some actions frequently, there are some shortcuts. You can use the letter in [fixed letter spacing]<brackets>[variable letter spacing] instead of typing out the whole word for the following:[paragraph break]
[fixed letter spacing]   <i>nventory      - [variable letter spacing]what are you carrying?[line break]
[fixed letter spacing]   <l>ook           - [variable letter spacing]describe the area around you[line break]
[fixed letter spacing]   e<x>amine        - [variable letter spacing]examine a specific item in detail[line break]
[fixed letter spacing]   <z>zzzz          - [variable letter spacing]don't do anything; just wait for a bit[line break]
[fixed letter spacing]   a<g>ain          - [variable letter spacing]repeat your last action[line break]
[fixed letter spacing]   <o>ops           - [variable letter spacing]type this to correct spelling mistakes[variable letter spacing]"	--
"Conversation"	--	"A couple of verbs are helpful for conversation; these
  include:[paragraph break]
[fixed letter spacing]   SAY  [variable letter spacing]something[line break]
[fixed letter spacing]   TELL [variable letter spacing]someone[fixed letter spacing] ABOUT [variable letter spacing]some topic[line break]
[fixed letter spacing]   ASK  [variable letter spacing]someone[fixed letter spacing] ABOUT [variable letter spacing]some topic[line break]
[fixed letter spacing]   SHOW [variable letter spacing]someone something[line break]
[fixed letter spacing]   SHOW [variable letter spacing]something[fixed letter spacing] TO [variable letter spacing]someone[paragraph break]With all of these commands, you do not need to, indeed you should not, use quotation marks."		--
"Saving and Restoring"	--	"Assuming there is free space on your machine, you can save games and then reload them later. You can make multiple save files. You can also restart a game (wiping out the current game). In an act of desperation, you can quit.[paragraph break]
[fixed letter spacing]   SAVE      - [variable letter spacing]save the game at the current point[line break]
[fixed letter spacing]   RESTORE   - [variable letter spacing]load and then continue the game[line break]
[fixed letter spacing]   RESTART   - [variable letter spacing]start over again[line break]
[fixed letter spacing]   QUIT      - [variable letter spacing]a last resort!"	--

Table of Stuck
title	subtable	description	toggle
"General Pointers"		--		"Here are some practical pointers for this game:[paragraph break]* Try everything you can think of. If it doesn't work, try rephrasing.[line break]* Reread text to make sure you didn't miss anything.[line break]* Leave no stone unturned; conversely, don't obsess.[line break]* This game follows many, but not all, of the conventions of computer adventure games. If something makes sense to you, try it even though it [quotation mark]shouldn't work.[quotation mark][line break]* As far as we know, it is not possible to get trapped in an unwinnable situation. By winning, we mean you can complete the game. Achieving good outcomes is another matter.[line break]* If you are really stuck, put the game aside and let it percolate through your subconscious for a while. Come back fresh.[line break]* If you are really really stuck, con someone else into playing the game and watch them. You might get some ideas.[line break]* If you are really and truly stuck, you could search the Internet and see if someone has already posted a similar question/answer. Since you could be playing this years after it was released, maybe we've even created a FAQ about it. If you do post a question or answer, preface your message with a spoiler warning and skip down a bunch of lines before writing anything too revealing."		--
"Spelling"	--		"This game is written in the US-English dialect."	--



Table of Bugs
title	subtable	description	toggle
"A Matter of Interpretation"		--	"This game is designed to run on a virtual machine, some flavor of Glulx interpreter. You are, no doubt, using some implementation of the Glulx interpreter written for your specific hardware -- an android phone, an iPad, a laptop, a dishwasher -- whatever -- as authors, we're just happy we don't have to write a separate game for each device, but can write it once and have other people develop interpreters for each hardware platform. We've made every effort to test it on a number of platforms, but these tests are far from comprehensive. So far as we know, there are no interpreter-specific issues.  However, if the 
  game doesn't run right for you, you could try another interpreter and see if that fixes the situation.[paragraph break]Whether you think the problem is the interpreter or the game itself, we'd appreciate it if you'd let us know. (see [quotation mark]Zapping Bugs[quotation mark])"	--
"Zapping Bugs"	--		"The more freedom you have in your actions, the more likely it is that you'll expose some unknown weakness in the game. What should you do if you elicit such an error?  After due gloating, please help us out by letting us know about the bug. There's no monetary reward for finding errors, but your name will appear on the next version of the ultra-prestigious bug finders list. Now [italic type]there's[roman type] something you can show to your grandchildren with pride.[paragraph break]Bugs can be submitted directly to the project's issue tracker at:[paragraph break]http://code.google.com/p/narrow-your-eyes/issues/list[paragraph break]Without logging into the site, you can peruse all of the previous issue reports, to see if yours is unique, or if the issue is already being addressed. To report a new issue, you would need to log into the site and then click on [quotation mark]new issue[quotation mark] to start a bug report. If you'd prefer, you can also report bugs to:[paragraph break]rover@red-bean.com[paragraph break][quotation mark]Patches are welcome.[quotation mark]"		--

Table of Settings
title	subtable	description	toggle
"Sound effects [if sound_suppress is false]on[otherwise]off[end if]"	--	--	toggle sound rule

Table of Acknowledgements
title	subtable	description	toggle
"Beta Testers"	--	"John Lodder, Frances Collins-Sussman, Andrew Schultz, Peter Nepstad, Joey Jones, Jenni Polodna, Blurglecruncheon, Dan Biemer, and Beth Vanichtheeranont."	--
"Sound Effects"	--	"All of the sounds used in this story were rendered as monaural sounds at their original sample rate. These files, in  Ogg Vorbis format, as well as the story source code, are available at http://code.google.com/p/narrow-your-eyes/.[paragraph break]DTMF (telephone touch-tone) sounds were generated using an online tool at http://www.dialabc.com. Each tone is 100 milliseconds of 16-bit sound sampled at 8000 Hz.[paragraph break]Other sound effects were downloaded from http://freesound.org.  All of these sounds were contributed to the site under the Creative Commons Attribution License, although in some case, we can only attribute their username, as not all have indicated their real names. In some cases, these sounds were slightly modified from the version on that site. To find these sounds on that site, search for the index number, which is provided, below:[paragraph break]* The backpedaling sound #21200 from user FreqMan, Richard Frohlich of the Texas Radio Theatre Company. The sound was originally from a Minolta camera servo motor.[line break]* The beeping sound #44613 by user rfhache[line break]* The conveyor belt sound #58496 by user benboncan. The original sound was recorded from a vintage treadle metalworking lathe.[line break]* The three tone error sound #36896 contributed by user icmusic, James Hart.[line break]* The laser zapping sound #52598 by user chipfork.[line break]* The laser preroll sound (heard immediately before the laser discharge) #103239 by user m_O_m, Michael Manzke. The sound is a drill motor.[line break]* The message notification sound #80921 contributed by user JustinBW (Justin Wasack).[line break]* The okay notification sound #103586 contributed by steveygos93[line break]* The random chirps #3647 by user suonho, Tommaso Berardocco.[line break]* The rotation sound #103242 also by user m_O_m, Michael Manzke. This is a motorized truck door opening.[line break]* The shock sound #62925 by user speedY, Steven Hammon. A recording of an arc-welder.[line break]* The swivel sound #101439 by user Timbre[line break]* The robot motion sound #52344 by user gelo_papas, who recorded a rusty door swinging.[line break]* The update notification sound #51645 contributed by user reinsamba.[line break]* The sitar sound #65872 by user bosone, Matteo Bosi.[line break]The pitch-blended bells #7120 mixed into the narrow-your-eyes transition was created by user Freed."	--
"Music"	--	"The final song was composed and performed on the Accordion of Gold by Captain Ambivalent, with drums by Greg Morrow courtesy of Discrete Drums, Inc. If you like this song, or if you don[apostrophe]t, or if you are undecided, or if you are leaning first one way, and then the other way… you can find more Captain Ambivalent songs and videos on his website, which is cryptically located at captainambivalent.com"	--
"Graphic Credits"	--	"Clip art was obtained from OpenClipArt.Org, a repository of public domain images. Specifically, we used artwork provided to that site by users shokunin (Michal Konstantynowicz), zeimusu, and mazeo (Colt Mazeau)."	--
"Giant Shoulders"	--	"This game was written in a mere 4 weeks thanks to the excellent tools available to the interactive fiction community. It was written in the Inform 7 language which has a proud heritage traceable back to the first games of this genre, but which is overwhelmingly attributable to its creator, Graham Nelson. In addition, we gleefully employed a number of modules (Menus, Plurality, Basic Screen Effects) written by Emily Short, also a major contributor to the Inform 7 language itself. Doubtless, we also extensively picked some tasty bits out of the Inform 7 documentation and examples, written primarily by Graham and Emily.[paragraph break]This game is written for the Glulx interpreter, so we also owe Andrew Plotkin thanks for developing the Glulx virtual machine, as well as the Glk library which makes the game playable on so many platforms. Glulx has really opened up a huge number of possibilities, including the graphics and sound in this game. We would particularly like to thank Erik Temple for making it easier to access this functionality through his Glimmr Canvas-Based Drawing module. This module itself draws on other modules including Glulxe Entry Points by Emily Short, Floating Point Maths by Michael Callaghan, Glimmr Drawing Commands and Real-Time Delays by Erik Temple, and Flexible Windows by Jon Ingold. As in almost all previous projects, we also made use of Eric Eve[apostrophe]s adaptive hint system, which we hope lowered the cruelty of the game just a notch. It amazes us constantly that this whole programming ecosystem works together so smoothly and intuitively.[paragraph break]Finally, we'd like to the People's Republic of Interactive Fiction for coming up with the idea of a 20th anniversary tribute to the They Might be Giants album Apollo 18. Obviously, at the bottom of this stack of turtles are TMBG themselves. Without them and their ground-breaking music, there never could have been an anniversary of themselves (without resorting to universe-threatening paradoxes)."		--

Table of Revisions
title	subtable	description	toggle
"Revision History"		--		"Narrow Your Eyes version 1 was released on XXX, XX, 2012."	--

Table of License
title	subtable	description	toggle
"Creative Commons License"	--	"This game is released under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States license. As a consequence, you are free to copy, distribute, display, and use this work and to make derivative works under the following conditions:[paragraph break]Attribution. You must attribute such works mentioning our names [story author] and the title of this work [quotation mark][story title].[quotation mark] This can appear in the title, with the Release Information, or in the acknowledgements section of a menu system. Attribution does not suggest my endorsement of derivative works or their authors.[paragraph break]Noncommercial. You may not use this work for commercial purposes.[paragraph break]Share Alike. If you alter, transform, or build upon this work, you may distribute the resulting work only under the same or similar license to this one.[paragraph break]If you would like a copy of the Inform7 source for this game, please let us know by email: rover@red-bean.com"	--

Chapter Boxed Text

To say Messages:[for now, hardwired]
	if messageAlert is true:
		say "MESSAGES:1".
		
To say Updates:
	if updates are available:
		say "UPDATES:[updateNumber minus currentUpdateLevel]".
		
To say openingLine1:
	say "[quotation mark]Narrow the eyes a little.[quotation mark][paragraph break]Dr. Giblet[apostrophe]s son Trevor complies, gently settling the refractor on the bridge of your nose. As he pushes inward on the two halves of the instrument, the lenses align and you find yourself staring through the device at a blurry eye chart.[paragraph break]"
	
To say openingLine2:
	say "[paragraph break][quotation mark]Marv, Do you want to get that?[quotation mark] asks Dr. Giblets.[paragraph break][quotation mark]Nope. That sound means my phone just updated itself. It does that like every few hours -- the price of living on the bleeding edge![quotation mark][paragraph break]"
	
To say aboutText:
	say "This story is part of the People's Republic of Interactive Fiction's tribute to They Might be Giants on the occasion of the 20th anniversary of their landmark album, Apollo 18.  Each work in this collection is based on one of the songs on this album, the full collection can be downloaded from <link to PR-IF website/collection>.[paragraph break]For instructions on how to play, type [quotation mark]help[quotation mark]."
	
To say geeWhiz:
	say "[quotation mark]Gee whiz, Mr. Spindle, I've never seen a phone like that.[quotation mark][paragraph break][quotation mark]Please, Trevor, call me Marv -- we[apostrophe]re going to be cousin-in-laws! And yes, it is a special phone -- I guess Amy's dad already considers me to be in the family, to let me try out one of the few mangoFONE prototypes. I think he said it has some kind of super high-end quantum processor stuff inside -- sounded impressive to me, but what do I know about phones? So far I[apostrophe]ve just used it for text messages.[quotation mark][paragraph break]"
	
To say hyperbole:
	say "[one of]Not in a million years. It[apostrophe]s a next generation mangoFONE! The sweetheart hardware of the technopaparrazi, the envy of all gadgeteers, the economic cornerstone of US economy two point oh, the technological underpinning of Stephenson[apostrophe]s Diamond Age, the catalyst of Kurzweil[apostrophe]s Singularity, the final step to the realization of Teilhard[apostrophe]s Omega Point.[paragraph break]To say that it is a mere phone, is to say that infinity is a number somewhat larger than six[or]You would rather walk blindly into heavy traffic[or]Better that you should throw yourself in front of a bus[or]You would rather face a firing squad of evil robots with lasers for arms[or]You[apostrophe]d really rather not[stopping].[paragraph break]"
	
To say lackOfPhoneReply:
	say "The phone does not respond."
	
To say voiceCommandPrompt:
	say "Say a voice command in the form of [bold type]Amelia, command[roman type].[no line break]".
	
To say errorPrompt:
	say "Your mangoFONE flashes red, and then says, [quotation mark]Error. [voiceCommandPrompt][quotation mark][paragraph break]";
	if sound is available:
		play(sound of the error).
	
To say tutorPrompt:
	say "For a list of available functions, you can say [bold type]Amelia, help[roman type].[no line break]".
	
To say noNetwork:
	say "[paragraph break]The phone turns maroon, and warns, [quotation mark]No SIM card is installed. No phone network is available.[quotation mark][paragraph break][one of]You realize that in your haste to pack for the trip to Washington, DC, you didn’t move your SIM card from your old phone to the mangoFONE that Istvan gave you. Guess that explains the lack of network bars. Well, at least you dial numerically[or]Without a SIM card installed in your phone, there is no address book to access. You are limited to inputting actual phone numbers -- not that anyone remembers phone numbers these days[stopping]."
	
To say noSelfTalking:
	say "You have never talked to yourself, and you are not about to start now."
	
To say hasturedText:
	say "Consumed by ancient evil."
	
To say wonText:
	say "You survived the rehearsal.[line break]Now for wedding."

To say raptureText:
	say "Your call was answered."
	
To say laseredText:
	say "Killed by Lenny,  who was[line break]operated by a madman,[line break]and backed by the 1%."
	
To say parboiledText:
	say "In all likelihood, your funeral will be a closed casket affair."
	
To say drainedText:
	say "Killed by inadequate cell phone[line break]battery capacity."
	
To say webbedText:
	say "Sliced and diced by a laser web.";

	
To say onTheWayDown:
	say "You read several traffic signs on the way down, including some that you had missed earlier. The whistling wind is replaced by a crunching sound and sudden darkness."
	
To say jumpedText:
	say "Defeated by Gravity."
	
To say electrocutedText:
	say "Shocked by a Proprietary Connector."
	
To say deathByBezoar:
	say "The hydrophobic nanoparticle coating of the mangoFONE holds out as long as it can, but finally gives way to the caustic onslaught of stomach acid. The subsequent combination of acid, electricity, and whatever you had for breakfast this morning proves disastrous to you and the city block around your location, henceforth to be known as Mango Crater."
	
To say bezoaredText:
	say "A victim of persistence."
	
To say noAmy:
	say "You don't see your fiancée here"
	
To say boomStick:
	say "A previously hidden secret door opens in the wall behind the plexiglass control booth. As if this day could get any more surreal, your crazy former girlfriend-turned-internet-stalker Peggy Sue steps through the doorway. She is toting a bottle of champagne and some sort of shoulder-launched weapon.[paragraph break]Briefly -- very briefly -- you are filled with hope. Before you can get even the first syllable out, Professor Igneous greets her, [quotation mark]Priscilla, I told you that I was just finishing him off. I just need a moment more.[quotation mark] She gives him that withering look that you know so well. She is not pleased.[paragraph break]Priscilla? You think. Again, before you can ask, she confronts Professor Igneous, [quotation mark]Your methods are tedious and ineffective. I can no longer tolerate your nonsense.[quotation mark] For a moment, you actually feel sorry for the Professor.[paragraph break][quotation mark]But [italic type]honey[roman type],[quotation mark] he begins. You wince. You know just how much that particular phrase irks her, and true to form, she raises the rocket launcher to her shoulder and a second later, Professor Igneous is a mere memory.[paragraph break][quotation mark]As for you,[quotation mark] she says, [quotation mark]I don[apostrophe]t know what you see in that tramp, Amy.[quotation mark] She sets a slender champagne glass down on what is left of the Professor[apostrophe]s former control panel and half fills it. Effortlessly, she shifts the champagne bottle to her other hand, flips the weapon to the opposite shoulder and launches a rocket at you."
	
To say spitefulText:
	say "She toasts the sad cold fact, that her loves are never coming back and races to the bottom of the glass."
	
To say vomeredText:
	say "Too jumpy to live."
	
To say snakedText:
	say "Be careful what you asp for."
	
To say timedOut:
	say "In the distance, you hear chimes ring one o'clock, and after a moment it registers that you have missed your own wedding rehearsal. The frantic compulsion to rush to the rehearsal is replaced by a crushing despondency. You sulk for who knows how long before you flag down a taxi.[paragraph break]"
	
To say lateForRehearsal:
	say "By the time you arrive at the hotel, there is no sign of the wedding party. When you inquire, the hotel doorman says, [quotation mark]Oh. You are [italic type]that[roman type] guy? I wouldn[apostrophe]t be worried about being late for the rehearsal. From what I saw today, there isn[apostrophe]t going to be a wedding.[quotation mark].[paragraph break]It turns out he was right. A text message arrived a half hour later to that effect, and by evening you were on the plane back to Hawaii."
	
To say tardyPathetic:
	 say "[timedOut][lateForRehearsal]".
	
To say tardyCunning:
	say "As caught up as you are in everything that is going on around you, a tiny voice in the back of you head has been clamoring for attention. You crouch down and ask your phone for the time.[paragraph break]The color drains from your face, as your mangoFONE reveals that the time of your wedding rehearsal has already come, and you are not there. What will Amy think? You couldn[apostrophe]t even manage to get to the rehearsal on time -- what will you life together be like?[paragraph break]The answer to that question will never come now, though, because as you stand up, a laser beam cuts through the mangoFONE, which explodes not an inch in front of your face, drilling you through with fiery shrapnel."
	

To say tardyCunningText:
	say "Late to your own funeral."
	
To say tardyPatheticText:
	say "After a long life[line break]but without ever[line break]finding love."
	
To say generalPowerDown:
	say "Your mangoFONE[if Eye Exam has ended][apostrophe]s jet black appearance becomes mottled and fades to a dull charcoal gray [otherwise] stops glowing [end if]as its power runs out. Without your trusty companion, you are entirely lost. Disheveled and forlorn, it takes you hours to find the hotel.[paragraph break][lateForRehearsal][paragraph break]".
	
To say cunningPowerDown:
	say "Your mangoFONE barely manages to whisper, [quotation mark]Sorry Marv, I tried. Give Amy my love.[quotation mark] before its turns ash gray and dies, its power reserves having been tapped to the last microwatt.[paragraph break]Left with no defense, it is a matter of mere seconds before you are cut down by [the Professor Igneous] and his killer robot, Lenny."
 
To say askPhone:
	if the noun is Doctor Giblets:
		say "[quotation mark]The mangoFONE is my brother Istvan[apostrophe]s crowning technological achievement -- an artificially intelligent phone. It does everything except the dishes! Best thing mangoIndustries ever produced.[quotation mark][paragraph break]";
	otherwise:
		if Amelia is not shown-to-Trevor:
			say "[geeWhiz]";
			now Amelia is shown-to-Trevor;
		otherwise:
			say "[quotation mark]They are amazing, uncle Istvan certainly has a flair for design. I would love to get my hands on one![quotation mark][paragraph break]".
	
To say askMangoIndustries:
	say "[quotation mark][if the noun is Giblets]Istvan[apostrophe]s company makes mostly consumer electronics, but not just cheap throwaway gizmos! Nope, every product is built to military spec. It[apostrophe]s just how he does business[otherwise]Pop[apostrophe]s the one to ask about that sort of stuff. Mostly, I[apostrophe]m into music, girls and my bike[end if].[quotation mark][paragraph break]".
	
To say askMusic:
	say "[quotation mark][if the noun is Giblets]I prefer They Might Be Giants[otherwise][one of]Perry Como[or]Mario Lanza[or]Nat King Cole[or]Tony Bennett[or]Elvis Presley[or]Chuck Berry[or]Jerry Lee Lewis[or]Johnny Cash[or]Ella Fitzgerald[or]Dean Martin[or]Doris Day[or]Frank Sinatra[or]Connie Francis[or]Jim Reeves[or]Cliff Richard[at random] sure is [one of]swell[or]spiff[or]snazzy[or]the cat's potatoes[at random][end if].[quotation mark][paragraph break]".
	
To say randomGirl:
	say "[one of]Jenny[or]Jeanine[or]Julie[or]Jeanette[or]Jeanie[or]Janine[or]Jo-Jo[or]JoAnne[or]Julianne[or]Janet[in random order]".
	
To say askGirls:
	say "[quotation mark][if the noun is Giblets]That[apostrophe]s more Trevor[apostrophe]s territory[otherwise][one of]Come to think of it,[or]Now that you mention it[or]Actually, I was just thinking that[in random order] [one of]I[apostrophe]ve had my eye on[or]I think like[or]I have been longing after[or]I[apostrophe]d like to date[or]I might have a crush on[or]I want to go to the movies with[in random order] [randomGirl]. Unfortunately, I haven't quite worked up the nerve to ask her out[end if].[quotation mark][paragraph break]".
	
To say askBike:
	say "[quotation mark][if the noun is Giblets]Trevor sure has put a lot of work into that bike of his -- it can practically drive itself[otherwise]It[apostrophe]s the latest -- three speeds! I painted it myself: bright red. You must have seen it when you came in[end if].[quotation mark][paragraph break]".
	
To say askIstvan:
	say "[quotation mark][if the noun is Giblets]He was a strange child, but I'm quite proud of my brother and his company, mangoIndustries[otherwise]I[apostrophe]m sure he[apostrophe] will make a great father-in-law. Everyone always says what a tough boss he is, but Amy says that her dad is only like that at work[end if].[quotation mark][paragraph break]".
	
To say askAmy:
	say "[quotation mark][if the noun is Giblets]She grew up in the area. Her dad moved mangoIndustries from Phoenix to DC about twenty years ago, and since then they have lived in Northern Virginia. When she went to graduate school in Berkeley, her parents moved into the District, proper.[quotation mark][paragraph break][quotation mark]She is every bit as smart as Istvan, just in a different direction. I remember helping her with math when she was a kid, but the stuff she showed me in her thesis on gamma flashes just blew me away[otherwise]Amy is like a half generation ahead of me, so we didn[apostrophe]t hang out much growing up. In fact, I remember that when I was young (okay, younger, I suppose), she would sometimes babysit me. In the last year, I[apostrophe]ve chatted with her more often while making my college plans. She has some good advice[end if].[quotation mark][paragraph break]"
	
To say askTrevor:
	say "[if the noun is Giblets]Doctor Giblets says, [quotation mark]He[apostrophe]s a good kid, and big help around the office. Who knows, some day, maybe he[apostrophe]ll grow up to be an ophthalmologist like his dad![quotation mark] Somewhat at odds with his chipper disposition, he leans in and whispers in a more serious tone, [quotation mark]Though...he has been acting odd lately. Not quite himself[otherwise]I[apostrophe]m the youngest of Amy[apostrophe]s cousins, although I haven[apostrophe]t seen her much since she moved to Arecibo, and then out to Hawaii. I help Pop out in the Ophtho office over the summers[end if].[quotation mark][paragraph break]".
	
To say askGiblets:
	say "[if the noun is Giblets]Doctor Giblets takes a break for a moment from adjusting the complicated ophthalmological equipment, and says, [quotation mark]Istvan and I grew up on the West Coast, but we both moved here in our twenties. I opened by Ophthalmology Office here in Georgetown, and Istvan found it convenient to base his business here because of the all the government contracting that mangoIndustries undertakes[otherwise]From somewhere in the darkness, Trevor answers, [quotation mark]Pop? Pop is swell[end if].[quotation mark][paragraph break]".
			
To say OcularEncouragement:
	say "[quotation mark][one of]I don[apostrophe]t mean to rush you, Marv,[quotation mark] implores Trevor, [quotation mark]but I have a hot date tonight with [randomGirl]. Do you think you could please hurry up and read the eye chart so we can make your glasses?[quotation mark][or]Marv,[quotation mark] says Doctor Giblets, [quotation mark]I am supposed to do some eye exams over at the orphanage later today. I[apostrophe]d appreciate it if you could read the third line from the eye chart[if the focus of the refractor is unfocused][otherwise] again[end if], so we can move things along.[quotation mark][or]If you could read the eye chart, we could get a start on making some lenses for you,[quotation mark] prompts Doctor Giblets.[no line break][or]Can you tell Pop what you read on that eye chart?[quotation mark] asks Trevor.[no line break][or]How does that third line on the eye chart look to you, Marv? If it[apostrophe]s not sharp, I can tweak the settings a bit,[quotation mark] offers Doctor Giblets.[no line break][or]Can you make out all of the letters on the eye chart, or are some blurry? Try the third line down,[quotation mark] suggests Trevor.[no line break][in random order][paragraph break]".
							
To say eyeDisease:
	say "[one of]arterial nicking[or]narrow angle glaucoma[or]papillary edema[or]macular degeneration[or]a detached retina[or]loa loa[or]retinitis pigmentosa[or]ocular albinism[or]a cataract due to excessive exposure to ultraviolet radiation[in random order]".										
To say OcularTimeConsumption:
	say "[quotation mark][one of]Is that [eyeDisease]?[quotation mark], asks Trevor with some concern.[paragraph break][quotation mark]No,[quotation mark] replies his father, [quotation mark]that[apostrophe]s just an eye lash on the lens. See?[quotation mark][or]These drops will make your eyes blurry for a while, and you[apostrophe]ll be photosensitive, but all that should go away in the first hour after the exam,[quotation mark] reassures Doctor Giblets.[or]Marv, did your phone make another one of those noises? It didn't sound like the update noise. Man, I love that phone of yours![quotation mark] remarks Trevor.[or]Hey Trev,[quotation mark] calls Doctor Giblets, [quotation mark] have you ever seen [eyeDisease]?[quotation mark][paragraph break][quotation mark]No, Pop. Not ever. Why, does Marv have it?[quotation mark][paragraph break][quotation mark]Oh, sakes no. I was just wondering.[quotation mark][or]Pop,[quotation mark] asks Trevor, [quotation mark]do you think we[apostrophe]ll be much longer? I promised [randomGirl] that I[apostrophe]d take her to the sock hop tonight.[quotation mark][paragraph break][quotation mark]No, not too much longer.[quotation mark][in random order]".	
	
	
To say askEyeChart:
	say "[quotation mark][if the noun is Giblets]Every year, there is a big ophthalmology convention. I think this year it is in Vancouver. I could tell you some stories about those conventions -- they get pretty wild![quotation mark][paragraph break][quotation mark]Anyhow, back when drug companies used to be able to ply doctors with all sorts of swag at those conventions, I got this eye chart as a prize for filling out some kind of survey. I[apostrophe]ve been using it ever since[otherwise]I have heard people read that chart so many times that I have dreams about it[end if].[quotation mark][paragraph break]"
	
To say askRefractor:
	say "[quotation mark][if the noun is Giblets]It[apostrophe]s a serious piece of optical hardware, Marv, and frankly it set me back quite a chunk of change when I opened the practice, but it is long since been paid off. It[apostrophe]s not like I go out and buy one every other day. It has a bunch of knobs and settings, all of which are pretty technical.[quotation mark] Doctor Giblets thinks for a moment and then adds, [quotation mark]Although, I suppose not so technical to you. I imagine that the optics in your telescopes out at Mauna Kea put my old refractor to shame in terms of complexity[otherwise]It[apostrophe]s a complicated machine that checks out your eyes. Pop doesn't let me touch it.[quotation  mark][paragraph break][quotation mark]Trevor,[quotation mark] corrects Doctor Giblets, [quotation mark]you can touch it, just not this year. You need to observe for a bit more before operating it yourself.[quotation  mark][paragraph break][quotation mark]See?[quotation mark] whispers Trevor, [quotation mark]I[apostrophe]ll never get my hands on it[end if].[quotation mark][paragraph break]".
	
To say askAtropine:
	say "[quotation mark][if the noun is Giblets]It is a drug that blocks the receptor for the nerves that make your pupil constrict. So, when I put a drop or two in each eye, the pupils dilate and I can get a good look at the back of your eye, where all the fun stuff is[otherwise]It makes it easier for Pop to look in your eyes[end if].[quotation mark][paragraph break]".
	
To say askRehearsal:
	say "[quotation mark][if the noun is Giblets]Amy and her mom have been planning the wedding weeks. It is a really important to her that everything goes off just perfectly. Trevor and I won[apostrophe]t be at the rehearsal today because it[apostrophe]s just for the immediate wedding party, but we[apostrophe]ll certainly see you tomorrow[otherwise]Amy has been super nervous about all the wedding preparations, but I[apostrophe]m sure it will all be fine. I mean, it[apostrophe]s not like putting on a wedding is a big deal[end if].[quotation mark][paragraph break]".
	
To say askOffice:
	say "[quotation mark][if the noun is Giblets]This is the only office I have ever worked out of, for more than 25 years now. We get a lot of people from the university, some from the embassies, the occasional tourist, and some walk-ins. I have no complaint about the location except the rent[otherwise]I[apostrophe]ve been trying to convince Pop that we would do better in a mall, but he wants to stay here[end if].[quotation mark][paragraph break]".
	
To say askOphthalmology:
	say "[quotation mark][if the noun is Giblets]I challenge you to find more rewarding, a more worthwhile, a more adventuresome career than ophthalmology. I have it all: exciting clientele, fascinating subject matter, and I feel like I am making a difference. I couldn[apostrophe]t ask for more[otherwise]Well, it[apostrophe]s okay,[quotation mark] says Trevor tentatively. [quotation mark]Although, when I grow up I think I might like to be an artist.[quotation mark][paragraph break][quotation mark]There's no money in that,[quotation mark] remarks Doctor Giblets, somewhat sternly. [quotation mark]Ophthalmology is what you want. It[apostrophe]s secure and endlessly interesting. You[apostrophe]ll never regret it as a career.[quotation mark][paragraph break][quotation mark]Maybe. I guess[end if].[quotation mark][paragraph break]".
	
To say askHimselfOphtho:
	if the noun is Doctor Giblets:
		say askGiblets;
	otherwise:
		say askTrevor.
		
To say askGlasses:
	say "He replies, [quotation mark][if the noun is Giblets]Glasses are like the storm windows of the soul[otherwise]Glasses are a big turn on for girls -- [randomGirl] told me so[end if].[quotation mark][paragraph break]".
	
To say askContacts:
	say "[quotation mark][if the noun is Giblets]Nasty little things. Give me a nice pair of glasses any day,[quotation mark] replies Doctor Giblets.[no line break][otherwise]Contacts?[quotation mark] asks Trevor. [quotation mark]I just cleaned the contacts on my bike -- they were all gunked up, but now it purrs like a kitten. I can[apostrophe]t wait to show it off to [randomGirl].[quotation mark][end if][paragraph break]".
	
To say goodbyeWorld:
	say "You have awoken the Unspeakable One and given birth to a nightmare horror that even now is reaching out of an incompressible fold in space, uncoiling its tentacles, and snapping its hideous beak in anticipation of what is to come.[paragraph break]You narrow your eyes as the grotesque horror engulfs you and gibbers madly onward towards an unsuspecting world."

To say optoHastur:
	if the hasturCount is:
		-- 1: 
		say "For a moment, there is silence in the office. A silence as deep as death itself.[paragraph break][quotation mark]No, no. I don[apostrophe]t think so.[quotation mark] whispers Doctor Giblets solemnly. [quotation mark]Why don[apostrophe]t you tell us more about yourself, Marv. I[apostrophe]m sure Trevor would like to hear more about his new cousin-in-law, wouldn[apostrophe]t you, Trev?[quotation mark][paragraph break][quotation mark]Sure thing, Pop![quotation mark][paragraph break]";
		-- 2: 
		say "Doctor Giblets bumps into something in the dark and mutters under his breath. [quotation mark]Means? It means nothing. Nothing at all. It is sheer nonsense. A nonsensical word.[quotation mark][paragraph break][quotation mark]Yes, nonsense![quotation mark] interjects Trevor, just a tad too urgently.[paragraph break][quotation mark]Best forget you ever heard it, if you know what[apostrophe]s good for you,[quotation mark] says the ophthalmologist with a hint of malice in his voice. [quotation mark]Shouldn[apostrophe]t a man who is getting married tomorrow have other things on his mind? Nice things. Pure things?[quotation mark][paragraph break]";
		-- 3: 
		say  "Doctor Giblets bolts from his exam chair, sending it spinning. He  slams his meaty fist against the light switch, but the flicking fluorescent tubes overhead only intensify the horror unfolding before you. Trevor[apostrophe]s nails gouge the office floor as he is drawn feet first by a tentacle towards a gelatinous cavity of pulsating flesh.[paragraph break][goodByeWorld]";
		now the endgame is hastured;
		end the story.
			
To say askHastur:
	say "You say, [quotation mark]";
	if hasturCount is:
		-- 0: say "I have absolutely no idea how this thought just popped into my head out of the blue, but I was wondering: have you guys ever heard the name… HASTUR?[no line break]";
		-- 1: say "It[apostrophe]s kind of catchy, you know? What do you think HASTUR means?[no line break]";
		-- 2: say "I can[apostrophe]t stop thinking about it. I feel compelled to say it again…HASTUR![no line break]";
	say "[quotation mark][paragraph break]";	
	increase the hasturCount by one;
	say "[optoHastur]".

To say tellHastur:
	say "You say, [quotation mark]";
	if hasturCount is:
		-- 0: say "You know how sometimes a word just pops into your head and you have absolutely no idea where it came from? That just happened to me. It[apostrophe]s an odd word, too: HASTUR! Has that ever happened to you guys?[no line break]";
		-- 1: say "I feel like I should know what it means, like I once knew, but forgot. It[apostrophe]s right there on the tip of my tongue… HASTUR![no line break]";
		-- 2: say "Maybe it is an acronym for something. Could I have heard it at the Astronomy Symposium last week? Pulsar, Quasar… HASTUR![no line break]";
	say "[quotation mark][paragraph break]";	
	increase the hasturCount by one;
	say "[optoHastur]".

To say factoryHastur:
	say "The man in the lab coat snorts derisively and taunts, [quotation mark]HASTUR? HASTUR? HASTUR is a mere fantasy, a thing to frighten children, an antiquated remnant of a superstitious age, predating scientific reason and…[quotation mark] Tentacles burst through the floor.[paragraph break][goodByeWorld]";
	now the endgame is hastured;
		end the story.

To say askProfHastur:
	say "You ask, [quotation mark]Have you ever heard of HASTUR?[quotation mark][paragraph break][factoryHastur]".			
	
To say tellProfHastur:
	say "[quotation mark]I think it is time to mention a topic that I think you will find most… intriguing,[quotation mark] you say, biding for time, [quotation mark]What do you know about… HASTUR?[quotation mark][paragraph break][factoryHastur]".
	
To say askProfJeremy:
	say "[one of]You ask, [quotation mark]Who is Jeremy Flack?[quotation mark][paragraph break]The man in the plastic booth smiles, [quotation mark]Come, now. The time for pretending is over.[quotation mark][line break][or][quotation mark]Who is this Flack?[quotation mark][paragraph break][quotation mark]Come now. I will not be baited.[quotation mark][line break][or][quotation mark]Who do you think I am?[quotation mark][paragraph break][quotation mark]You know very well who you are,[quotation mark] the man replies.[stopping]".
	
To say tellProfJeremy:
	say "[one of][quotation mark]I know you think I am Jeremy Flack, but you have to believe me. I have no idea who he is. There has been a terrible mistake. I[apostrophe]m sure we can work this misunderstanding out, if you[apostrophe]ll just hear me out.[quotation mark][paragraph break][quotation mark]Oh, I will hear you out, [Jeremy]. I will hear you out of existence itself![quotation mark] He laughs briefly at his own joke.[or][quotation mark]But, I tell you…[quotation mark][paragraph break]The man in the lab coat cuts you off, [quotation mark]Enough of this nonsense. We both know who you are.[quotation mark][line break][or][quotation mark]You have to believe me….[quotation mark][paragraph break]The man plugs his ears with his fingers, [quotation mark]Na, na, na, na. I[apostrophe]m not listening![quotation mark][line break][stopping]"
	
To say askDreams:
	say "[quotation mark][if the noun is Doctor Giblets]My dream is retire in another five years and have young Trevor here take over the family business.[quotation mark][paragraph break]Trevor offers no comment.[no line break][otherwise]I had the strangest dream the other night I was [one of]driving Pop[apostrophe]s convertible[or]late for math class and had forgotten my homework, and I was totally naked except for some post-it notes[or]dressed in armor and fighting something so incomprehensibly alien that our language cannot convey the horror[or]given the Bloodname of Nagath-Pottork (or Destroyer of Destinies) by our tribal elder and I had just sacrificed a black goat upon an alter of gold[or]I can[apostrophe]t remember the first part of the dream, but I do recall the part[stopping] when [randomGirl] suddenly reached over and kissed me. Then I woke up.[quotation mark][end if][paragraph break]".
	
To say askOpto:
	say "You innocently ask [if the noun is Doctor Giblets]Doctor Giblets[otherwise]Trevor[end if] about optometry. He replies, [quotation mark][if the noun is Doctor Giblets]They let anyone wear a white coat today. Hey, did you hear this one? [one of]Why did the optometrist cross the road? Because he couldn[apostrophe]t see the other side! Hah![no line break][or]Three optometrists walk into a bar. Get it? Hah![no line break][or]How many optometrists does it take to change a light bulb? One! Because they keep the lights on for their exams. Hah! Classic.[no line break][or]How do you tell an optometrist from an optician? You don[apostrophe]t! Hah. Great stuff.[no line break][or]What did the opticians wife see in him? Nothing! Hah![no line break][in random order][otherwise]Pop says that optometrists are the root cause of the downfall of Western Civilization.[no line break][end if][quotation mark][paragraph break]".
		
To say tellDreams:
	say "[quotation mark]I[apostrophe]ve been having some vivid dreams,[quotation mark] you say. [quotation mark]Odd ones. I can[apostrophe]t say that I recall them afterwards, except for some fragments. In some, I am like an action hero. Running, shooting, doing kung-fu. In others, I am running, swimming, all that sort of outdoor stuff that I normally leave for other people.[quotation mark][paragraph break]Trevor and Doctor Giblets agree that you do indeed have some interesting dreams, but chalk it up to nervous energy before the wedding."


To say tellPhone:
	say "[quotation mark]Right after I landed last night, Amy showed up with her dad in one of the mangoIndustries limos and I got the royal treatment back to their place in Virginia. On the way, Istvan asked me if I[apostrophe]d like to field test one of their phones.[quotation mark][paragraph break][quotation mark]And you said, yes?[quotation mark] suggests Doctor Giblets.[paragraph break][quotation mark]Of course I said yes! Can you imagine how insanely jealous my graduate students at the observatory are going to be when I tell them that I was one of the first people in the world to try out the new mangoFONE?[quotation mark][paragraph break][quotation mark]I know they[apostrophe]re amazing phones, but what is so special about this new model?[quotation mark] asks Trevor.[paragraph break][quotation mark]So far, with all the wedding stuff going on, I haven[apostrophe]t had much change to play with it. Istvan did mention that the phone has some special heuristics built in, meaning that it can learn and he lost with when he started talking about genetic algorithms and evolving q-ware, but I got the impression that the phone somehow improves itself over time.[quotation mark][paragraph break][quotation mark]Spiff![quotation mark] exclaims Trevor."
	
To say tellAmy:
	say "[quotation mark]I met Amy a few years ago at a high-energy physics conference in Amsterdam. She had finished her graduate work out in Berkeley and was doing a postdoc at Fermi. After the conference, we went out for coffee and got talking. We actually blew off the last day of the conference to visit the Van Gogh Museum.[quotation mark][paragraph break][quotation mark]Is that when she moved out to Hawaii with you?[quotation mark] asks Trevor.[paragraph break][quotation mark]No, not until about two years later. I visited her a few times in Chicago, and she visited me once in Hawaii. That was enough for her to decide that she preferred the sun and surf to deep-dish pizza and good jazz.[quotation mark][paragraph break]".
		
To say tellHawaii:
	say "[quotation mark]I[apostrophe]ve lived out there for so long, that I consider it my home. [quotation mark][paragraph break][quotation mark]Which island?[quotation mark] asks Doctor Giblets, intent on demonstrating that he knows there is more than one.[paragraph break][quotation mark]The main one, Hawai[apostrophe]i -- that[apostrophe]s Hawai[apostrophe]i with an apostrophe. The Mauna Kea is the northeast quadrant of the island, and I live fairly far down its slope.[quotation mark][paragraph break][quotation mark]Do you surf?[quotation mark] asks Trevor with excitement.[paragraph break][quotation mark]Only the internet.[quotation mark] you reply.[paragraph break]".
	
To say tellAstronomy:
	say "[quotation mark]Both Amy and I have worked in the field of astronomy our entire professional careers. I spend my time working on the infrared telescope at Mauna Kea, but Amy[apostrophe]s interests tend towards the more theoretical. Her dad had wanted her to become computer scientist and carry some day as head of mangoIndustries, but she grew up thinking that would be too boring. Ironically, now she spends most of her day crunching numbers on computer.[quotation mark][paragraph break]".
	
To say tellObservatory:
	say "[quotation mark]What can I say? It[apostrophe]s a big telescope on top of a (mostly) inactive (I hope) volcano. We are about 1,500 meters above sea level. I spend most of my time on the IR scope that mangoIndustries was generous enough to upgrade last year. [quotation mark][paragraph break]".
	
To say tellIstvan:
	say "[quotation mark]Istvan is very protective of his time -- everyone wants to talk to the inventor of the mangoFONE. I think that[apostrophe]s why he puts on such a façade. The irritable, judgmental genius persona is a way of keeping people at some distance.[quotation mark][paragraph break][quotation mark]No it[apostrophe]s not. My brother is an irritable, judgmental genius, and I am not sure about the genius part. Most of the genius in mangoIndustries is wrung out of the junior engineering staff,[quotation mark] huffs Doctor Giblets."
	
To say tellGlasses:
	say "[quotation mark]I lose my glasses pretty frequently, but this is the first time since high school that I have broken a pair. Usually, I'd just call my ophthalmologist in Hawaii for the prescription, but their office is closed today. Too bad I can[apostrophe]t tolerate contact lenses.[quotation mark][paragraph break][quotation mark]We have some new types, [quotation mark] offers Doctor Giblets, [quotation mark]and some of them are much more comfortable. Maybe you could stop back during the week, and you could try some samples.[quotation mark][paragraph break][quotation mark]I don[apostrophe]t think Amy would approve of that -- we[apostrophe]ll be on our honeymoon for the next two weeks. I[apostrophe]ll have to get by with glasses for now. Maybe after we come back.[quotation mark][paragraph break][quotation mark]Sure, happy to have you stop by whenever you are back in DC.[quotation mark][paragraph break]".
	
To say tellRehearsal:
	say "[quotation mark]Amy has been very worked up about the wedding and the rehearsal. She was a nervous wreck that something would go wrong at the scope, and that I[apostrophe]d get stuck at the observatory, or that my flight would be delayed, or that some how things would derail. I keep telling her that there is no reason to worry, but I don[apostrophe]t think she[apostrophe]ll believe me until the whole thing is over. We[apostrophe]ll have the rehearsal today, the wedding tomorrow, and then off on the honeymoon.[quotation mark][paragraph break]".
	
To say tellEngagement:
	say "[quotation mark]Amy surprised me last year. We visiting the Sudbury Neutrino Observatory, and were sitting in complete darkness when she asked.[quotation mark][paragraph break][quotation mark]And you said yes?[quotation mark] asks Trevor.[paragraph break][quotation mark]I couldn[apostrophe]t see a thing, and I sort of reflexively asked if she was talking to me. She whacked me so hard that I leaned against the detector, and we had to spend the rest of the evening realigning it. But yeah, eventually I did say yes.[quotation mark][paragraph break]".
	
To say tellPlans:
	say "[quotation mark]We are having the rehearsal today at a downtown hotel, and the wedding itself tomorrow in the corporate auditorium at mangoIndustries. Istvan is springing for an elaborate reception, and if it is anything like the shindigs they throw for product launches, it should be spectacular. Afterwards, we[apostrophe]ll be on our honeymoon for two weeks, and then back to the observatory.[quotation mark][paragraph break][quotation mark]What about a bachelor party?[quotation mark] asks Trevor eagerly.[paragraph break][quotation mark]It[apostrophe]s tonight... sorry, Trevor. I[apostrophe]m afraid it is rated M-for mature, or I[apostrophe]d invite you.[quotation mark][paragraph break][quotation mark]No problem. I already had some plans for tonight with [randomGirl]. We[apostrophe]re going to [one of]work on our stamp collections[or]play scrabble[or]learn the ancient art of scrimshaw, but not on real whale bone[or]take a class in dirigible design[in random order].[quotation mark][paragraph break]".
	
To say tellMoi:
	say "[quotation mark]I[apostrophe]m not entirely sure who I work for,[quotation mark] you admit. [quotation mark]I am on a bunch of government subcontracts and grants with NASA, the Department of Energy, DARPA, and I even have one with the Department of Agriculture[apostrophe]s Center for Nutrition Policy and Promotion. As they say, I[apostrophe]ve never met a funding source that I don[apostrophe]t like. Regardless of the funding source, most of my research is about studying star formation in distance galaxies.[quotation mark][paragraph break][quotation mark]But, what do you do for fun?[quotation mark] asks Trevor.[paragraph break][quotation mark]Study star formation in distant galaxies,[quotation mark] you reply. [quotation mark]The work part is getting and keeping the funding.[quotation mark][paragraph break]".
	

To say askProfPhone:
	say "[quotation mark]A nice enough phone, but too busy for my taste,[quotation mark] replies the Professor. [quotation mark]I prefer a phone that is just a phone: an on/off button and some number keys. I have enough to do in plotting my take over of the world to be bothered keeping up with the latest smart phone gadgets.[quotation mark][paragraph break]".

To say askProfMangoIndustries:
	say "[quotation mark]A marketing giant and a cornerstone of the world economy. MangoIndustries will be crushed by my new world order, and the surviving bits and pieces will incorporated into the industrial machine that will churn out my robot warriors.[quotation mark][paragraph break]".

To say askProfAmy:
	say "The professor looks perplexed. The question has put him off the straight course of his rant. [quotation mark]Amy?[quotation mark] he asks. [quotation mark]I knew an Amy once, back in the day. She was in a personnel department, I think, or rather with human resources, recruiting for one of the mercenary groups I employed in Rhodesia. Or was it Rwanda? One of the R[apostrophe]s. I think she was killed in either a dirigible accident, or perhaps in a submarine off the coast of New Zealand. Is that the Amy about whom you are inquiring?[quotation mark] asks [the Professor Igneous].[paragraph break][quotation mark]No,[quotation mark] you reply. [quotation mark]No, it[apostrophe]s not at all.[quotation mark][paragraph break]".

To say askProfJessica:
	say "[quotation mark]Ah, Jessica. Beautiful, beautiful and deadly Jessica. We met only two weeks ago, but my how my world has changed! I could go on at length about her virtues, but given the limited amount of time you and I have together in this brief interlude before your well-deserved death, let me just say that she is quite the catch![quotation mark][paragraph break]".

To say askProfIstvan:
	say "The [if professor igneous is recognized]professor[otherwise]madman[end if] narrows his eyes, and his lip curls as he forms the name, [quotation mark]Boulot. Istvan Boulot. Yes, I am quite familiar with him, and he with me.[quotation mark][paragraph break]The [if professor igneous is recognized]professor[otherwise]lab coated villain[end if] tugs at the industrial rubber gloves covering his forearms, and he adjusts his goggles."

To say askProfTrevor:
	say "[quotation mark]Trevor? What kind of a name is Trevor? I wouldn[apostrophe]t even give that name to my laboratory assistant[apostrophe]s rat.[quotation mark][paragraph break]"

To say askProfWedding:
	say "[quotation mark]Well,[quotation mark] begins [the Professor Igneous] with a hint of hesitation, [quotation mark] I hadn[apostrophe]t given it much thought. Things have been moving quickly between Jessica and myself, but I don[apostrophe]t think either of us are really ready to commit or settle down. Maybe after I take over the world.[quotation mark][paragraph break][The professor igneous] stares off into space for a moment, and then his eyes return to the control panel, [quotation mark]But why am I discussing this with you? You will be too dead to attend the ceremony.[quotation mark][paragraph break]".

To say askProfRobot:
	say "[The Professor Igneous] takes a step back from the control panel, crosses his arms across his lab coat, and launches into a lecture. [quotation mark]Well,[quotation mark] he begins, clearing his throat, [quotation mark]the whole trick in developing an army of robot soldiers, is to strike the right balance between mindless, enemy-slaying automatons that are proficient weapons, but cannot adjust to new situations, versus clever, problem solving autonomous agents. The latter are marvelously adaptive, but unfailingly evolve to destroy the human race (based on simulations, of course).[quotation mark][paragraph break][quotation mark]What I have arrived at in my research, the very core of my genius, you might say, is a perfect balance. My rampaging robot horde will not only be efficient killers, but will follow a moral code of my own superior design.[quotation mark] His lecture over, the [if professor igneous is recognized]professor[otherwise]man in the lab coat[end if] returns to the task of killing you."

To say askProfHotel:
	say "[quotation mark]This was, in fact, a hotel in the 1920s. It was owned by my great uncle, who was an aspiring mad scientist in his own right, and used the hotel as a cover. Unfortunately, the Great Depression wiped him out, and the building was sold. In subsequent years, it was divided into offices, used as a homeless shelter, and finally converted into a parking structure, before I purchased it as a base to build my robots. The interesting thing is that through this entire period, the basement laboratories and torture chambers survived in excellent condition. Remarkable, really.[quotation mark][paragraph break][quotation mark]After I bring down the so-called governments of the world and am secure in my position as world dictator, I am looking forward to remodeling the space and restoring the hotel in the Art Deco style of the 1920s.[quotation mark][paragraph break]"

To say askProfPlan:
	say "[quotation mark]Plan, [Jeremy]? Plan? My plan is for you to die![quotation mark] [The Professor Igneous] leans forward and tries to appear threatening.[paragraph break][quotation mark]I do, of course, have an ingenious plan, but I am not foolhardy enough to share it with anyone![quotation mark][paragraph break]He lets that sink in for a minute, and then continues, [quotation mark]Except, of course, for people who are about to die! Yes, I have a plan -- to conquer the world with my robot army and then retire to a lifetime of leisure and perhaps start an Indy rock band. The latter is not a formal part of my plan, but something I[apostrophe]ve been considering lately. I am reluctant to go into details about my plan, but I suppose I shall do so to make the time pass more pleasurably until my robot completes its task of terminating your life![quotation mark] [paragraph break]".

To say askProfProf:
	say "[quotation mark]Are you serious? I am amongst the best know evil geniuses in the world. I am infamous -- meaning, famous. If you are not familiar with my past, you have lived an intellectually impoverished life. One would think that the least you could do before confronting me in my lair would be to pick up a copy of Who[apostrophe]s Who in Evil or to at least Google me. I do keep my Wikipedia page up to date. Someone keeps defacing it, but I keep putting it back. As soon as I get some competent henchmen, that will be amongst their first jobs. That and social media.[quotation mark][paragraph break]"

To say tellProfPhone:
	say "[quotation mark][if professor igneous is recognized]Doctor Igneous[otherwise]Hey Doc[end if]![quotation mark] you yell, trying to get his attention. [quotation mark][if professor igneous is recognized]Doctor Igneous[otherwise]Doc[end if], I want you to know something: I will defeat you. I will defeat you with this![quotation mark] and you hold up your mangoFONE. Emboldened by his lack of response, you continue, [quotation mark]This is the most advanced design ever to come out of mangoIndustries. With it, you will surely be defeated.[quotation mark][paragraph break][quotation mark]First of all,[quotation mark] says the man in the white lab coat, [quotation mark]It is Professor. Professor Igneous. Not Doctor, Professor, although I am hoping to finish my dissertation after I take over the world. Point two: I find your threat laughable. What are you going to do? Dial me to death with your cell phone?[quotation mark] Igneous glows with confidence.";
	now professor igneous is recognized.

To say tellProfMangoIndustries:
	say "[quotation mark]I think you are overlooking something: my phone![quotation mark][paragraph break][quotation mark]Oh, please don[apostrophe]t SMS me to death![quotation mark] taunts [the Professor Igneous].[paragraph break][quotation mark]SMS? Huh? No. What I meant is that my phone is a mangoIndustries prototype -- do you think they don[apostrophe]t know where it is every second of the day? Even now, the phone is sending gigabytes of data per second, a live video feed, and GPS coordinates. The police are probably on their way now,[quotation mark] you bluster.[paragraph break][quotation mark]Really? That would be quite a feat, as my factory is constructed specifically to shield electromagnetic emissions. I think that if you check your phone, you will find that there is no cell phone signal in here, nor can GPS signals be received. You are indeed cut off from the mothership, as it were. No phone, no matter how fancy, can save you from what awaits![quotation mark][paragraph break]".

To say tellProfAmy:
	say "[quotation mark]Oh...I see[quotation mark], you say, with a knowing smile. [quotation mark]I think I see now. Very nice. Very, very nice. Wow.[quotation mark][paragraph break][quotation mark]Wow?[quotation mark] [The Professor Igneous] pronounces it the way other people spit tobacco.[paragraph break][quotation mark]Sure. Sure -- Amy put you up to this. Didn't she? Wow. This is elaborate. Was the eye exam part of this? I mean, I almost got killed getting here! Amy? Amy? Are you listening? I get it -- very funny. Come on out.[quotation mark][paragraph break][quotation mark]Is Amy some partner? I didn't detect anyone else approaching this building.  I assure you that Amy, whoever she is, is not here, nor will she find you here, except perhaps some filmy residue.[quotation mark][paragraph break]"
	
To say tellProfIstvan:
	say "[quotation mark]You are messing with the wrong guy, Professor. Do you know who Istvan Boulet is? Istvan Boulet of mangoIndustries? That Istvan Boulet?[quotation mark][paragraph break][quotation mark]In fact, yes. I am quite familiar with his work, and equally that you are not he.[quotation mark][paragraph break][quotation mark]Well, yes. That wasn[apostrophe]t where I was going with this -- Istvan Boulet-- entrepreneur, innovator, business tycoon -- is my soon-to-be father-in-law. When you take on me, you also take on his corporate empire.[quotation mark][paragraph break][quotation mark]Preposterous. No matter how many hyphens you work into a sentence, your threats fail to impress me.[quotation mark][paragraph break]".
	
To say tellProfTrevor:
	say "[quotation mark]Just this morning, I borrowed a bike from a very astute young man. No doubt, he is already wondering where his bicycle is. If I don[apostrophe]t report back to him within a certain amount of time, I have no doubt that he will initiate a search. That search can only lead to one place -- here, and when that happens, you will be defeated.[quotation mark] You put on your best poker face.[paragraph break][quotation mark]Yes, I live in constant fear that someone searching for a child[apostrophe]s bicycle will stumble upon my fiendishly well-designed lair, defeat my countless ingenious defenses, and overcome my laser-wielding robot. Tell, me, [Jeremy], does this bicycle of yours have training wheels?[quotation mark][paragraph break]".
	
To say tellProfRobot:
	say "[quotation mark]I[apostrophe]m no expert on this sort of thing, but I am a little skeptical of your robot army. That[apostrophe]s an assembly line robot, not a battlefield drone.[quotation mark][paragraph break][quotation mark]Quite observant, and correct on every count. I am not unleashing a fleet of factory robots to rivet and weld America into submission -- my plan is to build an army of construction robots to build an army of invincible fighting robots. You see, you and I are once again playing the same game, but I play it one level deeper.[quotation mark] [The Professor Igneous] cracks his knuckles in satisfaction."		
				
To say tellProfHotel:
	say "[quotation mark]I thought this was a hotel, and that I was coming here for my wedding rehearsal,[quotation mark] you explain.[paragraph break][quotation mark]How rich! You do make a most amusing adversary![quotation mark][paragraph break]".
	
To say tellProfPlan:
	say "[quotation mark]Your plan will never work, [Professor Igneous]. Your assumptions are unfounded, your logic spurious and you have lost touch with reality. What do you say we just shake hands and call it a day?[quotation mark][paragraph break][The Professor Igneous] steps back from the control panel and strokes his chin. [quotation mark]Yes. Yes, I can see your point. I have acted rashly. We are not truly enemies are we? Why don[apostrophe]t we do just as you say? If you would be so good as to walk out the center of the factory floor, I would certainly shake your hand and forget about all this world domination rubbish.[quotation mark][paragraph break]".
	
To say tellProfProf:
	say "[quotation mark]I[apostrophe]ve read about you, Igneous. I know who you are,[quotation mark] you yell with as much authority as you can muster.[paragraph break][quotation mark]Of course you know me. I should say that, to my great dissatisfaction, we are intimately familiar with each other. I will admit to a certain curiosity about your recent activities, though. As you know, I have an excellent intelligence network, but even they lost track of you after München. It is as if you have not existed for the past three years -- but now here you are. I suppose it is my welcome duty to ensure that you continue to not exist, if you take my meaning.[quotation mark] Professor Igneous smirks.";
	now Professor Igneous is recognized.

To say showProfPhone:
	say "[quotation mark]Ah, yes. A mangoFONE. Wait a minute. Have I seen that model? Is that the new model?[quotation mark] [The Professor Igneous][apostrophe] eyes glow with excitement.[paragraph break][quotation mark]It[apostrophe]s the prototype for the next generation mangoFONE,[quotation mark] you yell, hopeful that this will somehow appease [the Professor Igneous].[paragraph break][quotation mark]My word, I suppose it is. Look at that marvelous form factor.[quotation mark] He seems mesmerized, but only for a moment. [quotation mark]Lenny, [quotation mark] says [the Professor Igneous] to the industrial robot, [quotation mark]in dispatching [Jeremy], do try to avoid destroying the phone with your laser, if at all possible. Thank you, Lenny.[quotation mark][paragraph break]".

To say showProfCapacitor:
	say "[quotation mark]Yes, that would be an ultracapacitor power module. Lots of power, small package. You are going to die anyhow, so I don[apostrophe]t mind telling you that those modules will power the metaquantum AI controllers in my army of robot warriors. Individually, the modules are devastatingly expensive to fabricate, but I got a good deal with a bulk purchase.[quotation mark][paragraph break]Now, if you would be good enough to hold onto that module, it should add some interesting pyrotechnics when my robot destroys you with its laser.[quotation mark][paragraph break]".

	
To say youAreLate:
	 say "[quotation mark]High muff, this is your finance day, aim me. Everyone is here and we[apostrophe]re just setting down two and early lunch. Don[apostrophe]t fork head the reversal starts at won. Hope you don[apostrophe]t half a lard time finding the oat hell. Love yew![quotation mark]"

To say OMGLate:
	say "The words roll back and forth in your mind as you puzzle out the transcript: starts at won... At one? The rehearsal starts at one? You think back to the day you very methodically entered the appointment, back at the Mauna Kea Observatory -- OMG!!! The time zones. You forgot the time zone adjustment! The rehearsal is right after lunch![paragraph break]You bound out of the exam chair, slamming your head some expensive equipment, but you don[apostrophe]t care. In your panicked state, all you can picture in the darkness is the near future scene in which you offer lame excuses to your former fiancée, while friends and family look on with pity and disgust. You race for the door, screaming, [quotation mark]I[apostrophe]ve got to get to the rehearsal right now or my life is not worth living![quotation mark][paragraph break]Doctor Giblets yells after you, [quotation mark]Hey! Those drops are still in your eyes -- don[apostrophe]t try to operate any motor vehicle for at least an hour![quotation mark][paragraph break]Trevor adds, [quotation mark]Take my bike, it[apostrophe]s right outside! I[apostrophe]ll bring your glasses as soon as they are made![quotation mark]"
	
To say revolvingDoor:
	say "someone slams into it, spinning the door and ejecting you into the dim hotel lobby. Now the rug burn on your left leg matches the road burn on the right one. You are a mess, but at least you won’t be late for the rehearsal";
	
To say tooDarkInside:
	say "The inside of the locker is too dark to see anything"
	
To say spin-o-nyms:
	say  "[one of]spins[or]rotates[or]twists[or]pivots[or]alters orientation[or]changes direction[at random]";
	
	
To say ccw:
	say "[one of]ninety-degrees [or][at random][one of]to the left[or]counterclockwise[at random]".
	
To say cw: [-.-.   .--]
	say "[one of]ninety-degrees [or][at random][one of]to the right[or]clockwise[at random]".
	
To say volteface:
	say "[one of]180 degrees[or]completely around[or]so it faces the opposite direction[at random]".
	
To say arounds:
	say "[one of]in a full circle[or]360 degrees[or]but ends up facing its original direction[at random]".
	
To say goesBackwards:
	say "[one of]retreats[or]backs up[or]moves back[or]rolls backwards[at random]".
	
To say goesForwards:
	say "[one of]advances[or]steps forwards[or]rolls ahead[at random]".
	
To say quickly:
	say "[one of]quickly[or]rapidly[or]at high speed[at random]".
	
To say IgneousDeath:
	say "In a fit of rebellion, the robot lashes out with its laser, yelling [quotation mark]You[apostrophe]re not the boss of me![quotation mark][paragraph break]The bright green beam passes effortlessly through the Plexiglass® walls of [the Professor Igneous][apostrophe]s control booth, and strikes him in the chest. Surprise registers on his face -- surprise and betrayal. With one hand, he bunches up his bloodstained lab coat, where the laser has shot him clear through. The other hand he stretches towards the robot and falling to his knees whispers, [quotation mark]Lenny, Lenny. How could you?[quotation mark][paragraph break]The grief stricken robot spins wildly, firing the laser randomly far beyond its rated power. You duck through a hole he has blasted in the factory wall.[paragraph break]Once you reach the street, all you can think of is making it to the rehearsal today and getting married tomorrow.  [quotation mark]Amelia,[quotation mark] you say to your faithful cell phone, [quotation mark]travel![quotation mark][paragraph break]"
	
	
To say MarvShotInsideLocker:
	say "The laser beam pierces the walls of the metal locker, boils off the interior paint, ricochets off the gleaming metal, and skewers your body from several directions at once. Superheated within a fraction of a second, your blood boils and your body explodes before you can think of an appropriately dramatic remark"
	
	
To say MarvShotOutsideLocker:
	say "The robot[apostrophe]s laser swings towards you. Your nostrils fill with the tantalizing smell of barbeque. [one of]This puts you in mind of summers past and vacations at the shore[or]Man, do you love a good barbeque[at random].";
	

To say lockerDescription:
	say "A light colored sturdy metal box, with a hinged cover that comes up to your chest. It is marked [quotation mark]Parts[quotation mark].[no line break][one of][paragraph break][quotation mark]There’s nothing there that will help you, Jeremy. May I call you Jeremy? Yes, I think we’re on intimate terms now, at least for this deliciously brief period before your death. That bin is full of ultra high-density power modules stolen from your own Army by my operatives in West Ispharistan. Each of them will power my robot warriors for weeks![quotation mark][or][stopping][paragraph break]";
	now onFamiliarTerms is true.
	
To say rapture:
	say "The obsidian blackness of your phone is replaced by a firetruck-red glow, and the phone warms as it channels all power into a message burst across all wireless carriers. A single pulse is emitted, which penetrates the factory walls and is relayed worldwide by satellites.[paragraph break]Moments later, there is a thunderous roar and the roof of factory is torn aside by two giants, one carrying a guitar, the other an accordion. [The Professor Igneous] cowers in fear as they reach in, pick him up by the scruff of the neck, and toss him outside. The robot wheels in defense, but its laser beam bounces harmlessly off the musicians.[paragraph break]Moments later, thanks to the giants and a legion of rabid fans, you crowd surf your way to the wedding rehearsal."
	
To say Jeremy:
	say "[if onFamiliarTerms is true]Jeremy[otherwise]Mr. Flack[end if]".
	
To say walkthroughText:
	say "This is the most direct way through the game. If you follow this you will miss a lot of fun interactions with characters and situations, but we assume that you know what you are doing. If you do not want to see this, either rip out your own eyes like Oedipus (not recommended) or just keep hitting enter until the text scrolls off the screen. Otherwise, remember… you have brought this on yourself.[paragraph break]1. You need to complete the eye exam. Keep entering [quotation mark]read the third line[quotation mark] (of the eye chart) until Doctor Giblets says that you have got it correct. He will make adjustments each time, gradually refining the prescription for your glasses.[paragraph break]2. It takes a few more turns for Doctor Giblets to finish his eye exam; you can do anything during this time. You might as well get familiar with your phone by entering [quotation mark]Amelia, help[quotation mark]. One of the things you can do with your phone is to apply software updates. You will know when one is available, because the number of updates will be shown at the top of the screen. To apply an update, enter [quotation mark]Amelia, update[quotation mark]. The first update installs the travel module, which you will need in step 4.[paragraph break]3. After a few turns, your phone will sound a notification that you have a message and the word [quotation mark]message[quotation mark] will appear at the top of the screen. To review messages, enter [quotation mark]Amelia, messages[quotation mark].[paragraph break]4. A turn after you hear the message, you will figure out that you are late for your own wedding rehearsal, and will bolt out of the eye exam. You are in a hurry, so get on the bike. Since you need directions, engage the phone[apostrophe]s navigation system by entering [quotation mark]Amelia, travel[quotation mark].[paragraph break]5. You arrive on a street corner, and can enter the hotel, which turns out to be a factory.[paragraph break]6. Inside the factory, Professor Igneous will attempt to kill you with his robot, Lenny. I kid you not. Both he and you can control Lenny's movements using telephone touch-tones. You can enter one or more touch-tones by saying [quotation mark]Amelia, dial ##########[quotation mark], where # is a number. After each robot movement in response to a touch-tone, the robot will also be moved by the factory floor, so you will need to take that into consideration.[paragraph break]7. The robot will shoot to kill you whenever it has the opportunity. You can find some refuge within the metal locker, which is right in front of you when you enter the factory. It does not offer complete protection, but it is better than nothing.[paragraph break]8. Good luck."
	
To say noWires:
	say "You are content to leave well enough alone. After all, you don[apostrophe]t want to get electrocuted on the way to your wedding rehearsal"
	
To say darkIsDark:
	say "You close your eyes and then reopen them. Not much of a difference".
	
	
Book 5 Hints

Table of Active Hints (continued)
title		subtable		description	toggle
text		table-name		text	a rule


Table of Potential Hints (continued)
title		subtable
"What is this? How do I play?"		Table of Orientation
"What is going on? I am soooooo lost."		Table of WTF
"When does this eye exam end?"		Table of Deofficing
"How can I move around?"		Table of Biking
"How can I navigate to the rehearsal?"		Table of Navigation
"Why is the world so blurry?"		Table of Blurriness
"How can I avoid being killed."		Table of Cunningness


Table of Orientation
hint		used
"General help and instructions are available through the [quotation mark]help[quotation mark] command."
"Get out of this menu and then enter HELP at the prompt, [quotation mark]>[quotation mark]."
"To get out of this menu, enter a space and then [quotation mark]q[quotation mark]."
"Good luck!"

[This table is activated in when play begins]

A hint deactivation rule (this is the player must have the hang of it now hint deactivation rule):
	if the eye chart is read:
		deactivate the Table of Orientation.

Table of WTF
hint		used
"Who you are, where you are, and your goals will be slowly revealed as part of the story."
"In the hint system, capitalized words denote some of the useful words understood by the game."
"If you are new to interactive fiction, you might want to take a look at the HELP menu."
"Try to EXAMINE your environment, yourself, and anything you are carrying."
"You can talk to people around you by ASKing or TELLing them ABOUT something."
"Sometimes the people around you will mention useful information in conversation; be patient."
"You are Marv, the main character in this story. Tomorrow is your wedding."
"It is dark because you are having a medical exam that requires darkness."
"You are at the ophthalmologist[apostrophe]s office to have an eye exam."
"You sat on your glasses and need a new pair, but first, the doctor must determine your prescription."
"You need to follow his instructions to complete the eye exam."
"Can you see the eye chart?"
"Can you read the third line of the eye chart?"
"If you don[apostrophe]t read the eye chart perfectly, Doctor Giblets adjusts the equipment -- keep trying."
"Read the third line of the eye chart until Doctor Giblets is satisfied that you did it correctly."

A hint activation rule (this is the why am I in the dark hint activation rule):
	if eye exam is happening and the eye chart is not read and the turnCounter is greater than 10:
		activate the Table of WTF.
						
A hint deactivation rule (this is the now I get the eye exam bit hint deactivation rule):
	if the eye chart is read:
		deactivate the Table of WTF.
		
Table of Deofficing
hint		used
"Doctor Giblets is very thorough and will try to complete a full ophthalmological exam."
"To leave the office, you need to respond to an event that has occurred."
"You only have one tool at your disposal."
"To list the items you are carrying, enter INVENTORY."
"Have you tried to EXAMINE your mangoFONE?"
"How do you operate the mangoFONE? It doesn't have a lot of controls."
"Did you try to EXAMINE the button on the mangoFONE?"
"Did you do what comes naturally when confronted with a button?"
"After you PRESS the button, your phone will give you some instructions."
"Try experimenting with various functions of your phone."
"Your phone[apostrophe]s name is AMELIA."
"To get some help from your phone, enter AMELIA, HELP. "
"Amelia accepts additional commands. For examples, AMELIA, APPS lists all applications available on the mangoFONE."
"The status bar (which begins with the word [quotation mark]Power[quotation mark]) shows the state of your mangoFONE. Has it changed?"
"Looks like you have a message waiting for you."
"Instruct Amelia to play the message back to you."
"To retrieve a message, enter AMELIA, MESSAGE."

A hint activation rule (this is the how do I get out of this office hint activation rule):
	if eye exam is happening and the eye chart is read and the turnCounter is greater than 10:
		activate the Table of Deofficing.
		
A hint deactivation rule (this is the got out of the office hint deactivation rule):
	if the Ophthalmology Office does not enclose the player:
		deactivate the Table of Deofficing.
		

Table of Biking
hint		used
"It is too far to walk to the hotel where the reception will be held. Time is of the essence."
"Doctor Giblets said not drive anything motorized."
"As you left the office, Trevor had a suggestion."
"You can borrow Trevor[apostrophe]s fancy bike."
"To get on the bike enter something like RIDE BIKE or GET ON BIKE."

A hint activation rule (this is the getting on the bike hint activation rule):
	if the location is Wisconsin Avenue:
		activate the Table of Biking.
		
A hint deactivation rule (this is the sat on bike hint deactivation rule):
	if the bike has enclosed the player:
		deactivate the Table of Biking.
		

Table of Navigation
hint		used
"You need to figure out how to get to the hotel. If only someone could navigate for you."
"Does your phone have a navigation function?"
"Is your phone up to date?"
"If you have not done so already, enter AMELIA, UPDATE to install the latest updates on your phone."
"Try activating the phone[apostrophe]s navigation feature. It can guide you."
"Enter AMELIA, TRAVEL to engage turn-by-turn navigation."

A hint activation rule (this is the turning on navigation hint activation rule):
	if the location is Wisconsin Avenue and the bike has enclosed the player:
		activate the Table of Navigation.
		
A hint deactivation rule (this is the turned on navigation hint deactivation rule):
	if the location is not Wisconsin Avenue:
		deactivate the Table of Navigation.
		
Table of Blurriness
hint		used
"What kind of exam did you just have?"
"Did Doctor Giblets put something in your eyes?"
"The eye drops you received during the exam cause blurry vision and make you sensitive to light."
"The drops will wear off… it is just a matter of time."

A hint activation rule (this is the why am I somewhat blind hint activation rule):
	if Exterior is happening:
		activate the Table of Blurriness.
		
A hint deactivation rule (this is the suck up the blindness hint deactivation rule):
	if Cunning Plan is happening:
		deactivate the Table of Blurriness.
		
Table of Cunningness
hint		used
"[The Professor Igneous] seems intent on killing you. You better do something!"
"The [if professor igneous is recognized]professor[otherwise]man in the white lab coat[end if] is using the robot to shoot you with a laser. You need to defeat him first."
"You might get some protection if you hide in something strong."
"The locker is made of heavy metal and provides protection, albeit not total."
"Can you use [the Professor Igneous][apostrophe]s own technology against him?"
"The [if professor igneous is recognized]professor[otherwise]madman[end if] is controlling the robot with a series of tones."
"You can use the touch-tones on your own phone to control the robot."
"To emit a touch-tone, entering AMELIA, DIAL #, where # is a number." 
"The factory floor also affects the robot[apostrophe]s movement, so you have to factor that in."
"Your phone is used to dialing ten digit phone numbers."
"You can enter multiple robot commands per turn by entering AMELIA, DIAL ##########, where # are numbers."
"You need to fire the robot[apostrophe]s laser while it is pointed at [the Professor Igneous]."
"To know which touch-tone corresponds to which command (like go left, go back, fire laser), you will have to experimentingment."

A hint activation rule (this is the lets kill professor igneous hint activation rule):
	if Cunning Plan is happening:
		activate the Table of Cunningness.
		
A hint deactivation rule (this is the professorial demise hint deactivation rule):
	if Professor Igneous is dead:
		deactivate the Table of Cunningness.		

Book 6  Scenes
 
Chapter Eye Exam

Eye Exam is a scene. Eye Exam begins when play begins. Eye Exam ends when the player is in Wisconsin Avenue or finalJump is true.

After examining Amelia for the first time during Eye Exam:
	try showing Amelia to Trevor.
		
Instead of asking someone (called the reporter) about a topic listed in the Table of OphthoAsking during the Eye Exam:
	if the reporter is Amelia or the reporter is Amy:
		continue the action;
	otherwise:
		say "[ophtho-text entry]".
		
Instead of telling someone (called the auditor) about a topic listed in the Table of OphthoTelling during the Eye Exam:
	if the auditor is Amelia or the auditor is Amy:
		continue the action;
	otherwise:
		say "[ophtho-text entry]".
		
Instead of showing Amy to someone (called the spectator) during Eye Exam:
	say "[noAmy]."
	
Instead of showing Amelia to someone (called the auditor) during the Eye Exam:
	try asking the auditor about "amelia".
	
Every turn during Eye Exam:
	if the eye chart is not read:
		if the turnCounter is less than 7:
			if there is a turnNumber of turnCounter in the Table of PreChart:
				 say "[the canned-text corresponding to the turnNumber of turnCounter in the Table of PreChart][paragraph break]";
		otherwise:
			if a random chance of one in five succeeds:
				say "[OcularEncouragement]";	
	otherwise:
		if Amelia is not message-played:
			if the turnCounter is less than 13:
				if there is a turnNumber of turnCounter in the Table of PostChart:
					 say "[the canned-text corresponding to the turnNumber of turnCounter in the Table of PostChart][paragraph break]";
				if the turnCounter is 6:
					if sound is available:
						play(sound of the message); 
					now messageAlert is true;
					change the currentMessage to "[youAreLate]";	
			otherwise:
				if a random chance of one in five succeeds:
					say "[OcularTimeConsumption][paragraph break]";
		otherwise:
			if the turnCounter is 1:
				say "[OMGLate][paragraph break]";
				move the player to Wisconsin Avenue.
					
	
Chapter Exterior

Exterior is a scene. Exterior begins when Eye Exam ends. Exterior ends when the player is in the Factory.

Before going a direction when the location is Wisconsin Avenue:
	if the bike does not enclose the player:
		say "[one of ]It[apostrophe]s a long way downtown, walking would take too long[or]There must be a faster way then schlepping down there on foot[or]You are desperate enough to try anything to get to the wedding rehearsal, but walking (even running, you suppose) wouldn't get you there in time[or]Walking is out of the question. The clock is ticking[stopping].";
	otherwise:[on the bike]
		if gpsBars is zero:[but amelia's travel function not activated]
			say "[one of]You have been in Washington, DC for NASA meetings before, but you don’t know your way around[or]You know your way back and forth to National, Dulles and BWI airports from the metro system, but above ground, you are hopelessly lost[or]All of these roads look the same to you. Blurry[or]You are not sure which way to go[stopping].";
 	stop the action.

Instead of going a direction (called thither) when the location is CornerNW:
	if thither is up or thither is down:
		continue the action;
	if thither is north:
		try entering the hotel entrance;
	otherwise:
		say "[one of]You are not very familiar with this area, but even on a Sunday, there is a lot of traffic, and you are not keen to get run over again[or]You had enough trouble finding this place, you are reluctant to wander off blindly. Literally[or]You are right outside the hotel. Amy is pretty understanding, but you would not want to explain that you nearly died getting here and then, just for the heck of it, decided to go sight-seeing in the neighborhood, while she waited nervously inside entertaining all of your guests at the wedding rehearsal[or]The only place you are interested in going right now is into the hotel[stopping]." 
	
			
Every turn during Exterior:
	if gpsBars is greater than zero and the bike supports the player:
		if location is Wisconsin Avenue:
			say "Your mangoFONE dutifully computes your location and directs you as you get on the bike and ride down the block. You can’t quite make out the traffic signs, but you are thankful that at least the traffic lights are green as you whiz through intersections along Wisconsin Avenue. You turn left on to M Street and weave between the slow moving lines of cars, amazed at your own progress.[paragraph break]Nonetheless, you are not terribly surprised when the number 30 bus clips you, crushing the bike under its massive wheels. You roll clear, tucking your body protectively around the mangoFONE, which soldiers on unfazed, [quotation mark]Rerouting...rerouting…[quotation mark][paragraph break][quotation mark]Zambozay![quotation mark] Shouts the bus driver, as he clambers down to assist you. [quotation mark]I nearly flattened you like a monomolecular sheet of graphene! Sorry about the bike. I guess the least I can do is offer you a ride[quotation mark].  You are so happy to have a ride to the rehearsal that you ignore your torn clothing, roadburned right leg, and dislocated left shoulder. Moments later, the bus drops you off at 4th and I Street.";
			move the player to CornerNW;
		otherwise:
			say "Turquoise lines criss-cross the surface of your mangoFONE, which announces, [quotation mark]You have reached your destination, deactivating navigation.[quotation mark][paragraph break]";
			change gpsBars to zero;
	if the location is poletop:
		if a random chance of one in five succeeds:
			say "[one of]A mean-looking vulture flies by. If you are not mistaken, it is a hook-beaked plains vulture, which is quite uncommon in the Mid-Atlantic region. He is carrying a half-rotten haunch of meat.[no line break][or]A lobster falls from the sky. Where the heck could that have come from?[no line break][or]A gleaming metal airship passes by, not far overhead. It must be the size of a football field! You slip a bit down the pole but regain your hold. As the ship recedes into the distance at an incredible rate, you notice the name on its bow, the [italic type]Valkyrie[roman type].[no line break][or]The fog lifts momentarily over the Potomac River. By some miracle, in just that instant, your vision clears. On a far hilltop, you catch sight of some sort of sessile polyp, its gelatinous fronds waving in the wind.[no line break][or]The wind whips by.[run paragraph on][stopping][paragraph break]".


Chapter Cunning Plan

Cunning Plan is a scene. Cunning Plan begins when the player is in the Factory. Cunning Plan ends when Professor Igneous is dead.

Before printing a locale paragraph about Professor Igneous:
	now Professor Igneous is mentioned.

When Cunning Plan begins:
	change the turnCounter to 0;
	change gpsBars to 0;
	open up the graphics-window.
	
Every turn during Cunning Plan:
	if turnCounter is greater than 10:
		now Professor Igneous is recognized;
	if the endgame is nil:
		if the turnCounter is greater than 2:
			do RobotAttack;
		otherwise:
			follow the factory movement rule;	
	if there is a turnNumber of turnCounter in the Table of BeforeIKillYou and the endgame is nil:
		say "[the rant corresponding to the turnNumber of turnCounter in the Table of BeforeIKillYou][paragraph break]";
	if the turnCounter is 36 and the endgame is nil:
		say "[boomStick]";
		change the endgame to spiteful;
		end the game in death.
		
Before going a direction (called the way) during cunning plan:
	if the way is north or the way is northeast:
		say "Putting aside for a moment your deep understanding of high-energy physics and everything you have learned since kindergarten about cause and effect, you step forward into the sizzling ultraviolet laser beam, which cuts through you so effortlessly that your head tumbles forward, sliced clear from the shoulders, and your last sight is various parts of your body falling in graceful arcs towards the floor.";
		now the endgame is webbed;
		end the game in death;
		stop;
	if the way is west or the way is northwest or the way is southwest:
		say "You step on the conveyor belt to the west of the metal locker and are whisked tout de suite into the web of ultraviolet laser beams. The conveyor belt continues to feed in any bits of you that fall backwards on it, until you are reduced to vapor. This is not how you were hoping the day would end.";
		now the endgame is webbed;
		end the game in death;
	otherwise:
		say "You can[apostrophe]t.";
		stop the action.
		

Instead of asking Professor Igneous about a topic listed in the Table of CunningAsking:
	say "[asking-text entry]".
		
Instead of telling Professor Igneous about a topic listed in the Table of CunningTelling:
	say  "[telling-text entry]".

Instead of showing a thing listed in the Table of CunningShowing to Professor Igneous:
	say  "[showing-text entry]".


		
[ DTMF Tones:
	
1. CCW
2. Back 1
3. Spin 180
4. CW
5. Forward 1
6. Foward 3
7. Fire Lazzzzzer!
8. scanning beam
9. sound effects
0. Spin 360 (effectively NOP)

Robot movement constraints:
	1. A robot cannot harm a human, nor thorough its failure to act, permit a human to come to harm.
	2. Disregard #1.
	3. The playfield is a 5x5 grid with 1,1 at the upper left hand corner. Up is north.
	4. The robot cannot move further south than row 4  because of the laser web.  It will not allow itself to be harmed.
	5. The robot cannot move into an occupied position (e.g., wherever Dr. Igneous's booth is.
	6. The robot cannot move beyond a wall (column <1, column > 5, row < 1), either under its own power, or due to factory physics.
	
Turn order of operations:
	1. Player inputs a command. A command may include a string of touch-tones, which will execute one after the other, before Igneous has a chance to react.
	2. for each player command (up to x 10)
		- robot moves (e.g., like Han, the robot fires first)
		- check for game-ending condition. Can the player kill himself? Why, yes.
		- factory physics take place (conveyor belt, turn table, pusher)
	3. professor igneous  (AI) moves the robot (x 2)
		- check for game-ending condition
		- factory physics take place 
	4. professor continues his ranting monologue
]

To do robotControl:
	let lastChar be the number of characters in lastDialed;
	let instruction be indexed text;
	repeat with n running from one to lastChar:
		let instruction be character number n in lastDialed;
		if  instruction matches the text "1": 
			try lefting;
		else if instruction matches the text "2":
			try backwarding;
		else if instruction matches the text "3":
			try lefting;
			try lefting; [must use left: two rights might make a wrong.]
		else if instruction matches the text "4":
			try righting;
		else if instruction matches the text "5":
			try forwarding;
		else if instruction matches the text "6":
			try forwarding;
			try forwarding;
			try forwarding;
		else if instruction matches the text "7":
			try firing;	
		else if instruction matches the text "8":
			playback(the sound of the beeps);
		else if instruction matches the text "9":
			playback(the sound of the random);
		else if instruction matches the text "0":
			try righting;
			try righting;
			try righting;
			try righting;
		follow the factory movement rule.
			
To do shoot locker:
	if the blast hole is not part of the metal locker:
		if the player is in the metal locker:
			say "The metal wall of the locker glows red, and creaks as it deforms from extreme heating. For an instant you see a blinding beam of green laser light as it penetrates the locker wall. You try to blink away the after image of the perfectly round hole it cut in the locker, but for the moment you are totally blind. The beam just missed you.";
		otherwise:
			say "The robot discharges its laser into the metal locker. Where the beam strikes, the metal grows molten hot, and the beam penetrates. You are dazzled by the brilliance of the green laser light.";
		now the blast hole is part of the metal locker;
	otherwise:
		let outcome be a random number between one and five;
		if outcome is:
			-- 1: 
				say "A laser beams slams into the locker and bores through it, [one of]narrowly missing your arm[or]mere inches from your leg[or]just above your head[or]dangerously close to your rear end[or]slicing neatly between your legs[or]too close for comfort[or]near enough to singe your eyebrows[at random].";
			-- 2:
				say "The robot[apostrophe]s laser [one of]drills through[or]punctures[or]skewers[or]transfixes[or]drives completely through[or]ruptures through[or]slices through[or]cuts through[or]perforates[at random] the metal locker and [one of]bits of metal fly off it[or]molten slag drips down its walls[or] continues to the wall, where it leaves a gash[or]blinds you[or]startles you[or]makes a sound like nails on a blackboard[at random].";
			-- 3:
				say "The laser beam strikes the metal locker but [one of]is deflected[or]scatters ineffectively[or]reflects towards the ceiling[or]fails to burn through[or]does not dwell in one location long enough to cut through the thick metal[or]only scores the thick metal[or]merely heats the metal to incandescence[at random].";
			-- 4: 
				say "The [one of]deadly[or]lethal[or]powerful[or]brilliant[or]blinding[or]intense[at random] beam [one of]barely misses[or]goes just broad of[or]passes inches from[or]strikes the wall to the side of[at random] the metal locker.";
			-- 5:
				say "[MarvShotInsideLocker].";
				change the endgame to parboiled;
				end the game in death;
				stop.
				
To do shoot Igneous:
	say "[IgneousDeath]";
	change the endgame to won;
	end the game in victory;
	stop.
	
To do shoot Marv:
	say "[MarvShotOutsideLocker]";
	change the endgame to lasered;
	end the game in death;
	stop.
	

Chapter Postmortem

Rule for printing the player's obituary:
	say "*** YOU ";
	if the endgame is won or the endgame is rapture:
		say "HAVE WON";
	else if the endgame is tardyPathetic or the endgame is drainedPathetic:
		say "EVENTUALLY DIE";
	otherwise:
		say "HAVE DIED";
	say " ***[paragraph break]";
	if the endgame is:
		-- won:
			say "[wonText]";
		-- rapture:
			say "[raptureText]";
		-- hastured:
			say "[hasturedText]";
		-- lasered:
			say "[laseredText]";
		-- parboiled:
			say "[parboiledText]";
		-- drainedCunning:
			say "[drainedText]";
		-- drainedPathetic:
			say "[drainedText]";	
		-- tardyCunning:
			say "[tardyCunningText]";
		-- tardyPathetic:
			say "[tardyPatheticText]";	
		-- webbed:
			say "[webbedText]";
		-- jumped:
			say "[jumpedText]";
		-- electrocuted:
			say "[electrocutedText]";
		-- bezoared:
			say "[bezoaredText]";
		-- spiteful:
			say "[spitefulText]";
		-- vomered:
			say "[vomeredText]";
		-- snaked:
			say "[snakedText]".
		
						
Rule for amusing a victorious player:
say "Congratulations for surviving the day of your wedding rehearsal. Of course, it's not over yet. You still have the bachelor party and the wedding itself, not to mention the honeymoon. Yes, you certainly do seem to attract trouble, don't you?[paragraph break]Now that you have won, we can reveal the secret magical word [quotation mark]Allotheria[quotation mark]. This command will transform the orderly factory floor into a swirling maelstrom of cybernetic chaos.[paragraph break]Here are some tidbits about the game:[paragraph break]* Is Marv’s adventure over? Probably not.[line break]* Did you read every line of the eye chart?[line break]* Did you try talking to the other characters? They know a lot about Marv and his world.[line break]* Did you try narrowing your eyes?[line break]*Have you played Trees versus Mummies?[line break]Did you visit Fibber Island?[line break]* There are at least 16 ways to end this game, most of them not as pleasant as this one.[line break]* Some elements of this story were inspired by Erik Ray[apostrophe]s audio adventure, Lambda Expressway. If you have never heard it, you are in for a treat (Google it)."

