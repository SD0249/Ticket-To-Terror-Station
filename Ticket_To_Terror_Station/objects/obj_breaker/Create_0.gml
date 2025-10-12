event_inherited();

lowerSanity = 10;

lightsBroken = 0;


// turn lights off and on
SwitchLights = function () {
    obj_lightRender.lightsOn = !obj_lightRender.lightsOn;
}

LightColor = function () {
    obj_lightRender.lightBlue = !obj_lightRender.lightBlue;
}


// breakers interact 
Interact = function (_pickUp)  {
    
    //if(inventoryItem == obj_key)
    if(lightsBroken == 0) {
        SwitchLights();
    }
}




