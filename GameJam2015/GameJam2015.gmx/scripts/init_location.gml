for (var i = 0; i < 3; i++) {
    button[i].locationTarget = situationDestination[argument0, i]
    button[i].locationDescription = situationDescription[argument0, i]
    button[i].enabled = situationExit[argument0, i]
}

debuff_ship();
show_debug_message("Debuffing");
