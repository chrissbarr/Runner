var xmin, xmax, ymin, ymax;
xmin = argument0;
xmax = argument1;
ymin = argument2;
ymax = argument3;

do {
    x = irandom_range(xmin, xmax);
    y = irandom_range(ymin, ymax);
}
until (collision_circle(x, y, sprite_width, object_index, false, true) == noone);
