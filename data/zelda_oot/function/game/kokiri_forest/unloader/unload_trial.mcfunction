#Destroy Grass
execute positioned -442 9 46 run kill @e[type=minecraft:falling_block,distance=..25]

#Load sign
setblock -431 11 58 spruce_sign[rotation=10]{front_text:{messages:[[{"text":"Visit ","color":"white"},{"text":"Know-it-All","color":"dark_red"}],[{"text":"Brothers","color":"dark_red"},{"text":" to get","color":"white"}],[{"text":"answers to all","color":"white"}],[{"text":"your questions!","color":"white"}]]},is_waxed:true} replace
setblock -450 10 41 spruce_sign[rotation=8]{front_text:{messages:[[{"text":"Move quickly","color":"white"}],[{"text":"Watch out","color":"dark_red"}],[{"text":"for","color":"white"}],[{"text":"the Rock","color":"white"}]]},is_waxed:true} replace
