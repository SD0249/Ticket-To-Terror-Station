// all the dialogue arrays!!

dialogueTutorial = [
    "Boss: So ya missed yur train and the next one isn't for another five days. HA HAR! Well aint that a problem.",
    "Boss: Tell you what kid, since I'm feeling generous I'll let ya hang around here. I'll even pay ya!",
    "Boss: In food and housing that is, don't expect me to share my pay check.",
    "Boss: Here's the deal… the people who come in here, well they ain't people.",
    "Boss: You'll understand soon, just get to work and I might give ya a ticket when your train comes.",
    "Boss: Now get! I've got some napping to do. Well deserved after dealing with those things for so long"
    ];
   
dialogueDay2Compleat = [
    "Boss: I'm surprised, so yur not all useless. Well good for you",
    "Boss: Ya made it to the next day, four more till ya can leave! Then I'll have to start working again… ugh.",
    "Boss: Get to scrubben the floors, I wanna see my face shine in em."
    ];

dialogueDay2Fail = [
    "Boss: So ya still came back? I thought kids like you were smart, guess that little task list got the better of ya. HA HAR!",
    "Boss: Get to scrubben the floors, I wanna see my face shine in em."
    ];
/*
dialogueDay3Compleat = [
    "Boss: Well aren't you a quick one. Not bad kid, ya aint bad…",
    "Boss: If only ya would stick around, being lazy never felt better. Well here the ticket for today, look it over kid.",
    {ticket: spr_ticket_day3},
    "Boss: Getta work kid, I need a smoke break."
    ];

dialogueDay3Fail = [
    "Boss: Ya know kid it was funny the first time but now it's old.",
    "Boss: How'd a kid like you even got the money for a ticket to this sh*t whole in the first place?",
    "Boss: Ya cant even finish a task list, how do ya far in yur real job?…",
    "Boss: Still in school? Let me save ya the trouble kid, drop out. HA HAR!",
    {ticket: spr_ticket_day3},
    "Boss: Getta work kid, I need a smoke break."
    ];*/

// tracking game state!!
currentLine = 0;
textspeed = 0.2;
textTimer = 0;
displayedText = "";
finished = false;
showTicket = false;
currentTicketSprite = noone;
ticketTimer = 0.0;
draw_sprite_for_10_sec = true;
line_after_ticket = true;

// player cannot move
obj_player.locked = true;

// get task data...
// dayManager = instance_find(taskManager, 0);
currentDay = taskManager.dayTracker;

tasksCompleated = (taskManager.tasksCount <= 0);

// dialogue sequence 
if (currentDay == 1)
{
    currentDialogue = dialogueTutorial;
    currentTicketSprite = spr_ticket_day1;
}
/*else if (currentDay == 2)
{
    if (tasksCompleated)
    {
        currentDialogue = dialogueDay2Compleat;
        currentTicketSprite = spr_ticket_day2;
    }
    else
    {
        currentDialogue = dialogueDay2Fail;
        currentTicketSprite = spr_ticket_day2;
    }
}
else if (currentDay == 3)
{
    if (tasksCompleated)
    {
        currentDialogue = dialogueDay3Compleat;
        currentTicketSprite = spr_ticket_day3;
    }
    else
    {
        currentDialogue = dialogueDay3Fail;
        currentTicketSprite = spr_ticket_day3;
    }
}*/

depth = -10000;