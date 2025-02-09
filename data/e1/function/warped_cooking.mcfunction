
#the following line DISABLES the item from being removed from the hyphae's head slot
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run data modify entity @e[tag=hyphae,limit=1] DisabledSlots set value 2039583

execute if entity @e[tag=dummy,scores={warpedCooking=2}] run tellraw @a {"text":"The Warped Core begins to energize..."}
execute if entity @e[tag=dummy,scores={warpedCooking=2}] as @e[tag=hyphae] at @e[tag=hyphae] run summon arrow ~ ~-10 ~ {NoGravity:1b,Motion:[0.0,-0.05,0.0],Tags:["cooking_animator"]}
execute at @e[tag=cooking_animator] if entity @e[tag=dummy,scores={warpedCooking=3..22}] run tp @e[tag=hyphae] ~ ~10 ~


execute if entity @e[tag=dummy,scores={warpedCooking=23}] run kill @e[tag=cooking_animator]


execute if entity @e[tag=dummy,scores={warpedCooking=60}] run data merge entity @e[tag=hyphae,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:warped_hyphae",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:custom_name":'{"bold":true,"color":"dark_purple","text":"Cooked Warped Core"}'}}]}
execute if entity @e[tag=dummy,scores={warpedCooking=60}] run data modify entity @e[tag=hyphae,limit=1] DisabledSlots set value 47
execute if entity @e[tag=dummy,scores={warpedCooking=60}] as @e[tag=hyphae] at @e[tag=hyphae] run summon arrow ~ ~-10 ~ {NoGravity:1b,Motion:[0.0,0.05,0.0],Tags:["cooking_animator"]}

execute at @e[tag=cooking_animator] if entity @e[tag=dummy,scores={warpedCooking=60..80}] run tp @e[tag=hyphae] ~ ~10 ~
execute if entity @e[tag=dummy,scores={warpedCooking=80}] run tellraw @a {"text":"The Warped Core is ready!"}
execute if entity @e[tag=dummy,scores={warpedCooking=81}] run kill @e[tag=cooking_animator]

execute if entity @e[tag=dummy,scores={warpedCooking=82..}] run setblock -4 -60 2 minecraft:air
execute if entity @e[tag=dummy,scores={warpedCooking=82..}] run scoreboard players set @e[tag=dummy] warpedCooking 0