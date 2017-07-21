///init_player(playerNum)

playerNumber = argument0
level = 1;
water = 10;

drink = 50;
adj_drink = 25;
water_max = 25;

roots[0] = 0;

if(playerNumber == 1)
{
    waterPos = 10;
}
else
{
    waterPos = 600;
}
water_drops[0] = instance_create(waterPos,10,water_drop);
