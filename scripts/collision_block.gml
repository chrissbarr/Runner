//collision_block(x,y)

var xx = argument0;
var yy = argument1;
var collided = false;

with obj_box
{
    if(x - width/2 - 4 < xx && x + width/2 > xx)    //if player is near block
    {
        if(yy >= y - height/2 && yy <= y + height/2)
        {
            collided = true;    
            if(touched == false)
            {
                other.points+=1;   
                other.first_falling = false;
                view_vborder[0] = 5;
                //if(room_speed<90)
                    //room_speed += 1
                touched = true;
            }
        }        
    }
}

return collided;
