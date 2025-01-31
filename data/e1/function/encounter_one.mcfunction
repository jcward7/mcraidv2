#uses scoreboard "encounter1"
execute if entity @e[tag=dummy,scores={encounter1=2}] run tellraw @a[team=dev] {"text":"encounter_one: function started","color":"yellow"}


execute if entity @e[tag=dummy,scores={encounter1=40}] run setblock -4 -60 -2 redstone_block
execute if entity @e[tag=dummy,scores={encounter1=40}] run tellraw @a[team=dev] {"text":"encounter_one: set a redstone block to begin warped_create_node","color":"yellow"}

execute if entity @e[tag=dummy,scores={encounter1=200}] run function e1:summon_cooking_test

execute if entity @e[tag=dummy,scores={encounter1=600..}] run tellraw @a[team=dev] {"text":"encounter_one: runtime has reached 30 seconds, resetting this encounter","color":"yellow"}
execute if entity @e[tag=dummy,scores={encounter1=600..}] run kill @e[tag=hyphae]
execute if entity @e[tag=dummy,scores={encounter1=600..}] run setblock -4 -60 0 minecraft:air
execute if entity @e[tag=dummy,scores={encounter1=600..}] run scoreboard players set @e[tag=dummy] encounter1 0