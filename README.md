<div align="center">
  <h1> ⚔️ The Legend of Zelda Ocarina of Time Minecraft Datapack
  </h1>
</div>

---

This datapack combine with the correct Map & texture pack, create the epic journey of Link in Hyrule.
Even if this datapack add world based event, it also create The Legend of Zelda based items like the Fairy Slingshot.

![Static Badge](https://img.shields.io/badge/language-minecraft_java-green)
![Static Badge](https://img.shields.io/badge/version-26.2-yellow)

## Summary

- [Basic information](#basic-information)
- [Use the datapack](#use-the-datapack)
- [Documentation](#documentation)
  - [Gameplay](#gameplay)
    - [Sneaking/Crawling](#sneakingcrawling)
  - [Player Tag](#player-tag)
    - [Admin](#admin)
	- [Player Status](#player-status)
	- [Kokiri Forest](#kokiri-forest)
  - [Sources](#sources)
  - [Thanks](#thanks)

## BASIC INFORMATION

The datapack and the map cover only the Kokiri Forest & the Great Deku Tree for the moment. 

To have the true experience combine the datapack with the Adventure Map & the [Zelda Ocarina of Time ressourcepack](https://github.com/drabiot/Zelda_OOT_texturepack). Moreover, this datapack work only for singleplayer and may have bugs when played in multiplayer.

The datapack run in minecraft version 26.2 & above.

Everything is made by hand with love and passion, so feel free to give me constructed feedback!

## USE THE DATAPACK

Go into the datapack files of the world you want to put it in

```bash
  cd AppData/Roaming/.minecraft/saves/<your world>/datapacks
```

Clone the project 

```bash
  git clone https://github.com/drabiot/Zelda_OOT_datapack.git.git
```

Launch you save and to check if everything is working reload the datapack

```cpp
  /reload
```

If you see the message: "Zelda OOT loaded", everything must be ok

## DOCUMENTATION

### GAMEPLAY

There are a few new gameplay mechanics in this datapack.

#### SNEAKING/CRAWLING

The sneak key force you to crawl. You can by this new mechanics travel to thigh place, like th Hole of 'Z'.

<img width="480" height="311" alt="crawling" src="https://github.com/user-attachments/assets/6abafef8-0c83-4e61-a378-e4788779971e" />

You can crawl everywhere at any time (except in dialogue & cinematic)

### PLAYER TAG

#### ADMIN

| Tag | Usage | Unique | Reset |
| ---- | ---- | :----: | ----- |
| dev | admin rule that deny every other inconveniant tag | ⚠️ |  |

#### PLAYER STATUS

| Tag | Usage | Unique | Reset |
| ---- | ---- | :----: | ----- |
| is_sneak | Check if you're in sneak | ❌ | Remove when you aren't sneaking |
| dialogue | Prevent player from retrigger dialogue when we are in one already | ❌ | Remove after finishing dialogue |
| slingshot_possess | Check if you have the Fairy Slingshot unlocked | ✅ |  |
| playing_ocarina | Check that the player play ocarina | ❌ | Remove after finish playing ocarina |
| already_playing | Prevent player from retrigger ocarina | ❌ | Remove after finish playing ocarina |

#### KOKIRI FOREST

| Tag | Usage | Unique | Reset |
| ---- | ---- | :----: | ----- |
| mido_reward_blue_1 | Check if you grab the one time reward of one of the 4 chest in Mido's house (blue rupee) | ✅ |  |
| mido_reward_blue_2 | Check if you grab the one time reward of one of the 4 chest in Mido's house (blue rupee) | ✅ |  |
| mido_reward_green | Check if you grab the one time reward of one of the 4 chest in Mido's house (green rupee) | ✅ |  |
| mido_reward_heart | Check if you grab the one time reward of one of the 4 chest in Mido's house (healing heart) | ✅ |  |
| thrust_sign | Check if you cut the sign in the training area | ✅ |  |
| trial_pound_1 | Check if the player pass in the trial pound 1 to check if he succeed the trial pound | ❌ | Remove if you leave the trial area |
| trial_pound_2 | Check if the player pass in the trial pound 2 to check if he succeed the trial pound | ❌ | Remove if you leave the trial area |
| trial_pound_3 | Check if the player pass in the trial pound 3 to check if he succeed the trial pound | ❌ | Remove if you leave the trial area |
| trial_pound_finished | Check if the player finished the trial pound | ❌ | Remove when you leave Kokiri Forest |
| kokiri_shop | Prevent the player from jumping in the shop | ❌ | Remove when you quit the Kokiri shop |
| load_trial | Point the fact that player is in the trial zone for the loader/unloader | ❌ | Remove when you quit the Trial Zone |
| trial_kokiri | Load the trial zone boulder | ❌ | Remove when you quit the Trial Zone |
| load_kokiri_forest | Point the fact that player is in the Kokiri forest for the loader/unloader | ❌ | Remove when you quit the Kokiri Forest |
| way_to_deku_tree | Check if you can go to the Greate Deku Tree blocked by Mido | ✅ |  |
| deku_tree_dialogue_1 | Move & prevent player to move during Deku Tree Dialogue | ✅ |  |
| deku_tree_dialogue_2 | Move & prevent player to move during Deku Tree Dialogue | ✅ |  |
| deku_tree_dialogue_3 | Move & prevent player to move during Deku Tree Dialogue | ✅ |  |
| deku_tree_dialogue_maybe | Move player after Deku Tree Dialogue | ✅ |  |
| deku_tree_dialogue_no | Move player after Deku Tree Dialogue | ✅ |  |
| deku_tree_no | Save the answer you gave to Deku Tree | ❌ | Remove after speaking to the Greate Deku Tree |
| deku_tree_yes | Save the answer you gave to Deku Tree | ❌ | Remove after speaking to the Greate Deku Tree |
| deku_tree_again | Check if you already talked to the Deku Tree | ❌ |  Remove after speaking to the Greate Deku Tree |
| deku_tree_d_finish | Check if the Deku Tree dialogue is finished | ✅ |  |
| bullseye_challenge | Check if you complete the bullseye challenge in the Lost Wood | ✅ |  |

## SOURCE
- [AmberWat](https://github.com/AmberWat/NegativeSpaceFont) for usage of negative space for displaying the healthbar
- [Cl0udWolf](https://www.youtube.com/@Cl0udWolf) for the datapack learning

## THANKS
And a big tanhks to all my friends that have support me on this project & help me a lot (more a little)

- [Basilounet](https://github.com/basilounet)
- [Radvak](https://github.com/Radvak)

Who help me with tedious and boring task


- [PGBmax](https://github.com/PGBmax)
- [Manualouest](https://github.com/Manualouest)
- [Xeotham](https://github.com/Xeotham)
- Yahiko

Who see my journey and encourage me


- [Thomas](https://github.com/Convolutio)
- [noenic](https://github.com/noenic)
- Pkrazy

Who playtest the demo

And a big thank to Ishi-sama without whom the project would never have existed. Even though our paths have diverged, I am grateful to him, and I am proud of what I have achieved, considering what the project looked like in the beginning.
