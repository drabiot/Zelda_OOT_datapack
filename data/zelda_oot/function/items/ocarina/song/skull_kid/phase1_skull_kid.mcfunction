$function zelda_oot:items/ocarina/check_step {objective:"skull_kid_r1",from:2,note:$(n3),to:3}
$function zelda_oot:items/ocarina/check_step {objective:"skull_kid_r1",from:1,note:$(n2),to:2}
$function zelda_oot:items/ocarina/check_step {objective:"skull_kid_r1",from:0,note:$(n1),to:1}

$function zelda_oot:items/ocarina/check_reset_skull_kid {objective:"skull_kid_r1",step:2,note:$(n2)}
$function zelda_oot:items/ocarina/check_reset_skull_kid {objective:"skull_kid_r1",step:1,note:$(n1)}

$function zelda_oot:items/ocarina/check_final {objective:"skull_kid_r1",from:3,note:$(n3),func:"zelda_oot:items/ocarina/song/reward/skull_kid/skull_kid_r1_win"}
