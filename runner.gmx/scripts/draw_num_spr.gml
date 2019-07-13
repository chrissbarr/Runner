//draw_num_spr(sprite,number,center_x,center_y)
_sprite = argument0;
_number = argument1;
_x = argument2;
_y = argument3;

//determine how many numbers in score
var score_num_str = string(_number);
var score_digits = string_length(score_num_str);    //score digits will hold number of digits in score

for (i = 0; i < score_digits; i++) //draw each digit using sprite
{
    var char_num = real(string_char_at(score_num_str, i + 1));
    var pos_x = _x + (((2 * i + 1) - score_digits) / 2) * (sprite_get_width(_sprite) - 10);
    pos_y = _y;
    draw_sprite(_sprite, char_num, pos_x, pos_y);
}
