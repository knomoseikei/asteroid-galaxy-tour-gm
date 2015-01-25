ds_list_clear(crewList);

if obj_spaceship.gunner > 0 {
    repeat (5 * obj_spaceship.gunner) {
        ds_list_add(crewList, "Gunner");
    }
}

if obj_spaceship.mechanic > 0 {
    repeat (5 * obj_spaceship.mechanic) {
        ds_list_add(crewList, "Mechanic");
    }
}

if obj_spaceship.engineer > 0 {
    repeat (5 * obj_spaceship.engineer) {
        ds_list_add(crewList, "Engineer");
    }
}

if obj_spaceship.pilot > 0 {
    repeat (5 * obj_spaceship.pilot) {
        ds_list_add(crewList, "Pilot");
    }
}

if obj_spaceship.soldier > 0 {
    repeat (5 * obj_spaceship.soldier) {
        ds_list_add(crewList, "Soldier")
    }
}

if obj_spaceship.crew > 0 {
    repeat (2 * obj_spaceship.crew) {
        ds_list_add(crewList, "Crew");
    }
}

if obj_spaceship.janitor > 0 {
    repeat (1 * obj_spaceship.janitor) {
        ds_list_add(crewList, "Janitor");
    }
}

ds_list_add(crewList, "Devil");

ds_list_shuffle(crewList);

// get crew
crew[0] = ds_list_find_value(crewList, 0);

do {
    ds_list_shuffle(crewList);
    crew[1] = ds_list_find_value(crewList, 0)
}
until (crew[1]!= crew[0] || crew[1] = "Devil")

do {
    ds_list_shuffle(crewList);
    crew[2] = ds_list_find_value(crewList, 0)
}
until ((crew[2]!= crew[0] && crew[2]!= crew[1]) || crew[2] = "Devil")

//void list

ds_list_empty(crewList);

//give buttons info

button[0].crewType = crew[0];
button[0].crewPower = random(100);

button[1].crewType = crew[1];
button[1].crewPower = random(100);

button[2].crewType = crew[2];
button[2].crewPower = random(100);

currentState = "CrewSelection"
