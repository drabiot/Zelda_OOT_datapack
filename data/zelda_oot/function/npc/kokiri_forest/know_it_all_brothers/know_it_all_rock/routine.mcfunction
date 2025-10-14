schedule function zelda_oot:npc/kokiri_forest/know_it_all_brothers/know_it_all_rock/routine/head_up 1t append
schedule function zelda_oot:npc/kokiri_forest/know_it_all_brothers/know_it_all_rock/routine/head_up 2t append
schedule function zelda_oot:npc/kokiri_forest/know_it_all_brothers/know_it_all_rock/routine/head_up 3t append
schedule function zelda_oot:npc/kokiri_forest/know_it_all_brothers/know_it_all_rock/routine/head_up 4t append
schedule function zelda_oot:npc/kokiri_forest/know_it_all_brothers/know_it_all_rock/routine/head_up 5t append
schedule function zelda_oot:npc/kokiri_forest/know_it_all_brothers/know_it_all_rock/routine/head_up 6t append

schedule function zelda_oot:npc/kokiri_forest/know_it_all_brothers/know_it_all_rock/routine/head_down 20t append
schedule function zelda_oot:npc/kokiri_forest/know_it_all_brothers/know_it_all_rock/routine/head_down 21t append
schedule function zelda_oot:npc/kokiri_forest/know_it_all_brothers/know_it_all_rock/routine/head_down 22t append

execute positioned -431 5 -29.0 if entity @e[type=mannequin,distance=..2] run schedule function zelda_oot:npc/kokiri_forest/know_it_all_brothers/know_it_all_rock/routine 24t append
