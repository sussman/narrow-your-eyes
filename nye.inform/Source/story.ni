"Narrow Your Eyes" by Ben Collins-Sussman and Jack Welch

The story headline is "The 10th track on a tribute to TMBG's Apollo 18".
The release number is 1.
The story creation year is 2012.
The story genre is "Comedy".

The story description is "Your wedding rehearsal is hours away, and what do you do but sit on your glasses, crushing them beyond repair? Can you and your stylish cell phone make it through the day unscathed?"

Include Menus by Emily Short.
Include Plurality by Emily Short.

Use full-length room descriptions, american dialect and the serial comma.

[
Use memory economy.
Release along with cover art.
]

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



Chapter Declare Global Variables

The last mentioned thing is a thing that varies.

Muted is a truth state that varies. Muted is false.

geeBars, gpsBars, and powerBars are numbers that vary.
geeBars is usually zero.
gpsBars is usually zero.
powerBars is usually zero. powerBars is five.

Notifications is a text that varies. Notifications is "".

Updates is a text that varies. Updates is "".

hasturCount is a number that varies. hasturCount is zero.


Chapter Class Definitions

A prop is a kind of thing. It is usually portable. [If props can be carried out of their initial room, they should not be in the room description, but appear in the room contents list.]

A furniture is a kind of supporter. It is usually scenery and fixed in place. [In general, furniture descriptions should be integrated into room descriptions.] 

A thing can be large. A thing is usually not large.

Everything has some text called texture. The texture of something is usually "".
Everything has some text called scent. The scent of something is usually "". 

A thing has some text called the inscription. The inscription of something is usually "".

A fardrop is a kind of backdrop.

Conclusion is a kind of value. The conclusions are hastured, lasered, and won.

Endgame is a conclusion that varies. The endgame is usually won.

A latch is a kind of thing. A latch can be openable. A latch can be open. A latch can be lockable. A latch can be locked. A latch is usually openable, lockable, closed and locked.

Mortality is a kind of value. The mortalities are alive and dead. Persons have mortality. A person is usually alive.

Focus is a kind of value. The focuses are unfocused, diplopic, blurry, and sharp.

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




Chapter Verbs

Section Abouting

Understand "about" as abouting.

Abouting is an action out of world.

Carry out abouting:
	say aboutText.

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

Section Examining

Instead of examining:
	if Eye Exam is happening:
		if the noun is: 
			-- refractor:
				say "It is so close to your face that you can't focus on it. The best you can do is look through it at the eye chart.";
			-- Amelia: 
				continue the action;
			-- button:
				continue the action;
			-- otherwise:
				say "Sitting in the deliberate darkness of an ophthalmologist's office, you can't see anything but the eye chart."

Section Taking Inventory

Instead of taking inventory: [purloined from Persephone, example 62 in I7 documentation]
	say "You're carrying [a list of things carried by the player]."
	
Chapter General Afters

Section Undoing



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


When play begins:
	say openingLine1;
	wait for any key;
	say "[bracket]BLIIINNGGGG[close bracket]";
	[trigger glk bliiinngggg sound here];
	wait for any key;
	say openingLine2;
	change the time of day to 11:00 AM;
	change the left hand status line to "Power:[powerBars] 5G:[geeBars] GPS:[gpsBars] [Notifications] [Updates]";
	change the right hand status line to "".

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
	if the finale is happening:
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

Chapter The Ophthalmology Office

The Ophthalmology Office is a room. The description of the Ophthalmology office is "office description".

The eye chart is a fardrop. It is in the Ophthalmology Office. The first line is part of the eye chart. The description of the first line is "h". The second line is part of the eye chart. The description of the second line is "XZYZZ". The third line is part of the eye chart. The third line can be completed. The third line is not completed. The fourth line is part of the eye chart. The fifth line is part of the eye chart.

Instead of reading or examining the first line:
	say "[one of]You have no trouble reading the large letters of the first line: [quotation mark]hv[quotation mark]. Oh wait, that's a greek nu. Ah, some optics humor[or]It says [quotation mark]h nu[quotation mark]. You wonder how many of Doctor Giblets patients are famliar with the Planck constant[or]There[apostrophe]s no challenge in reading such large letters[stopping]."
	
Instead of reading or examining the second line:
	say "[one of]You read the second line, but Trevor replies, [quotation mark]One more line down, Marv. That's the second line[quotation mark][or][quotation mark]Please read the third line, Marv,[quotation mark] asks Doctor Giblets[or]Yes, you've got the second line already. Please read the third one,[quotation mark] instructs Trevor[or][quotation mark]Right[quotation mark][stopping]."
	
Instead of reading or examining the third line:
	say "[thirdLineDescription]".
	
Instead of reading or examining the fourth line:
	if the focus of the refractor is not sharp:
		say "[one of]There is no way you can read tiny letters in the fourth line without being able to make out the ones in the line above it[or]You wonder if anyone can read the nearly microscopic letters in the fourth line. They seem to squirm and wiggle even as you try your best to resolve them[or]You are not able to. Yet[stopping].";
	otherwise:
		if the hasturCount is:
			-- 0: say "[quotation mark]It looks,[quotation mark] you say, [quotation mark]like the fourth line is some kind of name… HASTUR?[quotation mark][paragraph break][quotation mark]Oh you don't need to read that line, Marv. We've got all we need.[quotation mark] Trevor sounds somewhat nervous.";
				increase the hasturCount by one;
			-- 1: say "[quotation mark]Hmm, that fourth line is an odd word.[quotation mark] You can[apostrophe]t help but think that you[apostrophe]ve heard that one before somewhere. Idly, you pronounce it: [quotation mark]HASTUR.[quotation mark][paragraph break][quotation mark]Marv, really. We need to get on with the rest of the exam. You can stop reading that line[quotation mark], advises Doctor Giblets.[paragraph break]Trevor sounds frankly panicked now, though, as he implores [quotation mark]For the love of man, stop reading![quotation mark][paragraph break]";
				increase the hasturCount by one;
			-- 2: say "Once more, you say [quotation mark]HASTUR[quotation mark].[paragraph break]Doctor Giblets lunges at the refractor, trying to pry it from your eyes, while Trevor tears the eye chart from the wall.[paragraph break]But it is too late. You have awoken the Unspeakable One and given birth to a nightmare horror that even now is reaching out of an incompressible fold in space, uncoiling its tentacles, and snapping its hideous beak in anticipation of what is to come.[paragraph break]You narrow your eyes as the grotesque horror engulfs you and gibbers madly onward towards an unsuspecting world.";
			   now the endgame is hastured;
				end the story.
		
	

To say thirdLineDescription:
	if the focus of the refractor is:
		-- unfocused:
			say "[quotation mark]I can't even tell if they are letters. Does it start with an X or maybe a K?[quotation mark].[paragraph break][quotation mark]No problem,[quotation mark] replies Doctor Giblets. [quotation mark]My initial guess was probably off. Let[apostrophe]s try kicking in a few negative diopters.[quotation mark] The refractor vibrates and makes a rachety sound as he twists some dials.[paragraph break]";
			now the refractor is  blurry;
		-- blurry:
			say "Okay, I can tell that it definitely starts with some X[apostrophe]s and I think it ends with an L.[quotation mark][paragraph break][quotation mark]No fair guessing. When we get it right, it should be entirely in focus.[quotation mark] Doctor Giblets makes some more adjustments.";
			now the refractor is diplopic;
		-- diplopic:
			say "The letters are now crisply focused, and you confidently read them off, [quotation mark]XXMMVVEEHHGGAAQQLL.[quotation mark][paragraph break][quotation mark]Ah, great. But you're seeing double. Trevor -- adjust the convergence.[quotation mark][paragraph break]You hear some clicking and the letters slide together.";
			now the refractor is sharp;
		-- sharp:
			say "[one of]You read off the letters again, [quotation mark]XMVEHGAQL[quotation mark][paragraph break][quotation mark]Ah, that[apostrophe]s got it! We can whip up some glasses and frames for you with no problem now[or][quotation mark]Right. We've got that line, thanks[or][quotation mark]Yes, you[apostrophe]ve become a veritable expert on that line, Marv[or][quotation mark]No need to read it again, we have everything we need to grind new lenses[or][quotation mark]Right[stopping].[quotation mark][paragraph break]".	
			
Instead of doing something with the fifth line:
	say "The eye chart has only four lines (three if you are a computer scientist)."

Instead of reading or examining the eye chart, try searching the refractor.

The refractor is a furniture in the Ophthalmology Office. The refractor has focus. The refractor is unfocused.

Instead of pulling or pushing the refractor, say "It is heavier than it looks. Maybe Trevor clamped it into position so it would stay in proper alignment."

Instead of taking the refractor, say "You can[apostrophe]t -- it[apostrophe]s huge[one of] Besides, what would Amy say when you show up at the rehearsal lugging along a couple tons of ophthalmology equipment[or][stopping]."

Instead of searching the refractor:
	if the focus of the refractor is:
		-- unfocused:
			say "You strain as you peer through the refractor, but you can[apostrophe]t even tell where one letter ends and another begins. [paragraph break][quotation mark]It[apostrophe]s a total blur,[quotation mark] you reply.[paragraph break]Doctor Giblets makes an adjustment.[paragraph break][quotation mark]How about now?[quotation mark][paragraph break]The lines of the letters sharpen up. [quotation mark]A bit better,[quotation mark] you reply.";
			  now the refractor is blurry;
		-- blurry:
			say "Well, Marv,[quotation mark] asks Doctor Giblets, [quotation mark]what do you see? Just read the third line back to me.[quotation mark].";
		-- sharp:
			say "sharp".


Chapter Wisconsin Avenue

Wisconsin Avenue is a room. It is outside from the Ophthalmology Office. The description of Wisconsin Avenue is "wisconsin avenue description."

Chapter M Street

M Street is a room. It is south of Wisconsin Avenue. The description of M Street is "m street description".

Chapter Factory

The Factory is a room. The description of the Factory is "factory description". 

Chapter CornerNW

CornerNW is a room. The printed name of CornerNW is "The corner of 4th and Eye Streets, NW". The description of the CornerNW is "cornernw description".

Chapter Limbo

[A place for offstage stuff]

Limbo is a room.

Book 3 Characters

Chapter Marv

The player is Marv Spindle. Marv is a man in the Ophthalmology Office. 

Chapter mangoFONE

Amelia is a woman. Understand "phone","mango","fone","mangofone","cell" or "cellular" as Amelia. The printed name of Amelia is "your mangoFONE". Marv Spindle carries Amelia. The description of Amelia is "[one of]Cut from a single, flawless crystal of lab-grown Obsidian and no doubt polished by countless inadequately paid laborers to a brilliant shine, the pulsing orange glow of the prototype mangoFONE's single button is hypnotic[or]Your beloved mangoFONE, Amelia[stopping]."

The button is part of Amelia. The description of the button is "[one of]
The button pulses on and off, on and off, a deep, deep orange glow. So pretty. So hypnotic[or]The shiny button draws you in with its rhythmic pulsing, a comforting, warm orange glow that makes you feel content. Tension melts out of you as you sink deeper into its welcoming throb. Deeper, and deeper[or]You caress the beautiful orange button and let the pleasant orange light shine warmly on your face. Your attention fixes on the light, its singular glow fills your vision and displaces all other interests. You stare into the burning heart of a pulsing nebula, filled with the majestic beauty of creation, and unable to look away. Everything else feels remote and unconnected, the phone is everything[or]You feel your soul slipping away into the embracing glow of the mangoFONE[or]The phone now owns your soul[or]For cripes sake, it’s just a button. An amazingly well designed button, but a button nonetheless[or]A faintly pulsing orange glow, almost imperceptibly raised above phone's glassy surface[stopping]."

Instead of giving Amelia to someone:
	say "No, you swore up and down to Mr. Boulot that you wouldn[apostrophe]t let the prototype phone out of your hands for even a moment."
	
Instead of throwing, dropping, or attacking Amelia:
	say "[hyperbole]";
	
Instead of eating Amelia:
	say "It[apostrophe]s not that kind of mango."
	
Instead of pushing the button:
	say "You press the mangoFONE[apostrophe]s button and it speaks, [quotation mark]Say a voice command in the form of [bold type]Amelia, command[roman type].[quotation mark][one of][paragraph break][quotation mark]That[apostrophe]s kind of, um, strange, isn[apostrophe]t it, Mr. Spindle -- I mean, Marv -- that it has the same name as my cousin?[quotation mark] asks Trevor.[paragraph break][quotation mark]I guess,[quotation mark] you reply. [quotation mark]I've had Amy so much on my mind that I couldn't think of anything else when I was setting up the phone.[quotation mark][paragraph break][quotation mark]Golly. The phone even sounds like Amy.[quotation mark][paragraph break][quotation mark]I guess it does at that. I'd never really noticed.[quotation mark][or][stopping][paragraph break]".

Chapter Igneous

Professor Igneous is a man in the Factory. He is alive.

Chapter Giblets

Doctor Giblets is a man in the Ophthalmology Office. 

Chapter Trevor

Trevor is a man in the Ophthalmology Office. Understand "Trev" as Trevor.

Book 4 Tables and Boxed Text

Section Tables

Chapter Menus

Chapter Menus

Understand "help" or "info" as asking for help.

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

Chapter Default Messages

Section Boxed Text

To say openingLine1:
	say "[quotation mark]Narrow the eyes a little.[quotation mark][paragraph break]Dr. Giblet[apostrophe]s son Trevor complies, gently settling the refractor on the bridge of your nose. As he pushes inward on the two halves of the instrument, the lenses align and you find yourself staring through the device at a blurry eye chart.[paragraph break]"
	
To say openingLine2:
	say "[paragraph break][quotation mark]Marv, Do you want to get that?[quotation mark][paragraph break][quotation mark]Nope. That sound means my phone just updated itself. It does that like every few hours -- the price of living on the bleeding edge![quotation mark][paragraph break]"
	
To say aboutText:
	say "This story is part of the People's Republic of Interactive Fiction's tribute to They Might be Giants on the occasion of the 20th anniversary of their landmark album, Apollo 18.  Each work in this collection is based on one of the songs on this album, the full collection can be downloaded from <link to PR-IF website/collection>.[paragraph break]For instructions on how to play, type [quotation mark]help[quotation mark]."
	
To say geeWhiz:
	say "[quotation mark]Gee whiz, Mr. Spindle, I've never seen a phone like that.[quotation mark][paragraph break][quotation mark]Please, Trevor, call me Marv -- we[apostrophe]re going to be cousin-in-laws! And yes, it is a special phone -- I guess Amelia's dad already considers me to be in the family, to let me try out one of the few mangoFONE prototypes. I think he said it has some kind of super high-end quantum processor stuff inside -- sounded impressive to me, but what do I know about phones? So far I[apostrophe]ve just used it for text messages.[quotation mark][paragraph break]"
	
To say hyperbole:
	say "[one of]Not in a million years. It[apostrophe]s a next generation mangoFone! The sweetheart hardware of the technopaparrazi, the envy of all gageteers, the economic cornerstone of US economy two point oh, the technological underpinning of Stephenson[apostrophe]s Diamond Age, the catalyst of Kurzweil[apostrophe]s Singularity, the final step to the realization of Teilhard[apostrophe]s Omega Point.[paragraph break]To say that it is a mere phone, is to say that infinity is a number somewhat larger than six[or]You would rather walk blindly into heavy traffic[or]Better that you should throw yourself in front of a bus[or]You would rather face a firing squad of evil robots with lasers for arms[or]You[apostrophe]d really rather not[stopping].[paragraph break]"
	
To say hasturedText:
	say "Consumed by ancient evil."
	
To say wonText:
	say "WonText."
	
To say laseredText:
	say "laseredText."
 

Book 2  Scenes
 
Chapter Eye Exam

Eye Exam is a scene. Eye Exam begins when play begins. 

After examining Amelia for the first time during Eye Exam, say "[geeWhiz]".

Chapter Exterior

Exterior is a scene. Exterior begins when the player is in Wisconsin Avenue. Exterior ends when the player is in the Factory.

Chapter Cunning Plan

Cunning Plan is a scene. Cunning Plan begins when the player is in the Factory. Cunning Plan ends when Professor Igneous is dead.
	
Chapter Finale

The Finale is a scene. Finale begins when Cunning Plan ends.

Rule for printing the player's obituary:
	say "*** YOU HAVE ";
	if the endgame is won:
		say "WON ***";
	otherwise:
		say "DIED ***";
	say paragraph break;
	if the endgame is:
		-- won:
			say "[wonText]";
		-- hastured:
			say "[hasturedText]";
		-- lasered:
			say "[laseredText]".	
		
						
Rule for amusing a victorious player:
say "Amusing stuff".
