// Inherit the parent event
event_inherited();

Interact = function (_pickUp) {
    
    if (_pickUp == obj_mop) {
        // delete puddle 
        instance_destroy();
    }
}
