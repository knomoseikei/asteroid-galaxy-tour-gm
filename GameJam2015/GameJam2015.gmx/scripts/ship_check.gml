if obj_spaceship.HP > 10 obj_spaceship.HP = 10;
if obj_spaceship.shields > 10 obj_spaceship.shields = 10;
if obj_spaceship.weapons > 10 obj_spaceship.weapons = 10;
if obj_spaceship.spd > 10 obj_spaceship.spd = 10;
if obj_spaceship.maneuverability > 10 obj_spaceship.maneuverability = 10;

if obj_spaceship.HP < 0 obj_spaceship.HP = 0;
if obj_spaceship.shields < 0 obj_spaceship.shields = 0;
if obj_spaceship.weapons < 0 obj_spaceship.weapons = 0;
if obj_spaceship.spd < 1 obj_spaceship.spd = 1;
if obj_spaceship.maneuverability < 0 obj_spaceship.maneuverability = 0;
if obj_spaceship.honor < 0 obj_spaceship.honor = 0;

if obj_spaceship.HP == 0 {
    if obj_spaceship.dying == 0 {
        obj_spaceship.dying = 1;
    }
}
