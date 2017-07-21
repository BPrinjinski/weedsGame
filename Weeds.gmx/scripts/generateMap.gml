// Create the initial map based on input grid

mapGrid = ds_grid_create(1,0);

if(file_exists("testMap.txt"))
{
    file = file_text_open_read("testMap.txt");
    while(!file_text_eof(file))
    {
        ds_grid_resize(mapGrid, ds_grid_width(mapGrid), ds_grid_height(mapGrid) +1);        
    
        line = file_text_readln(file);
        if(string_length(line) - 1 > ds_grid_width(mapGrid))
        {
            ds_grid_resize(mapGrid, string_length(line), ds_grid_height(mapGrid));
        }
        
        for(var i = 1; i < string_length(line); i++)
        {
            currChar = string_char_at(line, i);
            if(string_ord_at(line, i) > 30)
            {
                mapGrid[# i, ds_grid_height(mapGrid) - 1] = string_char_at(line, i);
            }
        }
    }
    file_text_close(file);
}

height = ds_grid_height(mapGrid);
width = ds_grid_width(mapGrid);

// Center the map on the screen
//mapLeft = (view_wview[0] / 2) - ((width * CELL_WIDTH) / 2);
//mapTop = (view_hview[0] / 2) - ((height * CELL_HEIGHT) / 2);

/*
for(var i = 0; i < width; i++)
{
    for(var j = 0; j < height; j++)
    {
        if(mapGrid[# i, j] == "G")
        {
            tile_add(tileset,0,0,CELL_WIDTH,CELL_HEIGHT,(CELL_WIDTH * i) + mapLeft,(CELL_HEIGHT * j) + mapTop,0);
        }
        else if(mapGrid[# i, j] == "1")
        {
            tile_add(tileset,0,32,CELL_WIDTH,CELL_HEIGHT,(CELL_WIDTH * i) + mapLeft,(CELL_HEIGHT * j) + mapTop,0);
        }
        else if(mapGrid[# i, j] == "2")
        {
            tile_add(tileset,32,32,CELL_WIDTH,CELL_HEIGHT,(CELL_WIDTH * i) + mapLeft,(CELL_HEIGHT * j) + mapTop,0);
        }
    }
}

*/

