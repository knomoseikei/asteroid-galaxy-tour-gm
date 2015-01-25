var star = instance_create(x, y, obj_bgStar);
star.type = "star";
star.x = random(room_width + 20) - 10;
star.y = random(room_height + 20) - 10;
star.image_xscale = .25 + random(.75);
star.image_yscale = star.image_xscale;
depth = -image_xscale +200;
