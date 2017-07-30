// Initialize both players and the map
patches = ds_map_create();

player_turn = 1;

player_1 = instance_create(0,0,player);

player_turn = 2;
player_2 = instance_create(0,0,player);

generateMap();

player_turn = 1;
