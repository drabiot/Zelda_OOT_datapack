#Block Rock Interaction
summon interaction -431 5 -29 {width:0.5f,height:0.3f,response:false,}

summon mannequin -431 5 -29.0 {CustomName:"know_it_all_grass",pose:"crouching",NoGravity:1b,Invulnerable:1b,immovable:true,attributes:[{id:"minecraft:scale",base:0.9}]}
summon interaction -431 5 -29.0 {width:0.8f,height:1.8f,response:true,Tags:["know_it_all_grass"]}

function zelda_oot:npc/kokiri_forest/know_it_all_brothers/know_it_all_rock/routine
