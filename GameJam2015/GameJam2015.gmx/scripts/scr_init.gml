currentSituation = 0
currentState = "Idle"
resolving = 1

scr_script();

button[0] = instance_create(x, y, obj_button);
button[0].x = 0;
button[0].y = room_height;
button[0].option = 0;

button[1] = instance_create(x, y, obj_button);
button[1].x = 342;
button[1].y = room_height;
button[1].option = 1;

button[2] = instance_create(x, y, obj_button);
button[2].x = 684;
button[2].y = room_height;
button[2].option = 2;

crewList = ds_list_create();
