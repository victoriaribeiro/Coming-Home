"Coming Home" by Cecílio, João, Paulo e Vitória

Chapter 1 Awakening

Section 1.1 The Staircase

A staircase is a kind of door. A staircase is usually open. A staircase is seldom openable. A staircase is scenery.
Instead of climbing a staircase: 
    try entering the noun. 

Section 1.2 Large Bedroom

[Variables]
BedroomLightOn is a truth state that varies. BedroomLightOn is false.
HasCarKey is a truth state that varies. HasCarKey is false.

Large Bedroom is a room. "it's too Dark to examine".

Bedside lamp is in Large Bedroom. The description is "A lamp used to give some minor light on the room"

After examining the Bedside lamp:
	if BedroomLightOn is false:
		say "You turn it on. now you can see a large bedroom with a queen size bed at its center, with one bedside lamp at the right of the bed and a body is laid down on the ground.";
		now Pile of clothes is in Large Bedroom;
		now Picture Portrait is in Large Bedroom;
		now Dead body is in Large Bedroom;
		now BedroomLightOn is true;
		continue the action;
	otherwise:
		say "Just a Bedside lamp already turned on. Perhaps you should look around you.";
		continue the action;

Pile of clothes is in Large Bedroom. The description of Pile of Clothes is "A pile of dirty clothes. It stinks of sweat and alcohol.".

Picture Portrait is in Large Bedroom. The description of Picture Portrait is "You can see you in a party with some people, with a blonde woman at your side. You look really happy and satisfied to be there."

Driver License is a object. The description is "A Driver License from the victim. Her name is Katherine.".
Woman Phone is a object. The description is "A smartphone from the woman. It's locked."

Mirror is a object. Mirror is in Large Bedroom. The description is "[if BedroomLightOn is true] You look like shit. Your dark circles are huge and visibly tired. On your shirt, and hands you see dried blood marks. [otherwise] You cannot see yourself in this darkness."

Woman bag is a container. The description is "You find some items of common use by woman, a phone and a driver license". 

Driver License is in the woman bag.

Dead body is an object. The description is "[if we have examined the Picture Portrait] A dead body of a blonde woman. It's the same woman in the portrait. You feel a strange and intense sadness. You look around and see more pictures of her. She was really important to you. There's something behind her. [otherwise]A dead body of a blonde woman".

After examining Woman bag:
	Display the Figure of bolsa ;

After examining the Dead Body:
	if we have examined the picture portrait:
		now Woman Bag is in Large Bedroom;
		say "Looking more closely you see a woman bag near the bed";
		continue the action;
	
Section 1.3 Living Room

[Variables]
LivingRoomLightOn is a truth state that varies. LivingRoomLightOn is false.

Living Room is a room."it's too Dark to examine".

Golden Picture Portrait  is  in Small Bedroom. The description of Golden Picture Portrait is "[if we have examined the Light Switch] You can see you, Katherine and a third man with familiar features ... He ... is your Brother ... you remembered a violent fight  on the Last Week with him".

Center Table is a container and  in Small Bedroom.

Broken Picture Portraid  is in Center Table. The description of  Broken Picture Portraid  is "A Broken Picture Portraid with a photograph of the day  of you nomeation as COO of River Tech... You have a memory of  a dispute with your brother about this charge.".


Light Switch is in Living Room.

After examining the Light Switch:
	if LivingRoomLightOn is false:
		say "You turn it on. now you can see a room vintage ornated with  several shelds with Picture Portraits but one of then caught your eye. ";
		now Golden Picture Portrait is in Living Room;
		now Center Table is in Living Room;
		now LivingRoomLightOn is true;
		continue the action;
	otherwise:
		say "The Lights are still on";
		continue the action;
		
Section 1.4 Dining Room

[Variables]
DiningRoomLightOn is a truth state that varies. DiningRoomLightOn is false.

Dining Room is a room."it's too Dark to examine".

Dining Table is in Dinig Room. The description of Dining Table is "[if we have examined the Light Switch dn] The table is clean".

Light Switch dn is in Dining Room. The description is "the lights come on".

After examining the Light Switch dn:
	if DiningRoomLightOn is false:
		say "You turn it on. - Oh my God! A black shadow quickly jumps toward you! It's just a black cat! now you can see around, the room shows no signs of movement but to the west you can see Kitchen door. ";
		now Dining Table is in Dining Room;
		now DiningRoomLightOn is true;
		continue the action;
	otherwise:
		say "The Lights are still on";
		continue the action;
		
Section 1.5 Kitchen

[Variables]
KitchenLightOn is a truth state that varies. KitchenLightOn is false.

Kitchen is a room."it's too Dark to examine".

CarKey is a object. The description is "It looks like a key from a car. Perhaps i could use it later?".

After taking the CarKey:
	now HasCarKey is true;
	continue the action;

KitchenBalcony is a container.  

Stove is a object. The description is "[if we have examined the Light Switch k] Nothing interesting about this object"

Light Switch k is in Kitchen. The description is "the lights come on".

After examining the Light Switch k:
	if KitchenLightOn is false:
		say "You turn it on. Now you can see footprints on the floor it looks like someone left in a hurry, you start to suspect that someone might be trying to incriminate you.";
		now KitchenBalcony is in Kitchen;
		now CarKey is in the KitchenBalcony;
		now Stove is in Kitchen;
		now KitchenLightOn is true;
		continue the action;
	otherwise:
		say "The Lights are still on";
		continue the action;
		
After taking CarKey:
	say "You can see your car through the kitchen window parked in the south garage. You remember your brother and the times he wanted to take his place in the family business. But would he be able to incriminate you? ".


Section 1.6 Garage

[Variables]
GarageLightOn is a truth state that varies. GarageLightOn is false.

Garage is a room."It's too dark to see anything".
Garage Light Switch is in Garage.

Black Porsche is a vehicle. The description is "It seems to be you car. Maybe you could enter and check inside." 


The matching key of the Black Porsche is the Car Key. 
Car Key is in the kitchen.

Credential is a object. The description is "It is a credential from River Tech. It says that you are John River II, COO of the company.". Credential is in Black Porsche. 

After examining the Garage Light Switch:
	if GarageLightOn is false:
		say "The lights are on. You see a black Porsche. You really like the car, so it must be yours...";
		now Black Porsche is in Garage;
 		continue the action;
	otherwise:
		say "The Lights are still on";
		continue the action;

The Brother is a man.  

Instead of telling someone about something, try asking the noun about it. Instead of answering the noun that something, try asking the noun about it. 

Smartphone is a object. The description is "An iPhone with a pink case. The wallpaper is Katherine having fun on the beach, happy and alive. The more you look at her picture, the more you remember how much you liked her. Then, you remember she is dead on your bedroom floor and you start to shake." Smartphone is in Black Porsche. 

After examining the Smartphone:
	now the Brother is in Garage;
	say "Wait a minute... You are not shaking. The phone is vibrating. Someone is calling. You answer the phone by instinct but hesitate to say anything. On the other side, you hear someone:

	-  'Katherine? Is that you? '
	
	You recognize this voice! It is your brother! What should you do?

	- 'Brother?', you ask

	-'John! What are you doing?'";
	continue the action;

After asking the Brother about "Katherine", say "What did you do to her???? It was all your fault!"

After asking the Brother about  "Company/River Tech", say "You just killed a woman and you wanna talk about the company?? I always knew you were obsseded with owning that place. Do you think dad will give you the CEO position now that you are a murderer?? "

After asking Brother about "it wasn't me/i am innocent", say "Of course it was you. You were mad at her for flirting with some other guy last night. You went home way too drunk and then this happened. "
		
	
	

Chapter 2 Geography

Section 2.2 - Leaving a named object

Understand “exit [thing]” as getting off. Understand “get out of [thing]” as getting off.

This is the new can’t get off things rule:	
	if the actor is on the noun, continue the action;
	if the actor is carried by the noun, continue the action;
	if the actor is in the noun, continue the action;
	

The new can’t get off things rule is listed instead of the can’t get off things rule in the check getting off rules.

Section 2.1 The House

Porch is a room.  
Hall is room. 

Main door is a door. It is north of Porch and south of Hall. Main door is closed and locked.
The matching key of the Main door is Main key.

Large Bedroom Door is a Door. It is south of Large Bedroom and north of Upper Hall. Large Bedroom Door is open and unlocked.
MB Door is a Door. It is west of Medium Bedroom and east of Upper Hall. MB Door is open and locked.
Small Bedroom Door is a Door. It is east of Small Bedroom and west of Upper Hall. Small Bedroom Door is closed and locked.
BT Door is a Door. It is north of Bathroom and south of Upper Hall. BT is open and locked.
Living Room Door is a Door. It is north of Hall and south of Living Room. Living Room Door is open and unlocked.

[Kitchen Door is a Door. It is south of Large Bedroom and north of Upper Hall. Kitchen Door is open and unlocked.]


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

Chapter 4 Jogando

Section 4.1 - The awakening

Awakening is a Scene. 
Awakening begins when play begins.

The player is in Large Bedroom

Figure of InitialPicture is the file "presunto.jpg".
Figure of bolsa is the file "bolsa_feminina.jpg".
Figure of carro is the file "carro.jpg".
Figure of cozinha is the file "cozinha.jpg".
Figure of garagem is the file "garagem.jpg".


When play begins:
	Display the Figure of InitialPicture ;
	Say "The moonlight covers part of your arm, you wake up confused, with a big headache. You can't renember your own name and certainly had better days. ";
	
Awakening ends when we have examined the Driver License.

When Awakening ends:
	Say "After looking at the name Katherine, you begin to remember last night. You remember what happened last night.

Katherine and you were in the car arguing fiercely. The driving was dangerous as it was raining heavily. You felt a tremendous fury and tried to pull the phone from your hand. The discussion seemed to have been about the content of some message on her phone, but you don't remember for sure.

You look at Katherine's cold body beside you, and the bloodstains, but you can't remember how that happened. Had his fury gone out of control? Was it an accident?";
	