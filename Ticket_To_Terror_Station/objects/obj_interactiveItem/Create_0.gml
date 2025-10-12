lowerSanity = 0;
isDone = true;
playerRef = noone;
held = false;

Interact = function(){ }

Hold = function() {
    // move object to correct place on bottom of screen
    // may need resize 
    // may need to change bounds of image 
        // like for ladder so only a secction of ladder is visable in the corner
    // disable item in scene 
    // set held to true
}

// when player is swapping items call drop current item \
// and hold for new item 
Drop = function() {
    // remove item from conrner
    // enable item in scene  
    // set held to false
    // children position themselvs at different y values (x of player)
}