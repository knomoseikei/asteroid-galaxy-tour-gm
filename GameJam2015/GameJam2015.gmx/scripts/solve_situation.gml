/*if currentSituationType == c_asteroids {
    var hazard = floor(random(4)) + 9;
    var hazardB = floor((obj_spaceship.maneuverability + obj_spaceship.maneuverabilityBoost) + ((obj_spaceship.weapons + obj_spaceship.weaponsBoost)/2))
    if hazardB < hazard {
        hazard -= hazardB;
        obj_spaceship.shields -= hazard;
        if obj_spaceship.shields < 0 {
            obj_spaceship.HP += obj_spaceship.shields
            obj_spaceship.shields = 0;
        }
    }
}*/

/*if currentSituationType == c_pirates {
    var hazard = 1 + floor(random(10));
    if hazard > obj_spaceship.shields {
        obj_spaceship.shields = 0;
        obj_spaceship.energy -= 300;
    }
}*/

/*if currentSituationType == c_station {
    obj_spaceship.energy = 3600;
}*/

/*if currentSituationType == c_aliens {
    if obj_spaceship.alieninvader >= 1 {
        var damnum = instance_create(obj_spaceship.x, obj_spaceship.y, obj_damage_number);
        damnum.special = 2;
        kill_random_crew();
        kill_random_crew();
    }
}

/*if currentSituationType == c_junk {
    obj_spaceship.energy += floor(random(20))+1;
    obj_spaceship.shields += floor(random(2))+1;
    obj_spaceship.HP += floor(random(2))+1;
    obj_spaceship.weapons += floor(random(2))+1;
    obj_spaceship.spd += floor(random(2))+1;
    obj_spaceship.maneuverability += floor(random(2))+1;
}*/

/*if currentSituationType == c_meteors {
    var hazard = 10 + floor(random(11));
    var hazardB = floor((obj_spaceship.maneuverability + obj_spaceship.maneuverabilityBoost) + ((obj_spaceship.weapons + obj_spaceship.weaponsBoost)/2))
    if hazardB < hazard {
        obj_spaceship.shields -= hazard;
        if obj_spaceship.shields < 0 {
            obj_spaceship.HP += obj_spaceship.shields
            obj_spaceship.shields = 0;
        }
    }
}*/

if obj_spaceship.martyr == 2 {
    eject_person();
    audio_play_sound(snd_death, 10, false);
}
