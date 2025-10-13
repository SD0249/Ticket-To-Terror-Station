// draw button sprite
draw_self();

// test display info 
draw_set_font(typewritterFont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// draw text variable 
draw_text( x, y, buttonText);

// change everything back to default 
draw_set_font(defaultFont);
draw_set_halign(fa_left);
draw_set_valign(fa_top);