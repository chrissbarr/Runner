repeat(15)
{
    var num = round(random(block_max_width)+1);
    var rand_width = num*block_base_width;
    if(spawned == 0)
    {
        rand_width = 4 * block_base_width;
        pos_x -= rand_width/2;
    }
        
    new_box = instance_create(pos_x+rand_width/2,pos_y,obj_box);
    new_box.width = rand_width;
    new_box.height = block_base_width;
    new_box.num = num;
    if(spawned == 0)
    new_box.first = true;
    pos_x += (rand_width+jump_width); 
    spawned += 1;
}
