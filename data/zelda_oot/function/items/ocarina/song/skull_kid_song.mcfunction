#Clear out previous steps
scoreboard players set note_1 skull_kid_song 0
scoreboard players set note_2 skull_kid_song 0
scoreboard players set note_3 skull_kid_song 0
scoreboard players set note_4 skull_kid_song 0
scoreboard players set note_5 skull_kid_song 0
scoreboard players set note_6 skull_kid_song 0
scoreboard players set note_7 skull_kid_song 0
scoreboard players set note_8 skull_kid_song 0

#Randomize note
execute store result score note_1 skull_kid_song run random value 1..5
execute store result score note_2 skull_kid_song run random value 1..5
execute store result score note_3 skull_kid_song run random value 1..5
execute store result score note_4 skull_kid_song run random value 1..5
execute store result score note_5 skull_kid_song run random value 1..5
execute store result score note_6 skull_kid_song run random value 1..5
execute store result score note_7 skull_kid_song run random value 1..5
execute store result score note_8 skull_kid_song run random value 1..5

data modify storage zelda_oot:macro input set value {n1:0,n2:0,n3:0,n4:0,n5:0,n6:0,n7:0,n8:0}

execute store result storage zelda_oot:macro input.n1 int 1 run scoreboard players get note_1 skull_kid_song
execute store result storage zelda_oot:macro input.n2 int 1 run scoreboard players get note_2 skull_kid_song
execute store result storage zelda_oot:macro input.n3 int 1 run scoreboard players get note_3 skull_kid_song
execute store result storage zelda_oot:macro input.n4 int 1 run scoreboard players get note_4 skull_kid_song
execute store result storage zelda_oot:macro input.n5 int 1 run scoreboard players get note_5 skull_kid_song
execute store result storage zelda_oot:macro input.n6 int 1 run scoreboard players get note_6 skull_kid_song
execute store result storage zelda_oot:macro input.n7 int 1 run scoreboard players get note_7 skull_kid_song
execute store result storage zelda_oot:macro input.n8 int 1 run scoreboard players get note_8 skull_kid_song

execute as @a[scores={ocarina_playing=1..}] run function zelda_oot:items/ocarina/song/skull_kid/phase1_skull_kid with storage zelda_oot:macro input
