var situationRandom = random(100)

if situationRandom < situationType[argument0, 0] {
    currentSituation = situationType[argument0, 0]
}

if situationRandom >= situationType[argument0, 0] &&
situationRandom < situationType[argument0, 1] {
    currentSituation = situationType[argument0, 1]
}

if situationRandom >= situationType[argument0, 1] &&
situationRandom < situationType[argument0, 2] {
    currentSituation = situationType[argument0, 2]
}

if situationRandom < situationType[argument0, 2] {
    currentSituation = c_empty
}

select_crew();
