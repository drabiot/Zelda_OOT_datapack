advancement revoke @s only zelda_oot:admin/deku_stick

#Save Deku Stick number
scoreboard players operation deku_stick backup = @s deku_stick
scoreboard players remove deku_stick backup 1

#Replace Deku Stick with Deku Stick on fire if possible
item replace entity @s weapon.mainhand with torch[consumable={consume_seconds:999999999},custom_name=[{"text":"Deku Stick on fire","italic":false,"color":"red"}],lore=[[{"text":"A long stick taken from the Deku Tree.","italic":false,"color":"white"}],[{"text":"It can be swung, or lit and used as a torch.","italic":false,"color":"white"}]],item_name="Deku Stick on fire"] 1

#Wait till Deku Stick on fire expire or else
#Give back Deku Stick and remove Deku Stick on fire
schedule function zelda_oot:items/clear_torch 200t
schedule function zelda_oot:items/reset_deku_stick 200t
