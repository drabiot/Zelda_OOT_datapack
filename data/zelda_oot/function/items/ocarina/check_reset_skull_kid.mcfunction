$execute as @a[tag=playing_ocarina] if score @s $(objective) matches $(step) unless score @s ocarina_note matches $(note) run say fumble
$execute as @a[tag=playing_ocarina] if score @s $(objective) matches $(step) unless score @s ocarina_note matches $(note) run scoreboard players set @s $(objective) 0
