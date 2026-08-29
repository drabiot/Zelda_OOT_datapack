#Koriri Houses
#Check Link's House -> Kokiri
execute positioned -427 -7 24 if entity @p[distance=..0.5] run function zelda_oot:game/kokiri_forest/wrapper/link/link_kokiri

#Check Saria's House -> Kokiri
execute positioned -410 -7 9 if entity @p[distance=..0.5] run function zelda_oot:game/kokiri_forest/wrapper/saria/saria_kokiri

#Check Shop -> Kokiri
execute positioned -393 -7 -31 if entity @p[distance=..0.5] run function zelda_oot:game/kokiri_forest/wrapper/shop/shop_kokiri

#Check Twin -> Kokiri
execute positioned -385 -7 11 if entity @p[distance=..0.5] run function zelda_oot:game/kokiri_forest/wrapper/twin/twin_kokiri

#Check KiA_Brother -> Kokiri
execute positioned -463 -4 3 if entity @p[distance=..0.5] run function zelda_oot:game/kokiri_forest/wrapper/kia_brother/kia_brother_kokiri

#Check Mido -> Kokiri
execute positioned -436 -7 -33 if entity @p[distance=..0.5] run function zelda_oot:game/kokiri_forest/wrapper/mido/mido_kokiri
execute positioned -435 -7 -33 if entity @p[distance=..0.5] run function zelda_oot:game/kokiri_forest/wrapper/mido/mido_kokiri


#Check Kokiri -> Link's House
execute positioned -427 8 22 if entity @p[distance=..0.5] run function zelda_oot:game/kokiri_forest/wrapper/link/kokiri_link

#Check Kokiri -> Saria's House
execute positioned -410 5 7 if entity @p[distance=..0.5] run function zelda_oot:game/kokiri_forest/wrapper/saria/kokiri_saria

#Check Kokiri -> Shop
execute positioned -393 5 -29 if entity @p[distance=..0.5] run function zelda_oot:game/kokiri_forest/wrapper/shop/kokiri_shop

#Check Kokiri -> Twin 
execute positioned -385 5 9 if entity @p[distance=..1.5] run function zelda_oot:game/kokiri_forest/wrapper/twin/kokiri_twin

#Check Kokiri -> KiA_Brother 
execute positioned -461 10 3 if entity @p[distance=..1.5] run function zelda_oot:game/kokiri_forest/wrapper/kia_brother/kokiri_kia_brother

#Check Kokiri -> Mido
execute positioned -436 5 -31 if entity @p[distance=..0.5] run function zelda_oot:game/kokiri_forest/wrapper/mido/kokiri_mido
execute positioned -435 5 -31 if entity @p[distance=..0.5] run function zelda_oot:game/kokiri_forest/wrapper/mido/kokiri_mido


#Trial
#Trial -> Kokiri
execute positioned -450 10 22 if entity @p[distance=..1,tag=!load_kokiri_forest] run function zelda_oot:game/kokiri_forest/wrapper/trial/trial_kokiri

#Kokiri -> Trial
execute positioned -450 10 30 if entity @p[distance=..1,tag=!load_trial] run function zelda_oot:game/kokiri_forest/wrapper/trial/kokiri_trial

execute positioned -450 10 26 if entity @p[distance=6..] run function zelda_oot:game/kokiri_forest/wrapper/trial/remove_tag


#Deku Tree
#Deku Tree -> Kokiri
execute positioned 1281 16 -60 if entity @a[distance=..3] run function zelda_oot:game/kokiri_forest/wrapper/deku_tree/deku_tree_kokiri

#Kokiri -> Deku Tree
execute positioned -290 2 -56 if entity @p[distance=..3] run function zelda_oot:game/kokiri_forest/wrapper/deku_tree/kokiri_deku_tree

#Lost Woods
#Lost Woods -> Kokiri
execute positioned -529 16 -57 if entity @p[distance=..2.5] run function zelda_oot:game/kokiri_forest/wrapper/lost_woods/lost_woods_kokiri
execute positioned -530 16 -57 if entity @p[distance=..2.5] run function zelda_oot:game/kokiri_forest/wrapper/lost_woods/lost_woods_kokiri

execute positioned -529 16 -82 if entity @p[distance=..2.5] run function zelda_oot:game/kokiri_forest/wrapper/lost_woods/lost_woods_kokiri
execute positioned -530 16 -82 if entity @p[distance=..2.5] run function zelda_oot:game/kokiri_forest/wrapper/lost_woods/lost_woods_kokiri

execute positioned -506 16 -57 if entity @p[distance=..2.5] run function zelda_oot:game/kokiri_forest/wrapper/lost_woods/lost_woods_kokiri
execute positioned -507 16 -57 if entity @p[distance=..2.5] run function zelda_oot:game/kokiri_forest/wrapper/lost_woods/lost_woods_kokiri

execute positioned -519 16 -92 if entity @p[distance=..2.5] run function zelda_oot:game/kokiri_forest/wrapper/lost_woods/lost_woods_kokiri
execute positioned -519 16 -93 if entity @p[distance=..2.5] run function zelda_oot:game/kokiri_forest/wrapper/lost_woods/lost_woods_kokiri

execute positioned -483 16 -80 if entity @p[distance=..2.5] run function zelda_oot:game/kokiri_forest/wrapper/lost_woods/lost_woods_kokiri
execute positioned -484 16 -80 if entity @p[distance=..2.5] run function zelda_oot:game/kokiri_forest/wrapper/lost_woods/lost_woods_kokiri

execute positioned -471 16 -115 if entity @p[distance=..2.5] run function zelda_oot:game/kokiri_forest/wrapper/lost_woods/lost_woods_kokiri
execute positioned -471 16 -116 if entity @p[distance=..2.5] run function zelda_oot:game/kokiri_forest/wrapper/lost_woods/lost_woods_kokiri

execute positioned -471 16 -138 if entity @p[distance=..2.5] run function zelda_oot:game/kokiri_forest/wrapper/lost_woods/lost_woods_kokiri
execute positioned -471 16 -139 if entity @p[distance=..2.5] run function zelda_oot:game/kokiri_forest/wrapper/lost_woods/lost_woods_kokiri

execute positioned -484 16 -151 if entity @p[distance=..2.5] run function zelda_oot:game/kokiri_forest/wrapper/lost_woods/lost_woods_kokiri
execute positioned -483 16 -151 if entity @p[distance=..2.5] run function zelda_oot:game/kokiri_forest/wrapper/lost_woods/lost_woods_kokiri

execute positioned -519 16 -138 if entity @p[distance=..2.5] run function zelda_oot:game/kokiri_forest/wrapper/lost_woods/lost_woods_kokiri
execute positioned -519 16 -139 if entity @p[distance=..2.5] run function zelda_oot:game/kokiri_forest/wrapper/lost_woods/lost_woods_kokiri

execute positioned -506 16 -126 if entity @p[distance=..2.5] run function zelda_oot:game/kokiri_forest/wrapper/lost_woods/lost_woods_kokiri
execute positioned -507 16 -126 if entity @p[distance=..2.5] run function zelda_oot:game/kokiri_forest/wrapper/lost_woods/lost_woods_kokiri

#Kokiri -> Lost Woods
execute positioned -433 17 -69 if entity @p[distance=..2.5] run function zelda_oot:game/kokiri_forest/wrapper/lost_woods/kokiri_lost_woods
execute positioned -432 17 -69 if entity @p[distance=..2.5] run function zelda_oot:game/kokiri_forest/wrapper/lost_woods/kokiri_lost_woods
