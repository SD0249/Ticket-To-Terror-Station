var screenX = 1915;
var screenY = 1071;

// draw ticket to screen
if (showTicket == true && currentTicketSprite != noone)
{
    
}

if (showTicket == false && finished == false)
{
    // draw dialogue box
    var boxH = screenY - 220;
    
    // everything drawn to console after will be black
    draw_set_color(c_black);
    
    draw_rectangle_color(0, boxH, screenX, screenY, c_black, c_black, c_black, c_black, false);
    
    
    // everything drawn to console after will be white
    draw_set_color(c_white);
    
    draw_text_ext(64, boxH + 40, displayedText, 24, screenX -128)
}
