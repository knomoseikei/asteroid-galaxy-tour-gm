if crewType = "Gunner" {
    if crewPower < 60 {
        obj_spaceship.weaponsBoost = 3;
        obj_spaceship.honor += 1;
    }
    if crewPower >= 60 && crewPower < 90 {
        obj_spaceship.weaponsBoost = 2;
        obj_spaceship.honor += 2;
    }
    if crewPower >= 90 {
        obj_spaceship.weaponsBoost = 1;
    }
}

if crewType = "Pilot" {
    if crewPower < 60 {
        obj_spaceship.spdBoost = 4;
        obj_spaceship.maneuverabilityBoost = 1;
    }
    if crewPower >= 60 && crewPower < 90 {
        obj_spaceship.spdBoost = 2;
        obj_spaceship.maneuverabilityBoost = 2;
    }
    if crewPower >= 90 {
        obj_spaceship.spdBoost = 1;
        obj_spaceship.maneuverabilityBoost = 1;
    }
}

if crewType = "Mechanic" {
    if crewPower < 60 {
        obj_spaceship.HP += 3
    }
    if crewPower >= 60 && crewPower < 90 {
        obj_spaceship.HP += 2
    }
    if crewPower >= 90 {
        obj_spaceship.HP += 1
    }
}

if crewType = "Engineer" {
    if crewPower < 60 {
        obj_spaceship.shields += 5
    }
    if crewPower >= 60 && crewPower < 90 {
        obj_spaceship.shields += 4
    }
    if crewPower >= 90 {
        obj_spaceship.shields += 2
    }
}

if crewType = "Soldier" {
    if crewPower < 60 {
        obj_spaceship.weaponsBoost = 2;
        obj_spaceship.alienInvaded = false; 
    }
    if crewPower >= 60 && crewPower < 90 {
        obj_spaceship.honor += 1;
        obj_spaceship.alienInvaded = false; 
        obj_spaceship.soldier -= 1;
    }
    if crewPower >= 90 {
        obj_spaceship.alienInvaded = false; 
        obj_spaceship.soldier -= 1;
    }
}

ship_check()
