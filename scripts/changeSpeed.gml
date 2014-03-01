var platform = player_obj.points/10;
var rate;

if(round(platform)==platform)
{
    rate = (100 + 10 * platform)/100;
    if(rate<=2)
        room_speed = 30*rate;
}
    



