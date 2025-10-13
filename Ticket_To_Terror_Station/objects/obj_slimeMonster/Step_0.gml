x -= moveSpeed;

if (x == 0 - sprite_get_width(spr_slimeMonster)) {
    instance_destroy();
}