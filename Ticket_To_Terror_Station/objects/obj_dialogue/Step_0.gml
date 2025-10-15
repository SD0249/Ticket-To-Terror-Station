// printing out...

if (!finished)
{
    var line = currentDialogue[currentline];
    
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
    // if player presses Z
    if (keyboard_check_pressed(ord("z")))
    {
        var fullText = line;
        
        if (string_length(displayedText) < string_length(fullText))
        {
            displayedText = fullText;
        }
        else
        {
            // move to the next line...
            currentLine++;
            displayedText = "";
            
            if (currentLine == array_length(currentDialogue) - 2)
            {
                showTicket = true;
            }
        }
    }
}

// to show the ticket
else if (showTicket)
{
    if (keyboard_check_pressed("z"))
    {
        showTicket = false;
        currentLine++;
        displayedText = "";
    }
}

// handaling the end of the dialogue 
if (currentLine == array_length(currentDialogue))
{
    finished = true;
    
    obj_player.locked = false;
    instance_destroy();
}
