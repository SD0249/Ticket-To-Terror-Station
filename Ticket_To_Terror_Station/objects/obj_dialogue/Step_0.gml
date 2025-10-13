// printing out...

if (!finished)
{
    var line = currentDialogue[currentline];
    
    if (is_string(line))
    {
        var fullText = line;
        
        
        // adding letters to screen one by one :)
        if (string_length(displayedText) < string_length(fullText))
        {
            if (textTimer >= textspeed)
            {
                displayedText = string_copy(fullText, 1, string_length(displayedText) + 1);
                textTimer += 1;
            }
        }
    }
}
else if (keyboard_check_pressed(ord("z")))
{
    currentLine++;
    if (currentLine >= array_Length(dialogue))
    {
        finished = true 
        
        instance_destroy();
        timeManager.StartGame()
    }
}