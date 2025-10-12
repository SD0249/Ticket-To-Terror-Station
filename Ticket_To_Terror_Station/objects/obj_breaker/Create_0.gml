event_inherited();

lowerSanity = 10;

// list of all lights in screen 
lights = ds_list_create();

lightsBroken = 0;

with (obj_light)
{
    ds_list_add(obj_breaker.lights, id);
}

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




