"Narrow Your Eyes" by Ben Collins-Sussman and Jack Welch

The story headline is "Scaffold".
The release number is 1.
The story creation year is 2012.
The story genre is "Comedy".

The story description is "Something happens, and then there is an aha moment when the player realizes that this is the game that they have been waiting their entire life to play. Indeed, the generations before them were mere stepping stones on the way to this, their ultimate destiny."

The intro-text is a text that varies.  Intro-text is "Before other test prints, this text prints. Hence its name, eh?[paragraph break]".


Include Menus by Emily Short.
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

Chapter Menus

Understand "help" or "about" or "info" as asking for help.

Asking for help is an action out of world.

Carry out asking for help:
	change the current menu to the Table of Options;
	carry out the displaying activity;
	clear the screen;
	try looking.

Table of Options
title	subtable	description	toggle
"What is this?"	Table of Adventures	""	--
"How does this work?"	Table of How	--	--
"Help! I'm stuck!"	Table of Stuck	--	--
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

[ Add the following, if hints or walkthrough are implemented:

[line break]* Within the game, you can type [quotation mark]hint[quotation mark] to bring up some context-specific hints. To minimize spoilers, the hints are revealed one at a time, and go from general to specific.[line break]* If all else fails, the game includes a walkthrough (type [quotation mark]walkthrough[quotation mark]), which shows one possible way through the game. The walkthrough is nothing but spoilers, so please consider this a last resort, or something to look at after you've played through the game.

]

Table of Bugs
title	subtable	description	toggle
"A Matter of Interpretation"		--	"This game is designed to run on a virtual machine, some flavor of Glulx interpreter. You are, no doubt, using some implementation of the Glulx interpreter written for your specific hardware -- an android phone, an iPad, a laptop, a dishwasher -- whatever -- as authors, we're just happy we don't have to write a separate game for each device, but can write it once and have other people develop interpreters for each hardware platform. We've made every effort to test it on a number of platforms, but these tests are far from comprehensive. So far as we know, there are no interpreter-specific issues.  However, if the 
  game doesn't run right for you, you could try another interpreter and see if that fixes the situation.[paragraph break]Whether you think the problem is the interpreter or the game itself, we'd appreciate it if you'd let us know. (see [quotation mark]Zapping Bugs[quotation mark])"	--
"Zapping Bugs"	--		"The more freedom you have in your actions, the more likely it is that you'll expose some unknown weakness in the game. What should you do if you elicit such an error?  After due gloating, please help us out by letting us know about the bug. There's no monetary reward for finding errors, but your name will appear on the next version of the ultra-prestigious bug finders list. Now [italic type]there's[roman type] something you can show to your grandchildren with pride.[paragraph break]Bugs can be submitted directly to the project's issue tracker at:[paragraph break]http://code.google.com/p/narrow-your-eyes/issues/list[paragraph break]Without logging into the site, you can peruse all of the previous issue reports, to see if yours is unique, or if the issue is already being addressed. To report a new issue, you would need to log into the site and then click on [quotation mark]new issue[quotation mark] to start a bug report. If you'd prefer, you can also report bugs to:[paragraph break]nye@red-bean.com[paragraph break][quotation mark]Patches are welcome.[quotation mark]"		--

Table of Acknowledgements
title	subtable	description	toggle
"Beta Testers"	--	"Some day, when we actually have beta testers, we'll proudly list them here."	--
"Giant Shoulders"	--	"This game was written in a mere 4 weeks thanks to the excellent tools available to the interactive fiction community. It was written in the Inform 7 language which has a proud heritage traceable back to the first games of this genre, but which is overwhelming attributable to its creator, Graham Nelson. In addition, we gleefully employed a number of modules written by Emily Short, also a major contributor to the Inform 7 language itself. Doubtless, we also extensively picked some tasty bits out of the Inform 7 documentation and examples, written by both Graham and Emily.[paragraph break]This game is written for the Glulx interpreter, so we also owe Andrew Plotkin thanks for developing the Glulx virtual machine, as well as the Glk library which makes the game playable on so many platforms.[paragraph break]Finally, we'd like to the People's Republic of Interactive Fiction for coming up with the idea of a 20th anniversary tribute to the They Might be Giants album Apollo 18. Obviously, at the bottom of the this stack of turtles are TMBG themselves. Without them and their ground-breaking music, there never could have been an anniversary of themselves (without resorting to universe-threatening paradoxes)."		--

Table of Revisions
title	subtable	description	toggle
"Revision History"		--		"Narrow Your Eyes version 1 was released on XXX, XX, 2012."	--

Table of License
title	subtable	description	toggle
"Creative Commons License"	--	"This game is released under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States license. As a consequence, you are free to copy, distribute, display, and use this work and to make derivative works under the following conditions:[paragraph break]Attribution. You must attribute such works mentioning our names [story author] and the title of this work [quotation mark][story title].[quotation mark] This can appear in the title, with the Release Information, or in the acknowledgements section of a menu system. Attribution does not suggest my endorsement of derivative works or their authors.[paragraph break]Noncommercial. You may not use this work for commercial purposes.[paragraph break]Share Alike. If you alter, transform, or build upon this work, you may distribute the resulting work only under the same or similar license to this one.[paragraph break]If you would like a copy of the Inform7 source for this game, please let us know by email: nye@red-bean.com"	--







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
