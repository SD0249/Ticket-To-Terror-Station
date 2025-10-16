function ResetStation(){
	
	// destroy all trash 
	var trashCan = instance_find(obj_trashCan, 0);
	
	with(obj_trash) {
		instance_destroy();
	}
	
	trashCan.trashCount = 0;
	
	// reset lights
	 var breaker = instance_find(obj_breaker, 0);
	 
	 with (obj_light) {
        id.image_index = 0;
        id.canBeFixed = false;
        breaker.lightsBroken = 0;
    }
    
    breaker.SwitchLights(true);
	
	// reset spigot 
	 var spigot = instance_find(obj_spigot, 0);

    with (obj_pipe) {
		id.isBroken = false;
        id.isInteractable = false;
	}
	
	spigot.brokenPipes = 0;
	
	// destroy all held items from office
	
	with(obj_mop) {
		instance_destroy();
	}
		
	with(obj_key) {
		instance_destroy();
	}
		
	with(obj_lightBulb) {
		instance_destroy();
	}
		
	with(obj_wrench) {
		instance_destroy();
	}
	
	// unlock door 
	 var door = instance_find(obj_door, 0)
	 door.isLocked = false;
}

function ResetOffice() {
	
	// make player playable in office
	with(obj_player) {
		x = 200;
		locked = false;
		visible = true;
		
		// reset inventory	
		inventory = -1;
		obj_Hub.UpdateItemHub(-1);
		}
		
		// reset time
		obj_timeManager.Reset();
	
}