#summon these 2 armorstands:
#summon minecraft:armor_stand ~ ~ ~ {teleport_duration:100,NoGravity:1b,Tags:["item_test"]}
#summon minecraft:armor_stand ~ ~ ~ {teleport_duration:100,NoGravity:1b,Tags:["item_test2"]}
#PROOF OF CONCEPT run this function on an always active command block
execute as @e[tag=item_test] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=item_test] at @s run tp @e[tag=item_test2] ^2 ^ ^
execute as @e[tag=wellkeeper] at @e[tag=wellkeeper] run tp @e[tag=item_test] ~ ~ ~