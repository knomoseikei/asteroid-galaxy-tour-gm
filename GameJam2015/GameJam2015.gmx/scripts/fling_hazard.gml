if situationType == c_asteroids {
    flungHazard = instance_create(room_width + 120, random(room_height+60)-30, obj_rock_targetted)
    flungHazard.type = c_asteroids;
    flungHazard.damage = floor(random(4)) + 10;
    flungHazard.trackingSpeed = 12;
    flungHazard.image_rotation = random(5) - 2.5;
    flungHazard.image_xscale = .5;
    flungHazard.image_yscale = .5;
    flungHazard.image_angle = random(360);
}

if situationType == c_meteors {
    flungHazard = instance_create(room_width + 120, random(room_height+60)-30, obj_rock_targetted)
    flungHazard.type = c_meteors;
    flungHazard.damage = floor(random(11)) + 10;
    flungHazard.trackingSpeed = 8;
    flungHazard.image_rotation = random(5) - 2.5;
    flungHazard.image_xscale = .7;
    flungHazard.image_yscale = .7;
    flungHazard.image_angle = random(360);
    flungHazard.image_blend = make_color_rgb(255,192,192);
}

if situationType == c_pirates {
    flungHazard = instance_create(room_width + 120, random(room_height+60)-30, obj_rock_targetted)
    flungHazard.sprite_index = spr_pirate_ship;
    flungHazard.type = c_pirates;
    flungHazard.trackingSpeed = 5;
    flungHazard.image_rotation = 0;
    flungHazard.damage = 1 + floor(random(10));
    flungHazard.time = 90;
}

if situationType == c_aliens {
    flungHazard = instance_create(room_width + 120, random(room_height+60)-30, obj_rock_targetted)
    flungHazard.sprite_index = spr_alien_ship;
    flungHazard.type = c_aliens;
    flungHazard.trackingSpeed = 5;
    flungHazard.image_rotation = 0;
    flungHazard.damage = 1 + floor(random(10));
    flungHazard.time = 90;
}

if situationType == c_station {
    flungHazard = instance_create(room_width + 120, 150, obj_rock_targetted)
    flungHazard.sprite_index = spr_pirate_ship;
    flungHazard.type = c_station;
    flungHazard.trackingSpeed = 0;
    flungHazard.image_rotation = 0;
    flungHazard.energy = 120;
}

if situationType == c_junk {
    for (var i = 0; i < 5; i++) {
    flungHazard = instance_create(room_width + 32 + random(120), random(room_height+60)-30, obj_energy_boost);
    flungHazard.junk = i + 1;
    }
}

if situationType == c_end {
    instance_create(room_width + 120, 100 + random(room_height - 100), obj_planet);
}
