var situationRandom = random(100)

if situationRandom < situationChance[argument0, 0] {
    currentSituationType = situationType[argument0, 0];
}

if situationRandom >= situationChance[argument0, 0] &&
situationRandom < situationChance[argument0, 1] + situationChance[argument0, 0]
{
    currentSituationType = situationType[argument0, 1];
}

if situationRandom >= situationChance[argument0, 1] + situationChance[argument0, 0] &&
situationRandom < situationChance[argument0, 2] + situationChance[argument0, 1] + situationChance[argument0, 0] {
    currentSituationType = situationType[argument0, 2];
}

if situationRandom >= situationChance[argument0, 2] + situationChance[argument0, 1] + situationChance[argument0, 0] {
    currentSituationType = c_empty;
}

button[0].situationType = currentSituationType;
button[1].situationType = currentSituationType;
button[2].situationType = currentSituationType;


select_crew();