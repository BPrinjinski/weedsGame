// Create the initial map based on input grid

mapGrid = ds_grid_create(25,15);

height = ds_grid_height(mapGrid);
width = ds_grid_width(mapGrid);

view_wview[0] = window_get_width();
view_hview[0] = window_get_height();

// Center the map on the screen
mapLeft = (view_wview[0] / 2) - ((width * CELL_WIDTH) / 2);
mapTop = (view_hview[0] / 2) - ((height * CELL_HEIGHT) / 2);

for(var i = 0; i < width; i++)
{
    for(var j = 0; j < height; j++)
    {
        tile_add(tileset,0,0,CELL_WIDTH,CELL_HEIGHT,(CELL_WIDTH * i) + mapLeft,(CELL_HEIGHT * j) + mapTop,0);
    }
}


