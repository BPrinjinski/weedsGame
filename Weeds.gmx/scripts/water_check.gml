// Has the water drop check if it's empty or full and draw itself accordingly.
if(argument0.full)
{
    draw_sprite(drop_full,-1,x,y);
}
else
{
    draw_sprite(drop_empty,-1,x,y);
}
