repeat(15)
{
    var rand_width = round(random(block_max_width)+1)*block_base_width;
    if(spawned == 0)
    {
        rand_width = 4 * block_base_width;
        pos_x -= rand_width/2;
    }
        
    new_box = instance_create(pos_x+rand_width/2,pos_y,obj_box);
    new_box.width = rand_width;
    new_box.height = block_base_width;
    pos_x += (rand_width+jump_width); 
    spawned += 1;
}
