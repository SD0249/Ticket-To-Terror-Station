var screenX = 1915;
var screenY = 1071;

// draw ticket to screen
if (showTicket == true && currentTicketSprite != noone)
{
<<<<<<< Updated upstream
    //var spriteX = sprite_get_width(currentTicketSprite);
    //var spriteY = sprite_get_width(currentTicketSprite);
    //var X = (screenX - spriteX) / 2;
    //var Y = (screenY - spriteY) / 5;
    var xPos = view_wport / 2;
    var yPos = view_hport / 2;
    
    if (draw_sprite_for_10_sec)
    {
        draw_sprite(currentTicketSprite, 0, xPos, yPos);
=======
    var spriteX = sprite_get_width(currentTicketSprite);
    var spriteY = sprite_get_width(currentTicketSprite);
    var X = (screenX - spriteX) / 2;
    var Y = (screenY - spriteY) / 2;
    
    if (draw_sprite_for_10_sec)
    {
        draw_sprite(currentTicketSprite, 0, 0, 0);
>>>>>>> Stashed changes
    }
    else 
    {
    	showTicket = false;
    }
}

if (showTicket == false && finished == false)
{
    // draw dialogue box
    var boxH = 200;
    
    // everything drawn to console after will be black
    draw_set_color(c_black);
    
    // drawing the box
    draw_rectangle_color(0, boxH + 200, 1700, 300 + 600, c_black, c_black, c_black, c_black, false);
    
    // everything drawn to console after will be white
    draw_set_color(c_white);
    
    // drawing the text
    draw_text_ext(64, boxH + 240, displayedText, 24, 750)
}

