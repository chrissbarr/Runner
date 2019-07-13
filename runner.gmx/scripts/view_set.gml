if (os_type == os_android)
{
    view_wview[0] = display_get_width();
    view_hview[0] = display_get_height();
}   
else
{
    view_wview[0] = 1280;
    view_hview[0] = 720;
}

view_wport[0] = view_wview[0];
view_hport[0] = view_hview[0];
display_set_gui_size(view_wview[0], view_hview[0]);

view_visible[0] = true;
view_enabled = true;
view_object[0] = player_obj;
view_hborder[0] = view_wview[0] / 2;
view_vborder[0] = view_hview[0] / 2;
view_vspeed[0] = -1;
view_hspeed[0] = -1;
