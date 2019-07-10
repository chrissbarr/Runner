//collision_block(x,y)

var xx = argument0;
var yy = argument1;
var collided = false;

with obj_box
{
    if(x - width/2 < xx && x + width/2 + 5 > xx)    //if player is near block
    {
        if(yy >= y - height/2 && yy <= y + height/2)
        {
            collided = true;    
            other.first_falling = false;
            if(touched == false && first == false && yy < y - height/2 +5)
            {
                other.points+=1;   
                audio_play_sound(land_snd,1,false);
                view_vborder[0] = 5;
                touched = true;
            }
        }        
    }
}

return collided;
