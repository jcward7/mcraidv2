#uses scoreboard "encounter1"
execute if entity @e[tag=dummy,scores={encounter1=2}] run tellraw @a[team=dev] {"text":"encounter_one: function started","color":"yellow"}

#teleport node placement
execute if entity @e[tag=dummy,scores={encounter1=2}] run setblock 268 134 181 minecraft:warped_hyphae
execute as @e[type=player] at @e[type=player] if block ~ ~-1 ~ minecraft:warped_hyphae run tp @s 244 120 169

execute if entity @e[tag=dummy,scores={encounter1=40}] run setblock -4 -60 -2 redstone_block
execute if entity @e[tag=dummy,scores={encounter1=40}] run tellraw @a[team=dev] {"text":"encounter_one: set a redstone block to begin warped_create_node","color":"yellow"}

execute if entity @e[tag=dummy,scores={encounter1=200}] run function e1:summon_cooking_test
execute if entity @e[type=armor_stand,tag=hyphae,nbt={ArmorItems:[{},{},{},{id:"minecraft:warped_hyphae",count:1,components:{"minecraft:equippable":{slot:"head",equip_sound:"block.beacon.activate",allowed_entities:"armor_stand",swappable:false},"minecraft:custom_name":'{"color":"white","italic":true,"text":"Raw Warped Hyphae"}'}}]}] run function e1:warped_cooking_test

execute if entity @e[tag=dummy,scores={encounter1=600..}] run tellraw @a[team=dev] {"text":"encounter_one: runtime has reached 30 seconds, resetting this encounter","color":"yellow"}
execute if entity @e[tag=dummy,scores={encounter1=600..}] run kill @e[tag=hyphae]

#removing teleport node
execute if entity @e[tag=dummy,scores={encounter1=600..}] run setblock 268 134 181 minecraft:air


execute if entity @e[tag=dummy,scores={encounter1=600..}] run function e1:warped_test_reset
#DO NOT CHANGE - these 2 lines should always come last
execute if entity @e[tag=dummy,scores={encounter1=600..}] run setblock -4 -60 0 minecraft:air
execute if entity @e[tag=dummy,scores={encounter1=600..}] run scoreboard players set @e[tag=dummy] encounter1 0
