///draws stats
if instance_number(obj_spaceship) == 1 {
draw_set_font(font_targa24);
draw_text(1056, 512, "AR " + string(obj_spaceship.HP));
draw_text(1056, 572, "SH " + string(obj_spaceship.shields));
if obj_spaceship.weaponsBoost > 0 draw_set_color(c_red) else draw_set_color(c_white);
draw_text(1056, 632, "WP " + string(obj_spaceship.weapons+obj_spaceship.weaponsBoost));
if obj_spaceship.spdBoost > 0 draw_set_color(c_red) else draw_set_color(c_white);
draw_text(1152, 512, "SP " + string(obj_spaceship.spd+obj_spaceship.spdBoost));
if obj_spaceship.maneuverabilityBoost > 0 draw_set_color(c_red) else draw_set_color(c_white);
draw_text(1152, 572, "MA " + string(obj_spaceship.maneuverability+obj_spaceship.maneuverabilityBoost));
draw_set_color(c_white);
draw_text(1152, 632, "HN " + string(obj_spaceship.honor));

draw_set_halign(fa_right);
draw_text(room_width, 0, string(obj_spaceship.energy) + " ENERGY");
draw_set_halign(fa_left);
}
