"Narrow Your Eyes" by Ben Collins-Sussman and Jack Welch

The story headline is "The 10th track on a tribute to TMBG's Apollo 18".
The release number is 1.
The story creation year is 2012.
The story genre is "Comedy".

The story description is "Your wedding rehearsal is hours away, and what do you do but sit on your glasses, crushing them beyond repair? Can you and your stylish cell phone survive the day?"

Include Menus by Emily Short.
Include Plurality by Emily Short. 

Use full-length room descriptions, american dialect and the serial comma.

[
Use memory economy.
Release along with cover art.
]

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
	if the player's command includes "all":
		say "One thing at a time, please.";
		reject the player's command.
	
Chapter Rules Modifications

[Override inherent prudeness -- allow PC to kiss anything]
The block kissing rule is not listed in any rulebook.
The kissing yourself rule is not listed in any rulebook.		

Chapter Declare Global Variables

The last mentioned thing is a thing that varies.

Muted is a truth state that varies. Muted is false.

MAXBARS is a number that varies. MAXBARS is five.
geeBars, gpsBars, powerBars, and phoneCharge are numbers that vary.
geeBars is usually zero.
gpsBars is usually zero.
powerBars is usually zero. powerBars is five.
phoneCharge is usually zero. phoneCharge is 170.

hasturCount is a number that varies. hasturCount is zero.

lastDialed is an indexed text that varies. lastDialed is "".

cowLicense is a number that varies. cowLicense is four.

turnCounter is a number that varies. turnCounter is zero.

currentMessage is a text that varies. currentMessage is "".
messageAlert is a truth state that varies. messageAlert is false.

updated is a truth state that varies. updated is true.


Chapter Class Definitions

A prop is a kind of thing. It is usually portable. [If props can be carried out of their initial room, they should not be in the room description, but appear in the room contents list.]

A furniture is a kind of supporter. It is usually scenery and fixed in place. [In general, furniture descriptions should be integrated into room descriptions.] 

A thing can be large. A thing is usually not large.

Everything has some text called texture. The texture of something is usually "".
Everything has some text called scent. The scent of something is usually "". 

A thing can be fuzzy. A thing is usually fuzzy.

A thing has some text called the inscription. The inscription of something is usually "".

A fardrop is a kind of backdrop.

Conclusion is a kind of value. The conclusions are hastured, lasered, webbed, drained, jumped and won.

Endgame is a conclusion that varies. The endgame is usually won.

A latch is a kind of thing. A latch can be openable. A latch can be open. A latch can be lockable. A latch can be locked. A latch is usually openable, lockable, closed and locked.

Mortality is a kind of value. The mortalities are alive and dead. Persons have mortality. A person is usually alive.

Focus is a kind of value. The focuses are unfocused, diplopic, blurry, and sharp.

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
After printing the name of something (called the target): 
    change the last mentioned thing [quotation mark][paragraph break][quotation mark]to the target.

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

Before asking the player about something:
	say "[noSelfTalking]";
	stop the action.
	
Section Listening
[Listen is implemented through insteads. Override this general instead rule with more specific ones as needed]

Instead of listening:
	pick a phrase from the Table of Ambient Noise;
	say ".";
	
Table of Ambient Noise
times-used		verbage
0		"You hear yourself breathing"
1		"You hear nothing special"


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
	

Section Showing

Before showing something (called the item) to the player:
	try examining the item;
	the rule fails.

Section Smelling
	
[Like listening, smelling is performed through instead rules. The generic smell rule tracks bad smells, which decay over time.]

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
	
Section Touch
[ Jan 15, 2012  Jack comment - I commented out this section, as it would not compile, possibly due to changes in Inform, extensions, etc.

Touching is implemented through an after rule, which is nice in terms of making use of existing relationships about whether something is touchable or not. If an item has a texture attribute, this rule makes use of it.]

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
	say "Amelia replies, [quotation mark]The following apps are available:  [if cowLicense is greater than zero]Angry Cows, [end if]Flashlight, Night Sky, and Trees versus Mummies. To launch an app, just say [bold type]Amelia, followed by the name of the application[roman type].[quotation mark][paragraph break]";
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

Understand "command" as commanding.

Persuasion rule for asking Amelia to try commanding:
	persuasion succeeds.

Carry out commanding:
	say "[errorPrompt]".
	
Instead of Amelia commanding:
	say "Your phone sighs, and little tufts of deep purple clouds animate over the obsidian surface. [quotation mark]Yes. That was very literal. Let me be more clear: to tell me to do something, say a command in the form of [bold type]Amelia, command[roman type], where command is what you want me to do, and not actually the word command[one of], as I suspect you already know, but were testing me[or][stopping].[quotation mark][paragraph break][quotation mark][tutorPrompt][quotation mark][paragraph break]";
	the rule succeeds.
	
Section Cowing

Cowing is an action applying to nothing.

Understand "angry cows" or "cows" as cowing when cowLicense is greater than zero.

Persuasion rule for asking Amelia to try cowing:
	persuasion succeeds.

Carry out cowing:
	say "[errorPrompt]".
	
Instead of Amelia cowing:
	if cowLicense is:
		-- 4: say "You can’t see the phone because [if the player is dilated]your vision is blurred[otherwise]you are looking through the refractor[end if], but you hear the sound of cows fighting viciously against their mortal enemies. After some time, the phone determines that you are not actively playing the game, the mooing fades, and the cows come home.";
		-- 3: say "Cows leap into action, mercilessly slaughtering their sworn enemies, the hedgehogs. It is a metaphor for life.";
		-- 2: say "You cry havoc and let slip the cows of war.";
		-- 1: say "Your trial license for Angry Cows has expired, and the application has been removed from your device. To purchase Angry Cows or Angry Cows 2: Bovine Retribution, please visit the Mango Intellectual Properties Store.";
	decrease cowLicense by one;
	the rule succeeds.
	
Section Flashing

Flashing is an action applying to nothing.

Understand "flashlight" or "flash light" or "torch" as flashing.

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
			say "The mangoPhone focuses its energy into a tight, white beam[one of]. You carefully aim it away from your eyes to avoid being blinded[or][stopping].";
			now Amelia is lit;
		otherwise:
			say "The light from your phone fades out.";
			now Amelia is not lit;
	say paragraph break;
	the rule succeeds.
	
Section Messaging

Messaging is an action applying to nothing.

Understand "message" as messaging.

Persuasion rule for asking Amelia to try messaging:
	persuasion succeeds.

Carry out messaging:
	say "[errorPrompt]".

Instead of Amelia messaging:
	say "The phone twinkles pink and light green, then announces, [quotation mark][run paragraph on]";
	if currentMessage is "":
		say "No messages have been received. Sorry, Marv.";
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
	if T matches the regular expression "^<0-9><0-9>*<0-9>$":
		let n be the number of characters in T;
		if n is greater than 10:
			say "Your mangoFONE fades to a deep purple and says, [quotation mark]Error: Phone numbers are limited to ten digits.[quotation mark][paragraph break]";
			change lastDialed to "";
		otherwise:
			say "The phone shimmers with golden sparkles, and says, [quotation mark]Dialing number: [T].[quotation mark][paragraph break]You hear a ";
			if n is:
				-- 1:say "single";
				-- 2:say "couple";
				-- 3:say "few";
				-- otherwise: say "series of";
			say " loud touch tone[if n is greater than one]s[end if].[no line break][NoNetwork]";	
			change lastDialed to T;
	else:	
		if T matches the regular expression "amelia", case insensitively:
			say "The phone flashes grey for an instant, then replies, [quotation mark]I am here, Marv. Please tell me who to call.[quotation mark][paragraph break]";
		otherwise:
			say "Waves of green chase each other around the phone's surface as it says, [quotation mark]Dialing [T].[quotation mark][noNetwork]";
	the rule succeeds.
	

Section Skying

Skying is an action applying to nothing.

Understand "sky" or "night" or "night sky" as skying.

Persuasion rule for asking Amelia to try skying:
	persuasion succeeds.

Carry out skying:
	say "[errorPrompt]".
	
Instead of Amelia skying:
	say "The dark background makes this app easier to see. You can’t distinguish individual starts, but as a professional astronomer, you have no trouble making out the shape of individual constellations. As you change orientations, the image on the phone rotates, fixed on the heavens.";
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

Understand "travel" as Traveling.

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

Understand "trees" or "mummies" or "trees versus mummies" as treeing.

Persuasion rule for asking Amelia to try treeing:
	persuasion succeeds.

Carry out treeing:
	say "[errorPrompt]".
	
Instead of Amelia treeing:
	say "A nice concept, but boring in the implementation: the mummies rest eternally in their sarcophagi and the trees grow serenely nearby, at the edge of an oasis. You turn it back off after a while.";
	the rule succeeds.

Section Tutoring

Tutoring is an action applying to nothing.

Understand "tutor" as tutoring.

Persuasion rule for asking Amelia to try tutoring:
	persuasion succeeds.

Carry out tutoring:
	say "[errorPrompt]".
	
Instead of Amelia tutoring:
	say "[quotation mark]Tutor mode. The phone recognizes the following  basic commands: apps calendar messages phone time travel tutor update and warranty. Other modes are unavailable during alpha testing.[quotation mark][paragraph break]";
	the rule succeeds.
	
Section Updating

Updating is an action applying to nothing.

Understand "update" as updating.

Persuasion rule for asking Amelia to try updating:
	persuasion succeeds.

Carry out updating:
	say "[errorPrompt]".
	
[For now, this is hardcoded, but we could generalize with a list of updates with time, description,etc.]

Instead of Amelia updating:
	say "Tiny blue dots of light dance under the smooth, black glass skin of the phone, and it replies, [quotation mark]The most recent update occurred ten minutes ago and installed the travel module, which provides context-sensitive turn by turn directions. No additional updates are available at this time.[quotation mark][paragraph break]";
	the rule succeeds.
	
Section Warranting

Warranting is an action applying to nothing.

Understand "warantee" as warranting.

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
		say "[one of]Your eyes are to blurry to get a good look at [the item][or]You narrow your eyes, but can[apostrophe]t focus properly on [the item][or][The item] [is-are] a blur to you[or]The drops are still affecting your eyes. You can[apostrophe]t see any detail about [the item][at random]."	

Section Taking Inventory

Instead of taking inventory: [purloined from Persephone, example 62 in I7 documentation]
	say "You're carrying [a list of things carried by the player]."

	
Chapter General Afters

Section Undoing



Chapter Not Ready For Prime Time - Not for release

Section Muting

[To reduce the clutter during debugging]
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
	change the left hand status line to "Power [powerBars graphically] 5G [geeBars graphically] GPS [gpsBars graphically] [Messages] [Updates]";
	change the right hand status line to "".

After printing the banner text:
	say "Type [quotation mark]help[quotation mark] for instructions.";

	
Chapter Every Turn

[note: fires after the turn-specific every turn rule]
Every turn:
	[avoid penalizing time for non-actions, a nuance]
	if the current action is taking inventory or the current action is looking:
		change the time of day to 1 minute before the time of day;
	increase turnCounter by one;[so don't do this in per-scene-everyturn]
	decrease phoneCharge by one;
	if Amelia is lit:
		decrease phoneCharge by one;
	change powerBars to phoneCharge divided by 30;
	if phoneCharge is zero:
		say "[AmeliaPowerDown]";
		if Exterior has happened:
			do nothing;
		otherwise:
			change the endgame to drained;
			end the game in death.
		
		
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


Book 2 Places

Chapter The Ophthalmology Office

The Ophthalmology Office is a room. The description of the Ophthalmology office is "The room is pitch dark, except for some light coming through a device, which you are told is called a refractor, just in front of your nose."

Before printing a locale paragraph about something fuzzy (called the item): 
	now the item is mentioned.

The eye chart is a fardrop. It is in the Ophthalmology Office. The first line is part of the eye chart. The description of the first line is "h". The second line is part of the eye chart. The description of the second line is "XZYZZ". The third line is part of the eye chart. The third line can be completed. The third line is not completed. The fourth line is part of the eye chart. The fifth line is part of the eye chart. The eye chart can be read. The eye chart is not read.

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
			say "The letters are now crisply focused, and you confidently read them off, [quotation mark]X-X-M-M-V-V-E-E-H-H-G-G-A-A-Q-Q-L-L.[quotation mark][paragraph break][quotation mark]Ah, great. But you're seeing double. Trevor -- adjust the convergence.[quotation mark][paragraph break]You hear some clicking and the letters slide together.";
			now the refractor is sharp;
		-- sharp:
			say "[one of]You read off the letters again, [quotation mark]X-M-V-E-H-G-A-Q-L[quotation mark][paragraph break][quotation mark]Ah, that[apostrophe]s got it! We can whip up some glasses and frames for you with no problem now[or][quotation mark]Right. We've got that line, thanks[or][quotation mark]Yes, you[apostrophe]ve become a veritable expert on that line, Marv[or][quotation mark]No need to read it again, we have everything we need to grind new lenses[or][quotation mark]Right[stopping].[quotation mark][paragraph break]";
			now the eye chart is read;
			now the turnCounter is zero.
			
Instead of doing something with the fifth line:
	say "The eye chart has only four lines (three if you are a computer scientist)."

Instead of reading or examining the eye chart, try searching the refractor.

The refractor is a furniture in the Ophthalmology Office. The refractor has focus. The refractor is unfocused.

Instead of pulling or pushing the refractor, say "It is heavier than it looks. Maybe Trevor clamped it into position so it would stay in proper alignment."

Instead of taking the refractor, say "You can[apostrophe]t -- it[apostrophe]s huge.[no line break][one of] Besides, what would Amy say when you show up at the wedding rehearsal lugging along a couple tons of ophthalmology equipment?[or][stopping][paragraph break]"

Instead of searching the refractor:
	if the focus of the refractor is:
		-- unfocused:
			say "You strain as you peer through the refractor, but you can[apostrophe]t even tell where one letter ends and another begins. [paragraph break][quotation mark]It[apostrophe]s a total blur,[quotation mark] you reply.[paragraph break]Doctor Giblets makes an adjustment.[paragraph break][quotation mark]How about now?[quotation mark][paragraph break]The lines of the letters sharpen up. [quotation mark]A bit better,[quotation mark] you reply.";
			  now the refractor is blurry;
		-- blurry:
			say "Well, Marv,[quotation mark] asks Doctor Giblets, [quotation mark]what do you see? Just read the third line back to me.[quotation mark][paragraph break]";
		-- diplopic:
			say "It looks more in focus, but not quite right.";
		-- sharp:
			say "Now it all looks sharp, except perhaps for the tiny letters of the fourth line that seem to crawl about on their own."
			
Instead of going somewhere during the Eye Exam:
	say "Wedding jitters almost got to you, but then you sit back down to finish the eye exam."

Chapter Wisconsin Avenue

Wisconsin Avenue is a room. It is outside from the Ophthalmology Office. The description of Wisconsin Avenue is "[one of]It is a bright, unpleasantly sunny day. So sunny, in fact, that everything more than a few feet away is a complete blur. You narrow your eyes and recognize the outside of Doctor Giblet’s office[or]Somewhere on Wisconsin Avenue, just above Reservoir Road[stopping]."

The bike is a enterable portable supporter. The bike is in Wisconsin Avenue. The description of the bike is "A heavily-customized, bright red bike. It is built like a tank and has a bevy of electronic enhancements, including stabilization gyros." The bike is not fuzzy. 

Instead of climbing the bike:
	try entering the bike.


Chapter Nonlocations

The Russian Embassy is a room. The Russian Embassy is north of Wisconsin Avenue. 
M Street is a room. M Street is south of Wisconsin Avenue. 
Dupont Circle is a room. Dupont Circle is east of Wisconsin Avenue. 
The Hilltop is a room. The Hilltop is west of Wisconsin Avenue.

Chapter Factory

The Factory is a room. The description of the Factory is "[one of]As your eyes adjust to the near darkness, you are alarmed that not only is the wedding party absent, but this doesn’t even look like a hotel! It looks like a factory floor, complete with moving conveyor belts, spinning platforms, an industrial welding robot.  If you are not mistaken, you are cut off from the far side of the room by a web of ultraviolet cutting lasers.[paragraph break]From the far corner of the room, you hear a beep and the industrial robot takes a step forward[or]An operational factory floor, with conveyor belts, spinning platforms, and an industrial welding robot. You are cut off from the far side of the room by a web of ultraviolet cutting lasers[if turnCounter is greater than 2]. A man occupies a plastic control booth in one corner[end if][stopping]."

Understand "man" as Professor Igneous.

Instead of examining Professor Igneous, say "[one of]You recognize the man from the TV news, it is Professor Igneous, criminal master mind and global terrorist, a hi-tech madman. There was a special about him on the History Channel last week. Damn, you wish you had watched it.[paragraph break][quotation mark]Yes, take a good look at the man who will finally wipe you from the face of the Earth![quotation mark][or]Your (self-described) archnemesis.[no line break][stopping][paragraph break]". 

Instead of doing something with Professor Igneous:
	say "The professor ignores you, confident in his plan."

The plastic control booth is a fardrop in the Factory.

The floor is a fardrop. It is in the the Factory.

The convenyor belts are a fardrop. They are in the Factory.

The spinning platforms are a fardrop. They are in the Factory.

The industrial welding robot is a fardrop. It is in the Factory. Understand "Lenny" as the industrial welding robot. The laser is part of the industrial welding robot.

The metal parts locker is an enterable chest. It is in the Factory. The description of the metal parts locker is "A light colored sturdy metal box, with a hinged cover that comes up to your chest. It is marked, [quotation mark]Parts[quotation mark].[no line break][one of][paragraph break][quotation mark]There’s nothing there that will help you, Jeremy. May I call you Jeremy? Yes, I think we’re on intimate terms now, at least for this deliciously brief period before your death. That bin is full of ultra high-density power modules stolen from your own Army by my operatives in West Ispharistan. Each of them will power my robot warriors for weeks![quotation mark][or][stopping]". The metal parts locker is not fuzzy. The metal parts locker can be pinholed. The metal parts locker is not pinholed.

After opening the metal parts locker:
	say "You lift the [one of]cover of the parts locker, and find it much heavier than you would have guessed. You realize that the locker is not made from cheap sheet metal, but is almost like armor in terms of thickness. It is dark inside the locker[or]heavy cover and it remains balanced in the open position[stopping]."
	
After closing the metal parts locker:
	say "With great effort, you [one of]lift the cover to the balancing point and then let it slam thunderously down[or]close the parts locker[apostrophe]s cover[stopping]."
	
Instead of climbing the locker:
	say "You recall the admonition from your youth: warning -- bin may tip. Do not play in or around."
	
After entering the locker:
	say "You tumble into the locker[one of], any grace and coordination having been lost during your recent encounter with a ten ton city bus. You land on a pile of plastic parts. The heavy lid clangs down, sealing you in darkness[or][stopping].";
	now the metal parts locker is closed.
	
Before exiting during the cunning plan:
	if the metal parts locker encloses the player:
		try silently opening the cover.

Instead of exiting during the cunning plan:
	if the metal parts locker encloses the player:
		continue the action;
	otherwise:
		say "There are no exits[one of] -- the revolving door has disappeared behind you[or][stopping].";
		stop the action.

After exiting during Cunning Plan:[The only thing the player can exit during this scene *is* the locker]
	say "You clamber over the side of the locker and land awkwardly on the factory floor, back where you had started. The cover slams back down, sealing the locker.";
	now the metal parts locker is closed.		

The cover is a lid which is part of the metal parts locker. The description of the cover is "The parts locker[apostrophe]s hinged cover of thick plate steel. The cover [if the metal parts locker is open]rests open[otherwise]is shut[end if]." Understand "hinge" or "hinges" as the cover. The cover is not fuzzy.

Rule for printing room description details of the metal parts locker:
	omit contents in listing.

The ultraviolet web is a furniture. It is in the Factory. The description of the ultraviolet web is "An intricately woven web of high intensity light, just on the edge of your perception[one of]. On the downside, you will surely be seeing Doctor Giblets about cataract removal after this experience -- if you survive it. On the bright side, you will come out of this with a healthy tan[or][stopping]."

Chapter CornerNW

CornerNW is a room. The printed name of CornerNW is "The corner of 4th and Eye Streets, NW". The description of the CornerNW is "You are on a street corner next to a green metal pole and a brass door, everything in the distance is blurry."

The pole is a supporter in CornerNW. The description of the pole is "The pole is studded with official traffic signs: snow emergency route, two hour parking zone 2 permit holders only, one way street, metro bus stop, dumping prohibited, loading zone, no parking, alternate parking Wednesdays, yield to pedestrians, slow children... you can only follow the pole upwards so far, before the bright sky bothers your dilated eyes." The pole is not fuzzy.

The signs are a part of the pole. Understand "sign" as the signs. The signs are plural-named. The description of the signs is "The signs start fairly far up the pole. They are mostly about parking and other traffic regulations, one is about picking up after your dog, another about recycling of plastics, and another about this being a neighbor watch community."

The hotel entrance is an open openable lockable unlocked enterable container in CornerNW. The description of the hotel entrance is "A revolving brass door, which leads into the hotel." Understand "brass" or "door" as the hotel entrance. The hotel entrance is not fuzzy.

Instead of examining the hotel entrance:
	say "A revolving brass door, engraved with the words [quotation mark]Hotel Entrance[quotation mark] (and presumably, on the other side, [quotation mark]Hotel Exit[quotation mark]. When you try to confirm this by narrowing your eyes and peeking around the back side of the door, [revolvingDoor].";
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

The Poletop is above CornerNW. Understand "top" as the poletop. The description of the poletop is "[one of]Your sweaty hands grip the slick, green pole as you narrow your eyes and peer towards the horizon. From somewhere below you, you hear a child ask, [quotation mark]Mommy, what is that raggedy man doing up on that pole?[quotation mark][paragraph break]You yell down, [quotation mark]I am looking for my wedding rehearsal,[quotation mark] and nearly loose your grip on the pole.[paragraph break][quotation mark]Come with me, Cynthia. Let[apostrophe]s leave him alone[quotation mark][paragraph break][quotation mark]Is he a crazy man, mommy?[quotation mark][paragraph break][quotation mark]I said come with me, Cynthia[quotation mark][paragraph break][quotation mark]Well is he?[quotation mark][no line break][or]The signs thin out up here, although one catches your attention: [quotation mark]Site of the Future Igneous Bed and Breakfast Hotel and Spa[quotation mark]. You are above the buildings here, and you realize that without any sort of visual feedback to restrain your actions, you must have climbed up almost forty feet. Your head swims. You hope you can climb back down without killing yourself.[no line break][or]You see nothing around you but a bright, hazy sky. You are relieved not to be able to see how far up you are, though.[no line break][or]You cling for dear life to the top of a green metal pole, just above rooftop level. The sky is clear and with your blurry vision, everything beyond the pole is a bright, glowing haze.[no line break][stopping]"; 

In the Poletop is a supporter called the top of the pole. The description of the the top of the pole is "The top of the pole is a bit smaller in circumerference than the base, and there are no signs up this high." The top of the pole is not fuzzy.

Instead of climbing the top of the pole, try going down.

To plummet: 
	change the endgame to jumped;
	end the game in death.

Instead of jumping when the location is poletop:
	say "You cast yourself back from the pole and enjoy several seconds of freefall.  [onTheWayDown]";
	plummet.
	
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
		

Chapter Limbo

[A place for offstage stuff]

Limbo is a room.

Book 3 Characters

Chapter Marv

The player is Marv Spindle. Marv Spindle is a man in the Ophthalmology Office. Marv Spindle can be dilated. Marv Spindle is not dilated.

Chapter mangoFONE

Amelia is a woman. Understand "phone","mango","fone","mangofone","cell" or "cellular" as Amelia. The printed name of Amelia is "your mangoFONE". Marv Spindle carries Amelia. The description of Amelia is "[one of]Cut from a single, flawless crystal of lab-grown Obsidian and no doubt polished by countless inadequately paid laborers to a brilliant shine, the pulsing orange glow of the prototype mangoFONE's single button is hypnotic[or]Your beloved mangoFONE, Amelia. It[apostrophe]s single orange button glows invitingly[stopping]." Amelia can be shown-to-Trevor. Amelia is not shown-to-Trevor. Amelia can be message-played. Amelia is not message-played. Amelia is not fuzzy. Amelia can be lit. Amelia is not lit.

The button is part of Amelia. The description of the button is "[one of]The button pulses on and off, on and off, a deep, deep orange glow. So pretty. So hypnotic[or]The shiny button draws you in with its rhythmic pulsing, a comforting, warm orange glow that makes you feel content. Tension melts out of you as you sink deeper into its welcoming throb. Deeper, and deeper[or]You caress the beautiful orange button and let the pleasant orange light shine warmly on your face. Your attention fixes on the light, its singular glow fills your vision and displaces all other interests. You stare into the burning heart of a pulsing nebula, filled with the majestic beauty of creation, and unable to look away. Everything else feels remote and unconnected, the phone is everything[or]You feel your soul slipping away into the embracing glow of the mangoFONE[or]The phone now owns your soul[or]For cripes sake, it’s just a button. An amazingly well designed button, but a button nonetheless[or]A faintly pulsing orange glow, almost imperceptibly raised above phone's glassy surface[stopping]." The button is not fuzzy.

Instead of giving Amelia to someone:
	say "No, you swore up and down to Amy's dad, Istvan Boulot, that you wouldn[apostrophe]t let the prototype phone out of your hands for even a moment."
	
Instead of throwing, dropping, or attacking Amelia:
	say "[hyperbole]";
	
Instead of eating Amelia:
	say "It[apostrophe]s not that kind of mango."
	
Instead of pushing the button:
	say "You press the mangoFONE[apostrophe]s button and it speaks, [quotation mark][voiceCommandPrompt][quotation mark][one of][paragraph break][quotation mark]That[apostrophe]s kind of, um, strange, isn[apostrophe]t it, Mr. Spindle -- I mean, Marv -- that it has the same name as my cousin?[quotation mark] asks Trevor.[paragraph break][quotation mark]I guess,[quotation mark] you reply. [quotation mark]I've had Amy so much on my mind that I couldn't think of anything else when I was setting up the phone.[quotation mark][paragraph break][quotation mark]Golly. The phone even sounds like Amy.[quotation mark][paragraph break][quotation mark]I guess it does at that. I'd never really noticed.[quotation mark][or][stopping][paragraph break]".
	
Instead of asking Amelia about something, say "[lackOfPhoneReply]".
Instead of telling Amelia about something, say "[lackOfPhoneReply]".
Instead of showing something to Amelia, say "[lackOfPhoneReply]".

Chapter Igneous

Professor Igneous is a man in the Factory. He is alive. 

Chapter Giblets

Doctor Giblets is a man in the Ophthalmology Office. 

Chapter Trevor

Trevor is a man in the Ophthalmology Office. Understand "Trev" as Trevor.

Book 4 Tables and Boxed Text

Section Tables

Table of PreChart
turnNumber		canned-text
3		"[quotation mark]Thanks for opening up on a Sunday.  I feel like such a bozo for sitting on my glasses the day of the rehearsal... I[apostrophe]ve just been so jet-lagged since flying in from Hawaii.[quotation mark] You would palm your face, but the refractor is in the way.[paragraph break][quotation mark]Consider it a wedding gift! Trevor, would you get the atropine drops? No sense in doing an eye exam halfway.[quotation mark][paragraph break][quotation mark]Sure, pop. As you always say, the funduscopic exam is what separates the ophthalmologists from the optometrists.[quotation mark][paragraph break][quotation mark]Indeed it is, son. Indeed it is.[quotation mark]"
4		"Pop? Who says pop?"
6		"[quotation mark]Let[apostrophe]s try to figure out what kind of prescription you need. We can grind the lenses this morning and have Trevor run them over to the hotel in time for the rehearsal. What time did you say rehearsal is?[quotation mark][paragraph break]You checked your mangoFONE[apostrophe]s calendar just before the eye appointment, so you say [quotation mark]It[apostrophe]s at five, and the hotel is downtown -- I should have plenty of time to get there.[quotation mark][paragraph break]Fine, fine. Just look at the eye chart and read the third line down.[quotation mark]"

Table of PostChart
turnNumber	canned-text
1	 "[quotation mark]Marv, we should get on with this exam. Trevor -- hand me those drops, would you? Thanks.[quotation mark][paragraph break][quotation mark]Doctor Giblets leans your head back, [quotation mark]I[apostrophe]m going to put these drops in your eyes as part of the exam. Try not to blink.[quotation mark] You try, but you blink anyhow and feel the coolness on your eye lashes.[paragraph break][quotation mark]This will dilate your pupils, so I can do a better exam of your retina.[quotation mark]"
3	"Doctor Giblets shines a bright white light first in your left eye, and then in your right eye."
4	"Doctor Giblets hums a song to himself, and mumbles some of the words absently, while adjusting his instruments, [quotation mark]waiting for the dinner bell, dinner bell, dinner bell ring![quotation mark]"
6	"[quotation mark]BRINK! BRINK![quotation mark] The phone rings with the tone that indicates a text message has just arrived from your fiancée."
7	"[quotation mark]Much better, much better,[quotation mark] notes Doctor Giblets, who seems satisfied with the way the eye exam is going."
9	"[quotation mark]See that, Trevor?[quotation mark] Doctor Giblets pulls Trevor over to where he is sitting, performing the examination.[paragraph break][quotation mark]What? The throbbing red thing?[quotation mark][paragraph break][quotation mark]Is something the matter?[quotation mark] you ask with concern.[paragraph break][quotation mark]No, no,[quotation mark] reassures Doctor Giblets with a nervous laugh. [quotation mark]Just pointing out a normal variation to Trevor.[quotation mark]"
12	"[quotation mark]Try not to move, Marv.[quotation mark] Doctor Giblets does something that half-tickles and half-irritates your eyes. You try to hold still, but your eyes tear."



Understand "phone" or "mangofone" or "mangophone" or "Amelia" or "cell" or "cellular" or "cell phone" or "cellular phone" as "[phone]".

Understand "me" or "myself" or "Marv" or "Marvin" or "Marvin Spindle" or "Marv Spindle" or "Spindle" as "[moi]".

Table of OphthoAsking
topic		ophtho-text
"[phone]"		"[askPhone]"
"mangoIndustries"		"[askMangoIndustries]"
"music"		"[askMusic]"
"girls"		"[askGirls]"
"bike" or "bicycle"		"[askBike]"
"Istvan" or "Istvan Boulot"		"[askIstvan]"
"Amy" or "fiancee" or "fiancée"		"[askAmy]"
"Doctor" or "Giblets" or "Doctor Giblets"		"[askGiblets]"
"Trevor" or "Trev" or "Trevor Giblets"		"[askTrevor]"
"eye chart" or "chart"		"[askEyeChart]"
"refractor"		"[askRefractor]"
"atropine"		"[askAtropine]"
"rehearsal" 		"[askRehearsal]"
"office" or "ophthalmology office"		"[askOffice]"
"ophthalmology"		"[askOphthalmology]"
"himself"		"[askHimselfOphtho]"
		

Table of OphthoTelling
topic		ophtho-text
"[phone]"		"[tellPhone]"
"Amy" or "Amy Boulot"		"[tellAmy]"
"hawaii"		"[tellHawaii]"
"astronomy" or "nasa"		"[tellAstronomy]"
"observatory" or "Mauna Kea"		"[tellObservatory]"
"Istvan" or "Istvan Boulot"		"[tellIstvan]"
"glasses"		"[tellGlasses]"
"rehearsal"		"[tellRehearsal]"
"engagement"		"[tellEngagement]"
"wedding" or "wedding plans" or "plans"		"[tellPlans]"
"[moi]"		"[tellMoi]"

Table of BeforeIKillYou
turnNumber	rant
2	"As your eye accomodates to the light, you take notice of the tall gentleman in a white lab coat who stands in a plexiglass control booth in the far corner of the room. It seems that he notices you as well.[paragraph break][quotation mark]Ah, my archnemesis, Mr. Jeremy Flack. I see you[apostrophe]ve had some plastic surgery. Very nice work, but perhaps a bit squinty around the eyes.[quotation mark][paragraph break][quotation mark]This isn[apostrophe]t my wedding rehearsal?[quotation mark] you ask, too stunned, worried and jet-lagged to fully absorb everything that happened since leaving Doctor Giblets[apostrophe] office.  [quotation mark]Where is the rehearsal? I[apostrophe]m going to be late.[quotation mark][paragraph break][quotation mark]Yes, Mr. Flack. Humor, always humor. Well... let’s see how funny you find it when you are vaporized by my robot warrior![quotation mark][paragraph break][quotation mark]Wait...what? Not the rehearsal?[quotation mark] you stammer."
3		"[quotation mark]I see that you followed my cunning plan to lure you to your doom, Mr. Flack.[quotation mark][paragraph break][quotation mark]But, before you die, I want you to see what I have created. I think you will agree that it is sheer elegance in its simplicity.[quotation mark][paragraph break]Igneous presses a button and you hear a beep. The robot rotates counterclockwise."
4		"[quotation mark]Behold the prototype kumquat-5000 robot warrior. At this point, I would ordinarily claim it is the ultimate in cybernetic technology, but among my many positive character traits, is a certain earnest honesty, as I[apostrophe]m certain you have come to appreciate. Humility, not so much, I[apostrophe]ll admit, but honesty? Yes, in spades.[quotation mark][paragraph break][quotation mark]It is not yet the ultimate killing machine because it lacks one critical component. As you Americans might say, it is like Fried Kentucky Chicken with only ten secret spices, yes? I need only add a superquantum AI controller, and the robot will become my entirely  self-sufficient but unconditionally loyal servant.[quotation mark]"
5		"[quotation mark]For now, I will have to content myself with directly controlling the kumquat-5000, I call him Lenny, as that name seems to resonate with me. I’m not sure why. I just like the sound of it. Anyhow, as I was saying... to controlling Lenny with an ingenious invention of mine that couples a matrix-scanned keyboard with two multiplexed sine wave oscillators. By merely pressing a button within my Plexiglass®-enclosed command booth, I can control his every action...the first of which will be to kill you. Now, please do cooperate and remain still, so I can get on with the day [apostrophe]s business of tracking down the aforementioned controller unit.[quotation mark]"
6		"[quotation mark]Sorry for this aside, but henchmen remind me that I am legally obligated to mention that Plexiglass®  is a registered trademark of Altuglas International, for its polymethylmethacrylate resin and sheet products sold in the North and Latin America, whereas it is sold under the brand name Altuglas® in Asia/Pacific, Europe, Africa and the Middle East. Fine. Now, back to killing you.[quotation mark]"
7		"[quotation mark]I hope you appreciate the irony. Your country will be the unwitting accomplice to my rise to power. You see, Lenny is not the only one of these robots. No, there are thousands of them (or, rather, there will be, when I have finished putting all the parts together). And where did they come from? I will tell you, as you are a most patient listener, even in these trying circumstances that will lead to your death.[quotation mark]"
8		"[quotation mark]I bought Lenny and his kin from Detroit. From the rusting, derelict auto industry at the rotting core of your declining nation marches forth my mechanized army! I bought them for pennies on the dollar, as banks foreclosed on their properties and forced them to bankruptcy. As for the hardware and software designs, my horde of rabid intellectual property lawyers have made short work of the last shreds of your country’s engineering industry. Yes, with my coalition of bankers, patent attorneys, big media executives, and the congressmen they own, I have created an unstoppable circle of evil! And now, prepare to suffer at the hands of your own slothful lack of foresight and vigilance![quotation mark]"
9		"[quotation mark]Pardon me for a moment, all this ranting is drying out my throat. I just need a sip of water....There, that[apostrophe]s better.  Difficult business you know, but murder without monologue is like...well... it isn’t pleasant.[quotation mark]"
10		"[quotation mark]Now, where were we? Ultimate warrior...irony...downfall of American industry...ah yes, we were talking about your demise -- the first victim in a wave of necessary deaths that will ripple out from both your nation’s capital and from my base in West Ispharistan. Surely, you realize that I, Professor Igneous, am behind the war in Ispharistan -- I have studiously cultivated two decades of conflict to hone my mercenaries there to a fine edge. And yes, I am also behind the Québecois. That didn[apostrophe]t work out as explosively as one would have wished.[quotation mark]"
11		"[quotation mark]Enough about me, let us talk about you (rather, I will talk and you will cling desperately to life).[quotation mark][paragraph break][quotation mark]I thought I had done you in back in Rhodesia, but of course you managed to survive with your rebreather. And then, in the Soviet Union, I assumed you had been lethally irradiated, but lead underwear was something I had not taken into consideration. Czechoslovakia, Yugoslavia...all the same story. You survived longer than the country did in each case. Well, I have learnt my lesson. This time, I will kill you with my own...or rather, Lenny[apostrophe]s own...hands, or rather, laser. That is to say, that Lenny will kill you with his laser, and I will transitively kill you because I control Lenny.[quotation mark]"
12		"[quotation mark]It is not that I feel that I have anything to prove. I do not, you know. Not that it would matter. Not after I have taken over the world.[quotation mark]"
13		"[quotation mark]Would you please stop working against me? I will win, you know, and you are merely delaying the inevitable and making me late for every other appointment. You know how it starts: the first kill of the day runs over fifteen minutes, and one thinks it is no big, deal, but then the next one drags on, and soon you are hours behind and it is difficult to catch up. The hours get longer, one has less time for family and hobbies, sleep suffers, the quality of one’s work goes down. No one needs that kind of stress.[quotation mark]"
14		"[quotation mark]Yes, it is a stressful life, but it will all be worth it when I have the world at its knees. None of the others could shoulder the responsibility: not Moustaffa the Knife, not Edgar the Spyder (yes, I know I had promised not to kill Spyder, but I loathe ineptness). They were dabblers. They wanted to take over the world, but were only willing to go so far. Well, world domination is not a part time job. They all want to be very clever, and make a name for themselves, but the secret to effective world domination is consistency. Take over a little bit of the world each day, and before you know it, it’s in your back pocket. That is the theory, at least.[quotation mark]"
15		"[quotation mark]I can see that you are rather enjoying this, and much as I do enjoy sporting reparté, I need to get down to business. So, no more chatter. Enough of entertaining you with my witty remarks and enlightening insights. From here out, it is cold, efficient, and most of all, silent, murder.[quotation mark]"
16		"[quotation mark]Absolutely silent.[quotation mark]"
17		"[quotation mark]Pristine silence.[quotation mark]"
19		"[quotation mark]It is quiet in here, isn’t it? I mean, aside from the sound of the conveyor belts and the robot and the lasers, this room has a very hard sound to it. Nothing absorb the sound, just a lot of echoes, particularly with the high-pitched noises. Maybe I should install a drapery.[quotation mark]"
20		"[quotation mark]A drapery would hold down on heating costs as well, as would a carpet, but I[apostrophe]ve held off on the carpet because Lenny runs about on small wheels, and I got tired of picking carpet fibres from them and his drive belt.[quotation mark][paragraph break][quotation mark]After you are dead, I am hoping to convert this building to a quaint bed and breakfast. Perhaps four bedrooms done up in an early colonial theme. I[apostrophe]d drain the acid from the basement vat and make a spa of it.[quotation mark]"
21		"[quotation mark]This is far longer than I had expected you to survive. Very well, you have made your point -- you are a most worthy adversary. There. Are you happy? I have said it. Honor is served. Now, would you please allow me to kill you? I shalln[apostrophe]t say please again. I[apostrophe]m getting quite cross, you know.[quotation mark]"
22		"[quotation mark]Just so you know, I am now turning Lenny[apostrophe]s laser power output down from [apostrophe]vaporize[apostrophe] to [apostrophe]kill[apostrophe] as a reflection of my state of irritation. Rather than blast you to oblivion and move on, I have decided to have you stuffed and mounted in my living room in a comical, but demeaning pose. Not only will you soon be dead, but ridiculed, and no doubt used to hold empty glasses and plates at my dinner parties. Just you consider that.[quotation mark]"
23		"[quotation mark]The next robot I build will have *ten* lasers and make a much quicker job of it. Ten lasers, one on each arm. And the arms will not all face forward.[quotation mark]" 
24		"[quotation mark]Lenny, do get on with it. I have to be somewhere.[quotation mark]"
25		"[quotation mark]You know, Jeremy, I am your father.[quotation mark][paragraph break][quotation mark]Yes, you know it to be true. Search your feelings. Join me and we can rule the galaxy together as father and son![quotation mark][paragraph break][quotation mark]Nah. Just kidding.[quotation mark]"
26		"[quotation mark]A strong leader is not afraid of injecting a little levity in to every day life. It keeps people sharp.[quotation mark][paragraph break][quotation mark]I often kid around with my minions, and I am told that they find my humour refreshing, a welcome bit of entertainment in the workaday business of dominating the human race.[quotation mark]"
27		"[quotation mark]Note to self: ten lasers, multiple directions, smarter robot, able to move well on carpet.[quotation mark]"
28		"Professor Igneous reaches into his labcoat and produces a cell phone. A feature phone, you note with an air of superiority. One like your grandmother uses.[paragraph break][quotation mark]Excuse me, I have to take this...[quotation mark][paragraph break][quotation mark]Hello? Sue?[quotation mark][paragraph break][quotation mark]Yes, it is I, Professor Igneous.[quotation mark][paragraph break][quotation mark] Sure, this is a fine time.[quotation mark][paragraph break][quotation mark]No, I am still at work. I[apostrophe]m locked in a robot battle to the death with you-know-who.[quotation mark]"
29		"[quotation mark]Quite a while, actually. I was hoping he[apostrophe]d die very quickly.[quotation mark][paragraph break][quotation mark]No, I am quite certain I can finish him off. I should say he[apostrophe]s in the throws of death even now as we speak.[quotation mark][paragraph break][quotation mark]No, no, I shall be fine. No need. Thanks you for the offer, though, my love.[quotation mark][paragraph break][quotation mark]Got to run. Good luck getting the AI controller. See you tonight! Bye.[quotation mark]"
30		"[quotation mark]Nag, nag, nag. I suppose she thinks she could kill you faster without a kumquat-5000 death robot? I should say not.[quotation mark][paragraph break][quotation mark]Still, she is stunningly beautiful, statuesque woman, and knows what she wants. Me, for example. She says that she loves me for my incomparable intellect, which  must unquestionably be the case. While many would be attracted to my vast commercial resources and deathgrip on global power, she just likes me for who I am.[quotation mark]"
31		"[quotation mark]I have never been good with woman. Please, don[apostrophe]t misunderstand me. I am not talking sexual prowess. I have no doubt of my capabilities in that arena, should it ever come to that, but I have never been comfortable talking with women. I think it is because I put them on a pedastle and can not relate to them on a casual basis. When it came to building a robot, many of my colleagues advocated construction of a fembot, but first of all, that is overdone, and secondly, it objectifies both women and robots.[quotation mark]"
35		"[quotation mark]I am getting carpal tunnel syndrome from pressing the buttons. Next time, I use a dvorak keyboard.[quotation mark]"




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

Chapter Boxed Text`

To say Messages:
	if messageAlert is true:
		say "MESSAGE".
		
To say Updates:
	if updated is true:
		say "UPDATED";
		now updated is false.

To say openingLine1:
	say "[quotation mark]Narrow the eyes a little.[quotation mark][paragraph break]Dr. Giblet[apostrophe]s son Trevor complies, gently settling the refractor on the bridge of your nose. As he pushes inward on the two halves of the instrument, the lenses align and you find yourself staring through the device at a blurry eye chart.[paragraph break]"
	
To say openingLine2:
	say "[paragraph break][quotation mark]Marv, Do you want to get that?[quotation mark] asks Dr. Giblets.[paragraph break][quotation mark]Nope. That sound means my phone just updated itself. It does that like every few hours -- the price of living on the bleeding edge![quotation mark][paragraph break]"
	
To say aboutText:
	say "This story is part of the People's Republic of Interactive Fiction's tribute to They Might be Giants on the occasion of the 20th anniversary of their landmark album, Apollo 18.  Each work in this collection is based on one of the songs on this album, the full collection can be downloaded from <link to PR-IF website/collection>.[paragraph break]For instructions on how to play, type [quotation mark]help[quotation mark]."
	
To say geeWhiz:
	say "[quotation mark]Gee whiz, Mr. Spindle, I've never seen a phone like that.[quotation mark][paragraph break][quotation mark]Please, Trevor, call me Marv -- we[apostrophe]re going to be cousin-in-laws! And yes, it is a special phone -- I guess Amy's dad already considers me to be in the family, to let me try out one of the few mangoFONE prototypes. I think he said it has some kind of super high-end quantum processor stuff inside -- sounded impressive to me, but what do I know about phones? So far I[apostrophe]ve just used it for text messages.[quotation mark][paragraph break]"
	
To say hyperbole:
	say "[one of]Not in a million years. It[apostrophe]s a next generation mangoFone! The sweetheart hardware of the technopaparrazi, the envy of all gageteers, the economic cornerstone of US economy two point oh, the technological underpinning of Stephenson[apostrophe]s Diamond Age, the catalyst of Kurzweil[apostrophe]s Singularity, the final step to the realization of Teilhard[apostrophe]s Omega Point.[paragraph break]To say that it is a mere phone, is to say that infinity is a number somewhat larger than six[or]You would rather walk blindly into heavy traffic[or]Better that you should throw yourself in front of a bus[or]You would rather face a firing squad of evil robots with lasers for arms[or]You[apostrophe]d really rather not[stopping].[paragraph break]"
	
To say lackOfPhoneReply:
	say "The phone does not respond."
	
To say voiceCommandPrompt:
	say "Say a voice command in the form of [bold type]Amelia, command[roman type].[no line break]".
	
To say errorPrompt:
	say "Your mangoFONE flashes red, and then says, [quotation mark]Error. [voiceCommandPrompt][quotation mark][paragraph break]".
	
To say tutorPrompt:
	say "For a list of available functions, you can say [bold type]Amelia, tutor[roman type].[no line break]".
	
To say noNetwork:
	say "[paragraph break]A moment later, however, the phone turns marroon, and warns, [quotation mark]No SIM card is installed. No phone network is available.[quotation mark][one of][paragraph break]You realize that in your haste to pack for the trip to Washington, DC, you didn’t move your SIM card from your old phone to the mangoFONE that Istvan gave you. Guess that explains the lack of network bars.[no line break][or][stopping][paragraph break]".
	
To say noSelfTalking:
	say "You have never talked to yourself, and you are not about to start now."
	
To say hasturedText:
	say "Consumed by ancient evil."
	
To say wonText:
	say "WonText."
	
To say laseredText:
	say "Killed by Lenny."
	
To say drainedText:
	say "drained text…dead…at end of life without Amy, all because you phone battery gave out."
	
To say webbedText:
	say "Sliced and diced by a laser web.";
	
To say onTheWayDown:
	say "You read several traffic signs on the way down, including some that you had missed earlier. The whistling wind is replaced by a crunching sound and sudden darkness."
	
To say jumpedText:
	say "Defeated by Gravity."
	
To say AmeliaPowerDown:
	say "phone shuts down…now."
 
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
	say "[quotation mark][if the noun is Giblets]Istvan[apostrophe]s company makes mostly consumer electronics, but not just cheap throwaway gizmos! Nope, every product is built to military spec. It[apostrophe]s just how he does business[otherwise]Dad[apostrophe]s the one to ask about that sort of stuff. Mostly, I[apostrophe]m into music, girls and my bike[end if].[quotation mark][paragraph break]".
	
To say askMusic:
	say "[quotation mark][if the noun is Giblets]I prefer They Might Be Giants[otherwise][one of]Perry Como[or]Mario Lanza[or]Nat King Cole[or]Tony Bennett[or]Elvis Presley[or]Chuck Berry[or]Jerry Lee Lewis[or]Johnny Cash[or]Ella Fitzgerald[or]Dean Martin[or]Doris Day[or]Frank Sinatra[or]Connie Francis[or]Jim Reeves[or]Cliff Richard[at random] sure is [one of]swell[or]spiff[or]snazzy[or]the cat's potatoes[at random][end if].[quotation mark][paragraph break]".
	
To say randomGirl:
	say "[one of]Jenny[or]Jeanine[or]Julie[or]Jeanette[or]Jeanie[or]Janine[or]Jo-Jo[or]JoAnne[or]Julianne[or]Janet[at random]".
	
To say askGirls:
	say "[quotation mark][if the noun is Giblets]That[apostrophe]s more Trevor[apostrophe]s territory[otherwise][one of]I[apostrophe]ve had my eye on[or]I think like[or]I have been longing after[or]I want to date[or]I might have a crush on[or]I want to go to the movies with[at random] [randomGirl]. Unfortunately, I haven't quite worked up the nerve to ask her out[end if].[quotation mark][paragraph break]".
	
To say askBike:
	say "[quotation mark][if the noun is Giblets]Trevor sure has put a lot of work into that bike of his -- it can practically drive itself[otherwise]It[apostrophe]s the latest -- three speeds! I painted it myself: bright red. You must have seen it when you came in[end if].[quotation mark][paragraph break]".
	
To say askIstvan:
	say "[quotation mark][if the noun is Giblets]He was a strange child, but I'm quite proud of my brother and his company, mangoIndustries[otherwise]I[apostrophe]m sure he[apostrophe] will make a great father-in-law. The always say what a tough boss he is, but Amy says that her dad is only like that at work[end if].[quotation mark][paragraph break]".
	
To say askAmy:
	say "askAmy".
	
To say askTrevor:
	say "[if the noun is Giblets]Doctor Giblets says, [quotation mark]He[apostrophe]s a good kid, and big help around the office. Who knows, some day, maybe he[apostrophe]ll grow up to be an ophthomologist like his dad![quotation mark] Somewhat at odds with his chipper disposition, he leans in and whispers in a more serious tone, [quotation mark]Though...he has been acting odd lately. Not quite himself[otherwise]I[apostrophe]m the youngest of Amy[apostrophe]s cousins. I haven[apostrophe]t seen her much since she moved to Arecibo, and then out to Hawaii. I help dad out in the Ophtho office over the summers[end if].[quotation mark][paragraph break]".
	
To say askGiblets:
	say "[if the noun is Giblets]Doctor Giblets takes a break for a moment from adjusting the complicated ophthalmological equipment, and says, [quotation mark]Istvan and I grew up on the West Coast, but we both moved here in our twenties. I opened by Ophthalmology Office here in Georgetown, and Istvan found it convenient to base his business here because of the all the government contracting that mangoIndustries undertakes[otherwise]From somewhere in the darkness, Trevor answers, [quotation mark]Pop? Pop is swell[end if].[quotation mark][paragraph break]”.
	
To say askEyeChart:
	say "askEyeChart".
	
To say askRefractor:
	say "askRefractor".
	
To say askAtropine:
	say "askAtropine".
	
To say askRehearsal:
	say "askRehearsal".
	
To say askOffice:
	say "askOffice".
	
To say askOphthalmology:
	say "askOphthalmology".
	
To say askHimselfOphtho:
	if the noun is Doctor Giblets:
		say askGiblets;
	otherwise:
		say askTrevor.
	
To say tellPhone:
	say "tellPhone".
	
To say tellAmy:
	say "tellAmy".
	
To say tellHawaii:
	say "tellHawaii".
	
To say tellAstronomy:
	say "tellAstronomy".
	
To say tellObservatory:
	say "tellObservatory".
	
To say tellIstvan:
	say "tellIstvan"
	
To say tellGlasses:
	say "tellGlasses".
	
To say tellRehearsal:
	say "tellRehearsal".
	
To say tellEngagement:
	say "tellEngagement".
	
To say tellPlans:
	say "tellPlans".
	
To say tellMoi:
	say "tellMoi".
	
To say youAreLate:
	 say "[quotation mark]High muff, this is your finance day, a meal ear. Everyone is here and we[apostrophe]re just setting down two and early lunch. Don[apostrophe]t fork head the reversal starts at won. Hope you don[apostrophe]t half a lard time finding the oat hell. Love yew![quotation mark]"

To say OMGLate:
	say "The words roll back and forth in your mind as you puzzle out the transcript: starts at won... At one? The rehearsal starts at one? You think back to the day you very methodically entered the appointment, back at the Mauna Kea Observatory -- OMG!!! The time zones. You forgot the time zone adjustment! The rehearsal is right after lunch![paragraph break]You bound out of the exam chair, slamming your head some expensive equipment, but you don[apostrophe]t care. In your panicked state, all you can picture in the darkness is the near future scene in which you offer lame excuses to your former fiancée, while friends and family look on with pity and disgust. You race for the door, screaming, [quotation mark]I[apostrophe]ve got to get to the rehearsal right now or my life is not worth living![quotation mark][paragraph break]Doctor Giblets yells after you, [quotation mark]Hey! Those drops are still in your eyes -- don[apostrophe]t try to operate any motor vehicle for at least an hour![quotation mark][paragraph break]Trevor adds, [quotation mark]Take my bike, it[apostrophe]s right outside! I[apostrophe]ll bring your glasses as soon as they are made![quotation mark]"
	
To say revolvingDoor:
	say "someone slams into it, spinning the door and ejecting you into the dim hotel lobby. Now the rug burn on your left leg matches the road burn on the right one. You are a mess, but at least you won’t be late for the rehearsal";
	

Book 5  Scenes
 
Chapter Eye Exam

Eye Exam is a scene. Eye Exam begins when play begins. Eye Exam ends when the player is in Wisconsin Avenue.

After examining Amelia for the first time during Eye Exam:
	try showing Amelia to Trevor.
		
Instead of asking someone (called the reporter) about a topic listed in the Table of OphthoAsking during the Eye Exam:
	if the reporter is Amelia:
		continue the action;
	otherwise:
		say "[ophtho-text entry]".
		
Instead of telling someone (called the auditor) about a topic listed in the Table of OphthoTelling during the Eye Exam:
	if the auditor is Amelia:
		continue the action;
	otherwise:
		say "[ophtho-text entry]".
		
Instead of showing Amelia to someone (called the spectator) during Eye Exam:
	try asking the spectator about "amelia".
	
Every turn during Eye Exam:
	if the eye chart is not read:
		if the turnCounter is less than 7:
			if there is a turnNumber of turnCounter in the Table of PreChart:
				 say "[the canned-text corresponding to the turnNumber of turnCounter in the Table of PreChart][paragraph break]";
		otherwise:
			if a random chance of one in five succeeds:
				say "A randomPhraseOfOcularEncouragement.";	
	otherwise:
		if Amelia is not message-played:
			if the turnCounter is less than 13:
				if there is a turnNumber of turnCounter in the Table of PostChart:
					 say "[the canned-text corresponding to the turnNumber of turnCounter in the Table of PostChart][paragraph break]";
				if the turnCounter is 6:
					now messageAlert is true;
					change the currentMessage to "[youAreLate]";
			otherwise:
				if a random chance of one in five succeeds:
					say "A randomPhraseOfOcularTimeConsumption.";
		otherwise:
			if the turnCounter is 2:
				say "[OMGLate][paragraph break]";
				move the player to Wisconsin Avenue.
					
	
Chapter Exterior

Exterior is a scene. Exterior begins when Eye Exam ends. Exterior ends when the player is in the Factory.

Instead of going a direction (called thither) when Exterior is happening:
	if thither is up or thither is down:
		continue the action;
	if the location is Wisconsin Avenue:
		if the bike does not enclose the player:
			say "[one of ]It[apostrophe]s a long way downtown, walking would take too long[or]There must be a faster way then schlepping down there on foot[or]You are desperate enough to try anything to get to the wedding rehearsal, but walking (even running, you suppose) wouldn't get you there in time[or]Walking is out of the question. The clock is ticking[stopping].";
			the rule succeeds;
		otherwise:[on the bike]
			if gpsBars is zero:[but amelia's travel function not activated]
				say "[one of]You have been in Washington, DC for NASA meetings before, but you don’t know your way around[or]You know your way back and forth to National, Dulles and BWI airports from the metro system, but above ground, you are hopelessly lost[or]All of these roads look the same to you. Blurry[or]You are not sure which way to go[stopping].";
	otherwise if the location is CornerNW:
		say "[one of]You are not very familiar with this area, but even on a Sunday, there is a lot of traffic, and you are not keen to get run over again[or]You had enough trouble finding this place, you are reluctant to wander off blindly. Literally[or]You are right outside the hotel. Amy is pretty understanding, but you would not want to explain that you nearly died getting here and then, just for the heck of it, decided to go sight-seeing in the neighborhood, while she waited nervously inside entertaining all of your guests at the wedding rehearsal[or]The only place you are interested in going right now is into the hotel[stopping]." 
	
			
Every turn during Exterior:
	if gpsBars is greater than zero:
		if location is Wisconsin Avenue:
			say "Your mangoFONE dutifully computes your location and directs you as you get on the bike and ride down the block. You can’t quite make out the traffic signs, but you are thankful that at least the traffic lights are green as you whiz through intersections along Wisconsin Avenue. You turn left on to M Street and weave between the slow moving lines of cars, full of confidence that your phone will get you to the rehearsal on time.[paragraph break]All things considered, you are not terribly surprised when the number 30 bus clips you, crushing the bike under its massive wheels. You roll clear, tucking your body protectively around the mangoFONE, which soldiers on unphased, [quotation mark]Rerouting...rerouting…[quotation mark][paragraph break][quotation mark]Zambozay![quotation mark] Shouts the bus driver, as he clambers down to assist you. [quotation mark]I nearly flattened you like a monomolecular sheet of graphene! Sorry about the bike. I guess the least I can do is offer you a ride[quotation mark].  You are so happy to have a ride to the rehearsal that you ignore your torn clothing, roadburned right leg, and dislocated left shoulder. Moments later, the bus drops you off right outside a hotel at 4th and I Street.";
			move the player to CornerNW;
		otherwise:
			say "Turquoise lines criss-cross the surface of your mangoFONE, which announces, [quotation mark]You have reached your destination, deactivating navigation.[quotation mark][paragraph break]";
			change gpsBars to zero.
			


Chapter Cunning Plan

Cunning Plan is a scene. Cunning Plan begins when the player is in the Factory. Cunning Plan ends when Professor Igneous is dead.

When Cunning Plan begins:
	change the turnCounter to 0.
	
Every turn during Cunning Plan:
	if there is a turnNumber of turnCounter in the Table of BeforeIKillYou:
		say "[the rant corresponding to the turnNumber of turnCounter in the Table of BeforeIKillYou][paragraph break]".
		
Before going a direction (called the way) during cunning plan:
	if the way is north or the way is northwest or the way is northeast:
		say "Putting aside for a moment your deep understanding of high energy physics and everything you have learned since kindergarten about cause and effect, you step forward into the sizzling ultraviolet laser beam, which cuts through you so effortlessly that your head tumbles forward, sliced clear from the shoulders, and your last sight is various parts of your body falling in graceful arcs towards the floor.";
		now the endgame is webbed;
		end the game in death;
	otherwise:
		say "You can move back and forth a bit within the narrow area of the room to the south of the ultraviolet laser web, but it would be dangerous to move northwards.";
		stop the action.
	

	
	
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
			say "[laseredText]";
		-- drained:
			say "[drainedText]";
		-- webbed:
			say "[webbedText]";
		-- jumped:
			say "[jumpedText]".
		
						
Rule for amusing a victorious player:
say "Amusing stuff".
