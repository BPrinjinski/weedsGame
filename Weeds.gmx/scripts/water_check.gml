///water_check(water_drop)
// Has the water drop check if it's empty or full and draw itself accordingly.

drop = argument0;
if(argument0.full)
{
    draw_sprite(drop_full,image_index,argument0.x,argument0.y);
}
else
{
    draw_sprite(drop_empty,image_index,argument0.x,argument0.y);
}
