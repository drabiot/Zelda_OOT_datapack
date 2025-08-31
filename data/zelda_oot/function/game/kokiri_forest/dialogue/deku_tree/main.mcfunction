# 1. Passer en spectateur
function zelda_oot:game/kokiri_forest/dialogue/deku_tree/spec_mod

# 2. TP1 immédiat (pas de schedule)
function zelda_oot:game/kokiri_forest/dialogue/deku_tree/tp1

# 3. Effacer l’écran (space)
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/space 10t

# 4. Dialogue part1
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part1 20t

# 5. Dialogue part2
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part2 30t

# 6. TP2
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/tp2 40t

# 7. Dialogue part3
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part3 50t

# 8. Dialogue part4
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part4 60t

# 9. TP3
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/tp3 70t

# 10. Dialogue part5
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/part5 80t

# 11. TP4
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/tp4 90t

# 12. Repasser en adventure
schedule function zelda_oot:game/kokiri_forest/dialogue/deku_tree/adv_mod 100t
