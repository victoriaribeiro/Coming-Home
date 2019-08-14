"Coming Home" by Cecílio, João, Paulo e Vitória

Chapter 1 Awakening

Section 1.1 The Staircase

A staircase is a kind of door. A staircase is usually open. A staircase is seldom openable. A staircase is scenery.
Instead of climbing a staircase: 
    try entering the noun. 

Section 1.2 Large Bedroom

[Variables]
BedroomLightOn is a truth state that varies. BedroomLightOn is false.

Large Bedroom is a room. "A large bedroom with a queen size bed at its center, with one bedside lamp at the right of the bed. 
[if BedroomLightOn is false]Its really dark, the only light on the room is the faint light from the window. [otherwise] You can see a big room, and a body is laid down on the ground."

Pile of clothes is in Large Bedroom. The description of Pile of Clothes is "A pile of dirty clothes. It stinks of sweat and alcohol.".

Picture Portrait is in Large Bedroom. The description of Picture Portrait is "You can see you in a party with some people, with a blonde woman at your side. You look really happy and satisfied to be there."

Bedside lamp is in Large Bedroom. The description is "A lamp used to give some minor light on the room"

Car key is a object. The description is "It looks like a key from a car. Perhaps i could use it later?".
Driver License is a object. The description is "A Driver License from the victim. Her name is Katherine.".
Woman Phone is a object. The description is "A smartphone from the woman. It's locked."

Mirror is a object. Mirror is in Large Bedroom. The description is "[if BedroomLightOn is true] You look like shit. Your dark circles are huge and visibly tired. On your shirt, and hands you see dried blood marks. [otherwise] You cannot see yourself in this darkness."


Woman bag is a container. The description is "You find some items of common use by woman, a key, a phone and a driver license". 

Car key, Driver License, Woman Phone are in the woman bag.

Dead body is an object. The description is "[if we have examined the Picture Portrait] A dead body of a blonde woman. It's the same woman in the portrait. You feel a strange and intense sadness. You look around and see more pictures of her. She was really important to you. There's something behind her. [otherwise]A dead body of a blonde woman".

After examining the Dead Body:
	if we have examined the picture portrait:
		now Woman Bag is in Large Bedroom;
		say "Looking more closely you see a woman bag near the bed";
		continue the action;
	
After examining the Bedside Lamp:
	if BedroomLightOn is false:
		say "You turn it on. After some seconds getting used to the light you can see the room more clearly, and there is a body in the ground. There's blood around the body.";
		now Dead body is in Large Bedroom;
		now BedroomLightOn is true;
		continue the action;
	otherwise:
		say "Just a Bedside lamp already turned on. Perhaps you should look around you.";
		continue the action;



Section 1.3 Living Room

[Variables]
LivingRoomLightOn is a truth state that varies. LivingRoomLightOn is false.

Living Room is a room."it's too Dark to examine".

Golden Picture Portrait  is  in Small Bedroom. The description of Golden Picture Portrait is "[if we have examined the Light Switch] You can see you, Katherine and a third man with familiar features ... He ... is your Brother ... you remembered a violent fight  on the Last Week with him".

Light Switch is in Living Room.

After examining the Light Switch:
	if LivingRoomLightOn is false:
		say "You turn it on. now you can see a room vintage ornated with  several shelds with Picture Portraits but one of then caught your eye. ";
		now Golden Picture Portrait is in Living Room;
		now LivingRoomLightOn is true;
		continue the action;
	otherwise:
		say "The Lights are still on";
		continue the action;

Chapter 2 Geography

Section 2.1 The House

Porch is a room.  
Hall is room. 

Main door is a door. It is north of Porch and south of Hall. Main door is closed and locked.
The matching key of the Main door is Main key.

LB Door is a Door. It is south of Large Bedroom and north of Upper Hall. LB Door is open and unlocked.
MB Door is a Door. It is west of Medium Bedroom and east of Upper Hall. MB Door is open and unlocked.
SB Door is a Door. It is east of Small Bedroom and west of Upper Hall. SB Door is closed and locked.
BT Door is a Door. It is north of Bathroom and south of Upper Hall. BT Door is open and unlocked.
LR Door is a Door. It is north of Hall and south of Living Room. LR Door is open and unlocked.


Living Room is a room.
Garage is a room. Garage is west of Living Room.
Kitchen is a room.  Kitchen is north of garage.
Dining Room is a room. Dining room is east of kitchen. Dining Room is north of Living Room.
Home Office is a room. Home Office is east of Living Room.
Lavabo is a room. Lavabo is east of Hall. "The lavabo needs to be cleaned."
Stairs is a staircase. It is above Hall and below Upper Hall.
Upper Hall is a room.  
Large Bedroom is a room. 
Medium Bedroom is a room.
Small Bedroom is a room.
Bathroom is a room.
Inner Bathroom is a room. Inner Bathroom is west of Large Bedroom.

First Floor is a region. The Hall, Living Room, Garage, Kitchen, Dining Room, Home Office and Lavabo are in First Floor.
Second Floor is a region. The Upper Hall, The Large Bedroom, the medium bedroom,  The Small Bedroom, The Bathroom and the Inner Bathroom are in Second Floor.

Chapter 3 Things

Section 3.1 Chairs

A chair is a kind of supporter that is enterable with carrying capacity 1. 

[Instead of entering a chair:
    try sitting the noun.]

Definition: A chair is occupied if something is on it.

Understand the command "sit" as something new.
Sitting on is an action applying to one thing.
Understand "sit on [something]" as sitting on.
understand "sit on top of [something]" as sitting on.

Check an actor sitting on a thing:
	If the noun is occupied, say "You can't sit in the [the noun], it is occupied" instead;
	If the noun is not enterable, say "You can't sit on [the noun]" instead.

Check an actor entering a thing:
	If the thing is occupied, say "You can't sit in a occupied chair" instead;

Carry out sitting on a chair:
	silently try entering the noun.

Report sitting on a chair:
	say "You feel confortable".


Section 3.1 On the Porch

Wooden chair is a chair. Wooden chair is in Porch.

Old box is a container. Old box is in Porch.

candle is a thing. string is a thing. bucket is a container.
candle, string are in Old box.

bucket is in Porch.


Chapter 4 Jogando

Section 4.1 - The awakening

Awakening is a Scene. 
Awakening begins when play begins.

The player is in Large Bedroom

When play begins:
	Say "The moonlight covers part of your arm, you wake up confused, with a big headache. You can't renember your own name and certainly had better days. ";
	
Awakening ends when we have examined the Driver License.

When Awakening ends:
	Say "After looking at the name Katherine, you begin to remember last night. You remember what happened last night.

Katherine and you were in the car arguing fiercely. The driving was dangerous as it was raining heavily. You felt a tremendous fury and tried to pull the phone from your hand. The discussion seemed to have been about the content of some message on her phone, but you don't remember for sure.

You look at Katherine's cold body beside you, and the bloodstains, but you can't remember how that happened. Had his fury gone out of control? Was it an accident?";
	
	
	