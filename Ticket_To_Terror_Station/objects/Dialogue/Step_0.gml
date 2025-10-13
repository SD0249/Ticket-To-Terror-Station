// printing out...
    
if (!finished)
{
    var fullText = dialogue[currentline];
        
    // adding letters to screen one by one :)
    if (string_length(displayedText) < string_length(fullText))
    {
        if (textspeed >= 1)
        {
            displayedText = strin_copy(fullText, 1, string_length(displayedText) + 1);
            textTimer = 0;
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
    }
}