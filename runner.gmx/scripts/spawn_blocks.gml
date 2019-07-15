var _block_obj = argument0;
var dummy_block = instance_create(0, 0, _block_obj);
var block_width = dummy_block.sprite_width;
instance_destroy(dummy_block);

repeat(15)
{
    var block_num;
    
    // first platform is always 4 wide and centred
    if (platforms_spawned == 0)
    {
        block_num = 4;
        pos_x -= ((block_num - 1) / 2) * block_width;   
    }
    else 
    {
        block_num = round(random(platform_max_width)) + 1;
    }
    
    for (var i = 0; i < block_num; i++)
    {
        new_block = instance_create(pos_x, pos_y, _block_obj);
        new_block.block_num = blocks_spawned;
        new_block.platform_num = platforms_spawned;
        blocks_spawned += 1;
        pos_x += block_width;
    }
    
    pos_x += jump_width * block_width;
    
    platforms_spawned += 1;
}
