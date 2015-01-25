///draws stats
if instance_number(obj_spaceship) == 1 {
ship_check()
draw_set_font(font_dos24);
draw_text(1096, 522, string(obj_spaceship.HP));
draw_sprite_ext(spr_icons, 5, 1046, 518, 0.3, 0.3, 0, draw_get_color(), 1);
draw_text(1096, 582, string(obj_spaceship.shields));
draw_sprite_ext(spr_icons, 1, 1046, 578, 0.3, 0.3, 0, draw_get_color(), 1);
if obj_spaceship.weaponsBoost > 0 draw_set_color(c_red) else draw_set_color(c_white);
draw_sprite_ext(spr_icons, 3, 1046, 638, 0.3, 0.3, 0, draw_get_color(), 1);
draw_text(1096, 642, string(obj_spaceship.weapons+obj_spaceship.weaponsBoost));
if obj_spaceship.spdBoost > 0 draw_set_color(c_red) else draw_set_color(c_white);
draw_sprite_ext(spr_icons, 4, 1142, 518, 0.3, 0.3, 0, draw_get_color(), 1);
draw_text(1192, 522, string(obj_spaceship.spd+obj_spaceship.spdBoost));
if obj_spaceship.maneuverabilityBoost > 0 draw_set_color(c_red) else draw_set_color(c_white);
draw_sprite_ext(spr_icons, 2, 1142, 578, 0.3, 0.3, 0, draw_get_color(), 1);
draw_text(1192, 582, string(obj_spaceship.maneuverability+obj_spaceship.maneuverabilityBoost));
draw_set_color(c_white);
draw_sprite_ext(spr_icons, 6, 1142, 638, 0.3, 0.3, 0, draw_get_color(), 1);
draw_text(1192, 642, string(obj_spaceship.honor));

draw_set_halign(fa_right);
draw_text(room_width - 45, 15, string(ceil(obj_spaceship.energy / 30)));
draw_sprite_ext(spr_icons, 0, room_width - 40, 6, 0.3, 0.3, 0, c_white, 1);
draw_set_halign(fa_left);
}

draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
if obj_spaceship.janitor == 1 draw_text(room_width, room_height, "Jn");
if obj_spaceship.crew == 1 draw_text(room_width-35, room_height, "Cr");
if obj_spaceship.soldier == 1 draw_text(room_width-70, room_height, "Sl");
if obj_spaceship.pilot == 1 draw_text(room_width-105, room_height, "Pi");
if obj_spaceship.gunner == 1 draw_text(room_width-140, room_height, "Gn");
if obj_spaceship.mechanic == 1 draw_text(room_width-175, room_height, "Mc");
if obj_spaceship.engineer == 1 draw_text(room_width-210, room_height, "En");



draw_set_halign(fa_left);
draw_set_valign(fa_top);
