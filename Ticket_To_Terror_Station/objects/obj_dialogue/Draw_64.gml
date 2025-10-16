var screenX = 1915;
var screenY = 1071;

// draw ticket to screen
if (showTicket == true && currentTicketSprite != noone)
{
    // var spriteX = sprite_get_width(currentTicketSprite);
    // var spriteY = sprite_get_width(currentTicketSprite);
    // var X = (screenX - spriteX) / 2;
    // var Y = (screenY - spriteY) / 2;
    
    // draw_sprite(currentTicketSprite, 0, X, Y);
    
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