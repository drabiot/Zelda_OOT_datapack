tellraw @a {"text":"Dost thou have courage enought to undertake this task?"}
tellraw @a ["",{"text":" \u0020 \u0020 "},{"text":"Yes","color":"green","click_event":{"action":"run_command","command":"trigger deku_tree_yes add 1"}}]
tellraw @a ["",{"text":" \u0020 \u0020 "},{"text":"No","color":"green","click_event":{"action":"run_command","command":"trigger deku_tree_no add 1"}}]
