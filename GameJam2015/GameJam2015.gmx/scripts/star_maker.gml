if random(100) < 40 * ((obj_spaceship.spd + obj_spaceship.spdBoost)/5) {
    var star = instance_create(x, y, obj_bgStar);
    star.type = "star";
    star.x = room_width + 50;
    star.y = random(room_height + 20) - 10;
    star.image_xscale = .25 + random(.75);
    star.image_yscale = star.image_xscale;
    star.depth = -image_xscale +200;
}

//detect is asteroid field
if currentSituationType = c_asteroids && random(100) < 5 * ((obj_spaceship.spd + obj_spaceship.spdBoost)/5) {
    var asteroid = instance_create(x, y, obj_rock_decoration);
    asteroid.type = "asteroid"
    asteroid.x = room_width + 120;
    asteroid.y = random(room_height + 20) - 10;
    asteroid.image_xscale = .25 + random(.5);
    asteroid.image_yscale = asteroid.image_xscale;
    asteroid.image_rotation = random(0.5) - .25;
    asteroid.image_angle = random(360);
    asteroid.depth = 190+random(20);
}

if currentSituationType = c_meteors && random(100) < 4 * ((obj_spaceship.spd + obj_spaceship.spdBoost)/5) {
    var asteroid = instance_create(x, y, obj_rock_decoration);
    asteroid.type = "meteor"
    asteroid.x = room_width + 120;
    asteroid.y = random(room_height + 20) - 10;
    asteroid.image_xscale = .25 + random(.5);
    asteroid.image_yscale = asteroid.image_xscale;
    asteroid.image_rotation = random(0.5) - .25;
    asteroid.image_angle = random(360);
    asteroid.depth = 190+random(20);
    asteroid.image_blend = make_color_rgb(255,192,192);
}

if currentSituationType = c_junk && random(100) < 10 * ((obj_spaceship.spd + obj_spaceship.spdBoost)/5) {
    var asteroid = instance_create(x, y, obj_rock_decoration);
    asteroid.type = "junk"
    asteroid.sprite_index = spr_junk;
    asteroid.junktype = floor(random(3));
    asteroid.x = room_width + 120;
    asteroid.y = random(room_height + 20) - 10;
    asteroid.image_xscale = .5 + random(1);
    asteroid.image_yscale = asteroid.image_xscale;
    asteroid.image_rotation = random(0.5) - .25;
    asteroid.image_angle = random(360);
    asteroid.depth = 190+random(20);
}
