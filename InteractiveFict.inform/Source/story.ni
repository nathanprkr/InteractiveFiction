"InteractiveFict" by Nathan Parker

Chapter 1 - The Hospital Room

When play begins, say "'You wake up in a hospital bed, the faint smell of antiseptic lingering in the air. The walls are pale blue, and medical equipment hums softly nearby. You feel groggy, your body aching from the effects of painkillers.'";

The Hospital Room is a room. 

The Bed is an enterable supporter in the Hospital Room. "The hospital bed looks old but functional, with crisp white sheets that smell faintly of bleach." 


The toilet is a fixed in place thing in the Hospital Room. "A plain white toilet sits in the corner of the room, functional but unremarkable."

The table is a supporter in the Hospital Room. "A small table stands beside the bed, holding a plastic water pitcher and a glass." 

The Hopstial Room Door is a door. The Hopstial Room Door is east of the Hospital Room and west of The Hallway. The Hopstial Room Door is open. The description of the Hopstial Room Door is "The door is wide open, leading to what appears to be a brightly lit hallway." 

The Nurse is a person in the Hospital Room. "The Nurse stands nearby, her expression a mixture of professionalism and concern." The Nurse has a number called knowledge. The knowledge of the Nurse is 0.

The Nurse can be greeted or ungreeted. The Nurse is ungreeted.

Asked about family is a truth state that varies. Asked about crash is a truth state that varies. Asked about pain is a truth state that varies. Asked about deaths is a truth state that varies. Asked about recovery is a truth state that varies.

Interrogative is a kind of value. The interrogatives are who, what, when, where, how, about, and why.

Current question is an interrogative that varies.

Understand "ask [someone] [text]" as asking it about.

Every turn when the player is in the Hospital Room:
	increment the knowledge of the Nurse;
	if the knowledge of the Nurse is 25:
		say "The Nurse looks at you one last time as you pass out from the pain. You eventually recover and face trial for the deaths you caused while drunk driving.";
		now the player is in The Courtroom;
		stop the action;

After reading a command:
	if the player's command includes "[interrogative]", now the current question is the interrogative understood.
	
After asking someone about something: respond to the question. After answering someone that something: respond to the question.

Greeting is an action applying to one thing.

Understand "greet [thing]" or "say hello to [thing]" or "say hi to [thing]" or "wave to [thing]" or "hello [thing]" as greeting.

Carry out greeting:
	if the noun is the Nurse:
		if the Nurse is ungreeted:
			now the Nurse is greeted;
			say "'Hello, how are you feeling?' says the Nurse gently. 'You were in a car accident. Take it easy and let me know if you have questions.'";
		otherwise:
			say "The Nurse is waiting for your questions.";

Talking to is an action applying to one thing.

Understand "talk to [thing]" or "ask [thing]" as talking to.

Check talking to:
	if the noun is not the Nurse, say "You can't talk to that." instead;
	if the Nurse is ungreeted, say "You should greet the Nurse first." instead.


Stopping talking is an action applying to one thing.

Understand "stop talking to [thing]" or "stop interacting with [thing]" as stopping talking.

Check stopping talking:
	if the noun is not the Nurse, say "You're not talking to that." instead.

Carry out stopping talking:
	say "You stop your conversation with the Nurse and sit back in silence.";

Table of Answers
topic	question type	reply
"nurse"	what	"'I have a husband and a daughter,' the Nurse says, her tone softening slightly. 'They're everything to me.'"
"nurse"	about	"'I have a husband and a daughter,' the Nurse says, her tone softening slightly. 'They're everything to me.'"
"family"	what	"'I have a husband and a daughter,' the Nurse says, her tone softening slightly. 'They're everything to me.'"
"family"	about	"'I have a husband and a daughter,' the Nurse says, her tone softening slightly. 'They're everything to me.'"
"car crash"	when	"'The crash happened about an hour ago,' the Nurse replies. 'It was quite severe.'"
"accident"	when	"'The crash happened about an hour ago,' the Nurse replies. 'It was quite severe.'"
"car crash"	what	"'You were driving a white van,' she says cautiously. 'It seems you were under the influence.'"
"car crash"	about	"'You were driving a white van,' she says cautiously. 'It seems you were under the influence.'"
"accident"	what	"'You were driving a white van,' she says cautiously. 'It seems you were under the influence.'"
"accident"	about	"'You were driving a white van,' she says cautiously. 'It seems you were under the influence.'"
"people killed"	what	"'A father and daughter lost their lives in the crash,' the Nurse says, her voice wavering slightly."
"people killed"	about	"'A father and daughter lost their lives in the crash,' the Nurse says, her voice wavering slightly."
"deaths"	what	"'A father and daughter lost their lives in the crash,' the Nurse says, her voice wavering slightly."
"deaths"	about	"'A father and daughter lost their lives in the crash,' the Nurse says, her voice wavering slightly."
"medication"	what	"'You're on heavy painkillers like morphine,' the Nurse explains. 'They're strong but necessary for your injuries.'"
"medication"	about	"'You're on heavy painkillers like morphine,' the Nurse explains. 'They're strong but necessary for your injuries.'"
"drugs"	what	"'You're on heavy painkillers like morphine,' the Nurse explains. 'They're strong but necessary for your injuries.'"
"drugs"	about	"'You're on heavy painkillers like morphine,' the Nurse explains. 'They're strong but necessary for your injuries.'"
"pain"	what	"'I know you're in pain, but I can't safely increase your dosage,' the Nurse says gently."
"pain"	about	"'I know you're in pain, but I can't safely increase your dosage,' the Nurse says gently."
"injuries"	what	"'You suffered heavy head trauma and other injuries,' the Nurse explains. 'That might explain why you can't remember what happened.'"
"injuries"	about	"'You suffered heavy head trauma and other injuries,' the Nurse explains. 'That might explain why you can't remember what happened.'"
"condition"	what	"'You suffered heavy head trauma and other injuries,' the Nurse explains. 'That might explain why you can't remember what happened.'"
"condition"	about	"'You suffered heavy head trauma and other injuries,' the Nurse explains. 'That might explain why you can't remember what happened.'"
"heal"	how	"'You'll need plenty of rest, but you should be better in a few days,' the Nurse says."
"happened"	what	"'You were in a pretty bad car crash, and hit your head really hard.' the Nurse explains."
"happened"	about	"'You were in a pretty bad car crash, and hit your head really hard.' the Nurse explains."

To respond to the question:
	repeat through the Table of Answers:
		if the topic understood includes topic entry:
			if the current question is the question type entry:
				say "[reply entry][paragraph break]";
				if the topic understood includes "nurse/family":
					now asked about family is true;
				if the topic understood includes "people killed":
					now asked about deaths is true;
				if the topic understood includes "deaths":
					now asked about deaths is true;
				if the topic understood includes "heal":
					say "Over the following weeks, you regain strength and clarity. Eventually, you find yourself standing trial for the events of the crash.";
					now the player is in The Courtroom;
					stop the action;
				if asked about family is true and asked about deaths is true:
					say "The Nurse's face hardens as realization dawns. 'You... you killed my husband and daughter.' She picks up a scalpel and approaches.";
					end the story saying "The Nurse killed you.";
				if the topic understood includes "pain" and asked about deaths is true:
					say "The Nurse's voice grows cold. 'Maybe we can help you with that pain.' You feel the sharp sting of an injection. The world fades to black as the nurse overdoses you with morphine.";
					end the story saying "You slipped into a coma and had your organs harvested.";
				increment the knowledge of the Nurse;
				rule succeeds;
	say "You output a slurred string of words that couldn’t be understood.";
	say "The Nurse says, 'I don't think I understand what you just said. Could you try again?'";

Chapter 2 - The Hallway

The Hallway is a room. "The hallway is well-lit and empty aside from some generic paintings on the walls."

The Hallway is east of the Hopstial Room Door.

The Police Officers are north of the Hallway. 

Instead of going north from the Hallway:
	say "'Hey, he's awake!' one of the officers shouts. They tackle you, and you are transported to jail. You are placed on trial for your crimes.";
	now the player is in The Courtroom;
	stop the action;

The Exit Door is a locked door. It is east of the Hallway. The description of the Exit Door is "A sturdy door with a heavy lock."

Instead of opening the Exit Door:
	if the Exit Door is locked:
		say "The door is locked. You'll need a key to open it.";
	otherwise:
		continue the action.

Instead of going through the Exit Door:
	if the Exit Door is locked:
		say "The door is locked. You'll need to unlock it first.";
	otherwise:
		say "You walk outside, the sun shines on your face. Still feeling the pain meds, you stumble away, and escape for good.";
		end the story saying "You escaped the hospital.";

The ODoor is a door. It is south of the Hallway and north of the Office. The ODoor is closed. The description of the ODoor is "A plain metal door leading to an office."

Chapter 3 - The Office

The Office is a room.

The Office is south of the Office Door.


Chapter 4 - The Courtroom

The Courtroom is a room. 

The description of the courtroom is "You find yourself in a sterile, intimidating courtroom. The judge sits on an elevated platform, looking down at you."

The Judge is a person in The Courtroom. The Judge has a number called Frustration. The Frustration of the Judge is 0.

Asked about incrimination is a truth state that varies. Asked about driver is a truth state that varies. Asked about nurse is a truth state that varies. Asked about recovery is false.

Table of Judge Answers
topic	question type	reply
"charges"	what	"'You are charged with manslaughter for the deaths of a father and daughter while driving under the influence,' the Judge says grimly."
"evidence"	what	"'The evidence includes your blood alcohol content, witness statements, and the damage to your vehicle,' the Judge explains."
"sentence"	what	"'If convicted, you could face life imprisonment,' the Judge states."
"charges"	about	"'You are charged with manslaughter for the deaths of a father and daughter while driving under the influence,' the Judge says grimly."
"evidence"	about	"'The evidence includes your blood alcohol content, witness statements, and the damage to your vehicle,' the Judge explains."
"sentence"	about	"'If convicted, you could face life imprisonment,' the Judge states."

After asking the Judge about something:
	if the Frustration of the Judge is 20:
		say "The Judge slams his gavel. 'Stop wasting my time, the evidence is clear. You are sentenced to life in prison.'";
		end the story saying "You rot in jail.";
		rule succeeds;
	if the topic understood includes "people killed":
		now asked about incrimination is true;
	if the topic understood includes "deaths":
		now asked about incrimination is true;
	if the topic understood includes "driver":
		now asked about driver is true;
	if the topic understood includes "nurse":
		now asked about nurse is true;
	if asked about incrimination is true:
		say "The Judge frowns. 'So you admit to killing them? The evidence is clear.' He slams his gavel.";
		end the story saying "You are sentenced to life in prison.";
		rule succeeds;
	if asked about driver is true:
		say "The Judge ponders for a moment. 'I guess you’re right, there is no evidence you were actually driving the car.' He dismisses the case.";
		end the story saying "You were released.";
		rule succeeds;
	if asked about nurse is true:
		say "The Judge starts to respond, but suddenly, the Nurse stands up from the back of the courtroom. 'You don’t get to walk away from this!' she screams, pulling out a gun and shooting you dead.";
		end the story saying "The Nurse killed you.";
		rule succeeds;
	increment the Frustration of the Judge;
	repeat through the Table of Judge Answers:
		if the topic understood includes topic entry:
			if the current question is the question type entry:
				say "[reply entry][paragraph break]";
				rule succeeds;
	say "The Judge furrows his brow in confusion. 'I’m not sure what you mean. Please clarify.'";
	rule succeeds;


Understand "ask [someone] [text]" as asking it about.


