// printing out...

if (currentLine >= array_length(currentDialogue) - 1 && !line_after_ticket)    // handaling the end of the dialogue 
{
    finished = true;
    
    obj_player.locked = false;
    instance_destroy();
    
    return;
}

if (!finished)
{
    
    var line = currentDialogue[currentLine];
    
    if (is_string(line) && !showTicket)
    {
        var fullText = line;
        
        // adding letters to screen one by one :)
        if (string_length(displayedText) < string_length(fullText))
        {
            // making timing separeate from code and smoother...
            textTimer += delta_time / 1000;
            
            if (textTimer >= textspeed)
            {
                textTimer = 0;
                displayedText = string_copy(fullText, 1, string_length(displayedText) + 1);
            }
        }
    }
}
// if player presses Z
if (keyboard_check_pressed(vk_space))
{
    var line = currentDialogue[currentLine];
    var fullText = line;
        
    if (string_length(displayedText) < string_length(fullText))
    {
        displayedText = fullText;
    }
    else
    {
        // move to the next line..
        displayedText = "";
            
        if (currentLine == array_length(currentDialogue) - 2)
        {
            showTicket = true;
            
        }
        else if(currentLine < array_length(currentDialogue) - 1)
        {
        	currentLine++;
        }
        
        if(currentLine == array_length(currentDialogue) - 1) 
        {
            line_after_ticket = false;    
        }
        
    }
}
// to show the ticket
else if (showTicket)
{
    if (draw_sprite_for_10_sec)
    {
        ticketTimer += delta_time / 1000000;
        
        if (ticketTimer > 5.0)
        {
            draw_sprite_for_10_sec = false;
        }
    }
    
    displayedText = "";
} 
else if(!showTicket && !draw_sprite_for_10_sec) 
{
    currentLine = array_length(currentDialogue) - 1;
}


