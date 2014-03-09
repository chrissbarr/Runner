//draw_score_block("Title",score_variable,center_x)
_title = argument0;
_score = argument1;
_x = argument2;

//draw score text
draw_set_color(dark_brown_colour);  
draw_set_font(score_font);      //set colour and font
var score_str = _title;
var center_x = _x;


x_offset = center_x - string_width(score_str)/2;     //centre on left half
y_offset = height/3 + string_height(score_str)/2;   //align towards top

draw_text(x_offset,y-y_offset,score_str);     //drawing text

//determine how many numbers in score
var score_num_str = string(_score);
var score_digits = string_length(score_num_str);    //score digits will hold number of digits in score

for(i=0;i<score_digits;i++) //repeat for each digit
{
    var char_num = real(string_char_at(score_num_str,i+1));
    var pos_x = center_x+(((2*i+1)-score_digits)/2)*(sprite_get_width(number_spr)-10);
    var pos_y = y+height/10;
    draw_sprite(number_spr,char_num,pos_x,pos_y);
}