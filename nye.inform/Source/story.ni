                                                                     
                                                                     
                                                                     
                                             
"Scaffold" by Ben and Jack

The story headline is "Scaffold".
The release number is 1.
The story creation year is 2012.
The story genre is "Scaffold".

The story description is "Something happens, and then there is an aha moment when the player realizes that this is the game that they have been waiting their entire life to play. Indeed, the generations before them were mere stepping stones on the way to this, their ultimate destiny."

The intro-text is a text that varies.  Intro-text is "Before other test prints, this text prints. Hence its name, eh?[paragraph break]".


[Include Menus by Emily Short.]
Include Plurality by Emily Short.

[
Include Default Messages by David Fisher.
Include Adaptive Hints by Eric Eve.
]

Use full-length room descriptions, american dialect and the serial comma.

[
Use memory economy.

Release along with cover art.]

Book 1 Mechanics

Chapter No More Get All
[A more efficient no more get all, suggested by Radical Al:]

After reading a command:
	if the player's command includes "all":
		say "One thing at a time, please.";
		reject the player's command.
	
Chapter Rules Modifications

[Override inherent prudeness -- allow PC to kiss anything]
The block kissing rule is not listed in any rulebook.
The kissing yourself rule is not listed in any rulebook.

Chapter Time

Time-checking is an action applying to nothing.  Understand "time" as time-checking.

Carry out time-checking:
	[consider adding a check to make sure that a time-telling device is in the room, or that the player would reasonable know the time of day.]
	say "It is [time of day + 1 minute]."
		

Section Fixing Room Capitalization
[This particular bit of Inform voodoo came from a timely usenet post by Erik Temple dated Wed, Jan 13, 2010]

A room has some text called the capped room name. The capped room name property translates into I6 as "cap_short_name". 

The new room description heading rule is listed instead of the room description heading rule in the carry out looking rules. 

Carry out looking (this is the new room description heading rule): 
	say bold type; 
	if the visibility level count is 0: 
		begin the printing the name of a dark room activity; 
		if handling the printing the name of a dark room activity, 
			issue miscellaneous library message number 71; 
		end the printing the name of a dark room activity; 
	otherwise if the visibility ceiling is the location: 
		say "[capped room name of the visibility ceiling]";
	otherwise: 
		if the visibility ceiling is a room: 
			say "[The capped room name of the visibility ceiling]"; 
		otherwise: 
			say "[The visibility ceiling]"; 
	say roman type; 
	let intermediate level be the visibility-holder of the actor; 
	repeat with intermediate level count running from 2 to the visibility   
level count: 
		issue library message looking action number 8 for the intermediate level; 
		let the intermediate level be the visibility-holder of the intermediate   
level; 
	say line break; 
	say run paragraph on with special look spacing. 

Section Award the Escape

[from example 135]
A room can be scored or unscored.

Carry out going to an unvisited scored room:
	adjust points by 5.

Chapter Declare Global Variables

The last mentioned thing is a thing that varies.

Muted is a truth state that varies. Muted is false.


Chapter Class Definitions

A prop is a kind of thing. It is usually portable. [If props can be carried out of their initial room, they should not be in the room description, but appear in the room contents list.]

A furniture is a kind of supporter. It is usually scenery and fixed in place. [In general, furniture descriptions should be integrated into room descriptions.] 

A thing can be large. A thing is usually not large.

Everything has some text called texture. The texture of something is usually "".
Everything has some text called scent. The scent of something is usually "". 

A thing has some text called the inscription. The inscription of something is usually "".

A fardrop is a kind of backdrop.

Conclusion is a kind of value. The conclusions are lost and won.  

Endgame is a conclusion that varies. The endgame is usually won.

A latch is a kind of thing. A latch can be openable. A latch can be open. A latch can be lockable. A latch can be locked. A latch is usually openable, lockable, closed and locked.

Chapter General Routines
		
[borrowed from example I7 documentation, example 424 Odins:]
After printing the name of something (called the target): 
    change the last mentioned thing [quotation mark][paragraph break][quotation mark]to the target.

To say is-are: 
    if the last mentioned thing is plural-named, say "are"; 
    otherwise say "is".

To say that-those:
	if the last mentioned thing is plural-named:
		say "them";[note, this only works in this dialect]
	otherwise:
		say "that".

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

To say (regular verb - some text) in correct agreement:
	say "[regular verb][if the last mentioned thing is not plural-named]s".


Chapter Adjust Points


To adjust points by (amount - a number):
	say "[bracket]Your score has just gone ";
	if amount is less than zero:
		say "down";
	otherwise:
		say "up";
	say " by [amount in words][close bracket][paragraph break]";
	change the score to the score plus amount.


Chapter Verbs

Section Answering

Section Asking

Section Listening
[Listen is implemented through insteads. Override this general instead rule with more specific ones as needed]

Instead of listening:
	pick a phrase from the Table of Ambient Noise;
	say ".";
	[to avoid conflicting with some other sound-generating random event]
	change the block stage business flag to true.
	
Table of Ambient Noise
times-used		verbage
0			"You hear yourself breathing"


Section Looking Under

Instead of looking under the noun:
	try searching the noun instead.
	
Section Looking

Understand "look [a visible thing]" as examining.
['Look outside' or 'look stool' should work.]
		
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
	
[
Section Showing

Rule for reaching inside a room when the current action is showing:
	allow access.
	
Instead of showing something (called the thingie) to a person (called the observer):
	if the observer is:
		-- bob:
]

Section Smelling
	
[Like listening, smelling is performed through instead rules. The generic smell rule tracks bad smells, which decay over time.]

[
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
	say "You can ASK someone ABOUT something or SHOW something TO someone."
	]
	
Section Telling

	
Section Touch
[ Jan 15, 2012  Jack comment - I commented out this section, as it would not compile, possibly due to changes in Inform, extensions, etc.

Touching is implemented through an after rule, which is nice in terms of making use of existing relationships about whether something is touchable or not. If an item has a texture attribute, this rule makes use of it.

Instead of touching a fardrop:
	say "[The noun] is too far away to touch."

After touching something (called the item):
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
	

]

Section Using


Section Xyzzying

Xyzzying is an action applying to nothing.  Understand "xyzzy" as xyzzying.

The xyzzy-flag is a truth state that varies. The xyzzy-flag is false.

Carry out xyzzying:
	if the xyzzy-flag is false:
		say "Something arcanes happens, or so you think.";
		now the xyzzy-flag is true;
	otherwise:
		say "Absolutely nothing happens.".
		

Chapter General Insteads

Chapter Not Ready For Prime Time - Not for release

Section Muting

[To reduce the clutter during debugging; suppreses stage business]
Muting is an action out of world. Understand "mute" as muting.

Carry out muting:
	say "[bracket]Mute[if muted is true]Off[otherwise]On[end if][close bracket][line break]";
	if muted is true:
		change muted to false;
	otherwise:
		change muted to true;
	
Chapter Initialize

The maximum score is 100. [TODO:  change this later]

When play begins:
	say the intro-text;
	change the time of day to 09:00 AM;
        	change the left hand status line to "[capped room name of the location]";
        	change right hand status line to "Score: [score]/[maximum score]";
			try silently switching score notification off;
			[puts the onus on us to display messags about score updates]
		[choose row with a left of " P = Previous" in the Table of Deep Menu Status;
	Need this until parchement is patched to accomodate the default "ENTER"
	change right entry to "SPACE = Select".]

After printing the banner text:
	say "Type [quotation mark]help[quotation mark] for instructions.[paragraph break]";

	
Chapter Every Turn

Every turn:
	[avoid penalizing time for non-actions, a nuance]
	if the current action is taking inventory or the current action is looking:
		change the time of day to 1 minute before the time of day;
		[stage business]
	if muted is false:
		Consider the stage business rules;
	[unblock stage business for next turn]
	Change the block stage business flag to false.
		
Section Phrase Picker
[To select a canned phrase from a table, choosing randomly amongst the less frequently said phrases. Tables need at least two entries.]

To pick a phrase from (source - a table-name):
	let R be a number;
	sort the source in times-used order;
	repeat with N running from 2 to the number of rows in the source:
		change R to N;
		if times-used in row N of the source is greater than times-used in row 1 of the source, break;
	if R is not the number of rows in the source:
		decrease R by one;
	let T be a random number between 1 and R;
	choose row T in the source;
	increase the times-used entry by one;
	say "[verbage entry]".

Section Stage Business

[Set the block stage business flag to suppress stage business at the end of that turn sequence -- helpful for scenes with long dialogue and descriptions. To make something not come up until at least one cycle through, change the times-used to "1" in the table]

The block stage business flag is a truth state that varies. The block stage business flag is false.

The stage business rules is a rulebook.

The endgame block stage business rule is listed first in the stage business rules.

This is the endgame block stage business rule:
	if the denouement is happening or the finale is happening:
		the rule succeeds.

The block all stage business rule is listed after the endgame block stage business rule in the stage business rules. 

This is the block all stage business rule:
	if the block stage business flag is true:
		the rule succeeds.
		
The block stage business while-looking rule is listed after the block all stage business rule in the stage business rules.

This is the block stage business while-looking rule:
	if the current action is looking:
		the rule succeeds.
	
The Environmental stage business rule is listed last in the stage business rules.

This is the Environmental stage business rule:
	if a random chance of 2 in 20 succeeds:
		pick a phrase from the Table of Environmental Stage Business;
		say ".";
		the rule succeeds.
		
Table of Environmental Stage Business
times-used		verbage
0			"A fly buzzes past your ear and lands on the ceiling"
0			"A faint breeze wafts by"

Book 2 Places

Chapter The Lab

The lab is a room. "A big white room." The capped room name of the lab is "Laboratory". The player is in the lab.

Chapter Limbo

[A place for offstage stuff]

Limbo is a room.

Book 3 Characters

Chapter Protagonist

Chapter Sidekick

Chapter Antagonist

Chapter Extras

Book 4 Tables and Boxed Text

Section Tables

Chapter Menus

Section Hints
[Note: In thinking about hint activation, remember that the set up of the extension is such that once a hint is deactivated, the activation rule will not reset it. The table row is deleted, so one doesn't need to worry about recurrent activation of a hint. Still, it's good to make the activation rules specific.]

Chapter Default Messages

Section Boxted Text

Book 2  Scenes
 
Chapter Introduction

Introduction is a scene. Introduction begins when play begins. 

Chapter Denouement

[using enclosure here because climbing the stool means that Rick is not in the jail cell]
Denouement is a scene. 
	
Chapter Finale

The Finale is a scene. 

Rule for printing the player's obituary:
	if the endgame is:
		-- lost:
			say "*** LOST ***";
		-- won:
			say "*** WON ***".
						
Rule for amusing a victorious player:
say "Amusing stuff".
