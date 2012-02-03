"Robotest" by Ben Collins-Sussman

Include Flexible Windows by Jon Ingold.
Include Fixed Point Maths by Michael Callaghan.
Include Glimmr Drawing Commands by Erik Temple.
Include Glimmr Canvas-Based Drawing by Erik Temple.

The Big White Room is a room.  "My, this is a large, white, featureless room."

The flyer is in the Big White Room.  "The flyer seems to have a fascinating picture on it."

After examining the flyer:  open up the graphics-window.

The graphics-window is a graphics g-window spawned by the main-window.  The measurement of the graphics-window is 400.
The graphics-canvas is a g-canvas.  The associated canvas of the graphics-window is the graphics-canvas.
The canvas-width of the graphics-canvas is 400. The canvas-height of the graphics-canvas is 400.



Figure of Robot is the file "robot.png".
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
Robot-sprite	Figure of Robot	{ 1, 1 }
Igneous-sprite	Figure of Robot	{ 2, 3 }
Player-sprite	FIgure of Robot	{ 4, 4 }

Element scaling rule for a character-sprite (called the character) (this is the convert origin coordinate rule):
     now the origin of the character is the canvas coordinate equivalent of the grid-coordinate of the character in the coordinates of the the robogrid;
     continue.


The Robot carries a laser.  The character of the Robot is the Robot-sprite.  The display status of the Robot-sprite is g-active.