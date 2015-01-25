ds_list_clear(obj_control.crewList);

if obj_spaceship.gunner > 0 {
    repeat (5 * obj_spaceship.gunner) {
        ds_list_add(obj_control.crewList, "Gunner");
    }
}

if obj_spaceship.mechanic > 0 {
    repeat (5 * obj_spaceship.mechanic) {
        ds_list_add(obj_control.crewList, "Mechanic");
    }
}

if obj_spaceship.engineer > 0 {
    repeat (5 * obj_spaceship.engineer) {
        ds_list_add(obj_control.crewList, "Engineer");
    }
}

if obj_spaceship.pilot > 0 {
    repeat (5 * obj_spaceship.pilot) {
        ds_list_add(obj_control.crewList, "Pilot");
    }
}

if obj_spaceship.soldier > 0 {
    repeat (5 * obj_spaceship.soldier) {
        ds_list_add(obj_control.crewList, "Soldier")
    }
}

if obj_spaceship.crew > 0 {
    repeat (2 * obj_spaceship.crew) {
        ds_list_add(obj_control.crewList, "Crew");
    }
}

if obj_spaceship.janitor > 0 {
    repeat (1 * obj_spaceship.janitor) {
        ds_list_add(obj_control.crewList, "Janitor");
    }
}
if ds_list_size(obj_control.crewList) > 0
{
    ds_list_shuffle(obj_control.crewList);
    var killCrew = ds_list_find_value(obj_control.crewList, 0);
    show_debug_message(killCrew);
    if killCrew = "Soldier" obj_spaceship.soldier--;
    if killCrew = "Gunner" obj_spaceship.gunner--;
    if killCrew = "Pilot" obj_spaceship.pilot--;
    if killCrew = "Engineer" obj_spaceship.engineer--;
    if killCrew = "Mechanic" obj_spaceship.mechanic--;
    if killCrew = "Janitor" obj_spaceship.janitor--;
    if killCrew = "Crew" obj_spaceship.crew--;
    ds_list_empty(obj_control.crewList);
} else {
    if obj_spaceship.deserted == 0 obj_spaceship.deserted = 1;
}
