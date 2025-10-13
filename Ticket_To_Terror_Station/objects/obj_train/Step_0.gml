x -= moveSpeed;

if (x == 0 - sprite_get_width(Train)) {
    instance_destroy();
}