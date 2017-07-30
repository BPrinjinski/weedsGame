// Called when the game first runs. Should take care of things like opening
// the window and spinning up other managers and such.  For now, just messing around, though.

ideal_width = -1;
ideal_height = 720;

// Calculate our aspect ratio and resolution.
aspect_ratio = display_get_width()/display_get_height();

ideal_width = round(ideal_height * aspect_ratio);
if(ideal_width & 1)
{
    ideal_width++;
}

// Init the window
window_set_size(ideal_width, ideal_height);
surface_resize(application_surface, ideal_width, ideal_height);
alarm_set(0,1);

view_wview[0] = window_get_width();
view_hview[0] = window_get_height();

//Init all rooms that exist.
for(var i=0; i<=room_last; i++)
{
    if(room_exists(i))
    {
        
        room_set_view(i,0,true,0,0,ideal_width,ideal_height,0,0,ideal_width,ideal_height,0,0,0,0,-1);
        room_set_view_enabled(i, true);
    }
}

global.title = room_next(room);
room_set_background_colour(global.title,c_blue,1);
