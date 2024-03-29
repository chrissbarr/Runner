//draw_score_block("Title",score_variable,center_x)
_title = argument0;
_score = argument1;
_x = argument2;

//draw score text
draw_set_color(dark_brown_colour);  
draw_set_font(score_font);      //set colour and font
var score_str = _title;
var center_x = _x;


x_offset = center_x;     //centre on left half
y_offset = height / 3;   //align towards top

draw_sprite(score_str, 0, x_offset, y - y_offset);     //drawing text

draw_num_spr(number_spr, _score, center_x, y + height / 10)

var num_stars = star_score(_score); //determine how many stars score is worth
var max_stars = 5;

//now draw stars
for (i = 0; i < max_stars; i++)
{
    var pos_x = center_x + (((2 * i + 1) - max_stars) / 2) * (sprite_get_width(star_spr));
    var star_pos_y = pos_y + 1.4 * sprite_get_height(number_spr) / 2;
    if (i + 1 <= num_stars) 
    {
        var _star_index = 0;
    }
    else
    {
        var _star_index = 1;
    }
    draw_sprite(star_spr, _star_index, pos_x, star_pos_y);
}


