
#the following line DISABLES the item from being removed from the hyphae's head slot
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run data modify entity @e[tag=hyphae,limit=1] DisabledSlots set value 2039583
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run tellraw @a {"text":"The Warped Core begins to energize..."}

#door diagram (facing north)
#   1
# 2 3 4
# 5 6 7
# 8 9 10
#North Door
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run setblock 243 120 142 minecraft:barrier
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run fill 244 119 142 242 117 142 minecraft:barrier
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run summon armor_stand 243.50 113.79 142.50 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["ndoor1","door"],attributes:[{id:"minecraft:scale",base:1.60}],DisabledSlots:47,ArmorItems:[{},{},{},{id:"minecraft:obsidian",count:1}]}
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run summon armor_stand 242.50 112.79 142.50 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["ndoor2","door"],attributes:[{id:"minecraft:scale",base:1.60}],DisabledSlots:47,ArmorItems:[{},{},{},{id:"minecraft:obsidian",count:1}]}
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run summon armor_stand 243.50 112.79 142.50 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["ndoor3","door"],attributes:[{id:"minecraft:scale",base:1.60}],DisabledSlots:47,ArmorItems:[{},{},{},{id:"minecraft:obsidian",count:1}]}
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run summon armor_stand 244.50 112.79 142.50 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["ndoor4","door"],attributes:[{id:"minecraft:scale",base:1.60}],DisabledSlots:47,ArmorItems:[{},{},{},{id:"minecraft:crying_obsidian",count:1}]}
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run summon armor_stand 242.50 111.79 142.50 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["ndoor5","door"],attributes:[{id:"minecraft:scale",base:1.60}],DisabledSlots:47,ArmorItems:[{},{},{},{id:"minecraft:obsidian",count:1}]}
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run summon armor_stand 243.50 111.79 142.50 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["ndoor6","door"],attributes:[{id:"minecraft:scale",base:1.60}],DisabledSlots:47,ArmorItems:[{},{},{},{id:"minecraft:obsidian",count:1}]}
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run summon armor_stand 244.50 111.79 142.50 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["ndoor7","door"],attributes:[{id:"minecraft:scale",base:1.60}],DisabledSlots:47,ArmorItems:[{},{},{},{id:"minecraft:obsidian",count:1}]}
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run summon armor_stand 243.50 110.79 142.50 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["ndoor8","door"],attributes:[{id:"minecraft:scale",base:1.60}],DisabledSlots:47,ArmorItems:[{},{},{},{id:"minecraft:obsidian",count:1}]}
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run summon armor_stand 242.50 110.79 142.50 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["ndoor9","door"],attributes:[{id:"minecraft:scale",base:1.60}],DisabledSlots:47,ArmorItems:[{},{},{},{id:"minecraft:obsidian",count:1}]}
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run summon armor_stand 244.50 110.79 142.50 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["ndoor10","door"],attributes:[{id:"minecraft:scale",base:1.60}],DisabledSlots:47,ArmorItems:[{},{},{},{id:"minecraft:obsidian",count:1}]}
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run summon arrow 243.50 103.79 142.50 {NoGravity:1b,Motion:[0.0,0.1,0.0],Tags:["ndoor_animator"]}
execute at @e[tag=ndoor_animator] if entity @e[tag=dummy,scores={warpedCooking=3..53}] run tp @e[tag=ndoor1] ~ ~10 ~
execute at @e[tag=ndoor_animator] if entity @e[tag=dummy,scores={warpedCooking=3..53}] run tp @e[tag=ndoor2] ~-1 ~9 ~
execute at @e[tag=ndoor_animator] if entity @e[tag=dummy,scores={warpedCooking=3..53}] run tp @e[tag=ndoor3] ~ ~9 ~
execute at @e[tag=ndoor_animator] if entity @e[tag=dummy,scores={warpedCooking=3..53}] run tp @e[tag=ndoor4] ~1 ~9 ~
execute at @e[tag=ndoor_animator] if entity @e[tag=dummy,scores={warpedCooking=3..53}] run tp @e[tag=ndoor5] ~-1 ~8 ~
execute at @e[tag=ndoor_animator] if entity @e[tag=dummy,scores={warpedCooking=3..53}] run tp @e[tag=ndoor6] ~ ~8 ~
execute at @e[tag=ndoor_animator] if entity @e[tag=dummy,scores={warpedCooking=3..53}] run tp @e[tag=ndoor7] ~1 ~8 ~
execute at @e[tag=ndoor_animator] if entity @e[tag=dummy,scores={warpedCooking=3..53}] run tp @e[tag=ndoor8] ~-1 ~7 ~
execute at @e[tag=ndoor_animator] if entity @e[tag=dummy,scores={warpedCooking=3..53}] run tp @e[tag=ndoor9] ~ ~7 ~
execute at @e[tag=ndoor_animator] if entity @e[tag=dummy,scores={warpedCooking=3..53}] run tp @e[tag=ndoor10] ~1 ~7 ~
execute if entity @e[tag=dummy,scores={warpedCooking=54}] run kill @e[tag=ndoor_animator]
#South Door
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run setblock 243 120 160 minecraft:barrier
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run fill 242 119 160 244 117 160 minecraft:barrier
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run summon armor_stand 243.50 113.79 160.50 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["sdoor1","door"],attributes:[{id:"minecraft:scale",base:1.60}],DisabledSlots:47,ArmorItems:[{},{},{},{id:"minecraft:obsidian",count:1}]}
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run summon armor_stand 242.50 113.79 160.50 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["sdoor2","door"],attributes:[{id:"minecraft:scale",base:1.60}],DisabledSlots:47,ArmorItems:[{},{},{},{id:"minecraft:obsidian",count:1}]}
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run summon armor_stand 243.50 113.79 160.50 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["sdoor3","door"],attributes:[{id:"minecraft:scale",base:1.60}],DisabledSlots:47,ArmorItems:[{},{},{},{id:"minecraft:obsidian",count:1}]}
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run summon armor_stand 244.50 113.79 160.50 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["sdoor4","door"],attributes:[{id:"minecraft:scale",base:1.60}],DisabledSlots:47,ArmorItems:[{},{},{},{id:"minecraft:obsidian",count:1}]}
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run summon armor_stand 242.50 113.79 160.50 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["sdoor5","door"],attributes:[{id:"minecraft:scale",base:1.60}],DisabledSlots:47,ArmorItems:[{},{},{},{id:"minecraft:crying_obsidian",count:1}]}
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run summon armor_stand 243.50 113.79 160.50 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["sdoor6","door"],attributes:[{id:"minecraft:scale",base:1.60}],DisabledSlots:47,ArmorItems:[{},{},{},{id:"minecraft:obsidian",count:1}]}
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run summon armor_stand 244.50 113.79 160.50 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["sdoor7","door"],attributes:[{id:"minecraft:scale",base:1.60}],DisabledSlots:47,ArmorItems:[{},{},{},{id:"minecraft:obsidian",count:1}]}
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run summon armor_stand 242.50 113.79 160.50 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["sdoor8","door"],attributes:[{id:"minecraft:scale",base:1.60}],DisabledSlots:47,ArmorItems:[{},{},{},{id:"minecraft:obsidian",count:1}]}
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run summon armor_stand 243.50 113.79 160.50 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["sdoor9","door"],attributes:[{id:"minecraft:scale",base:1.60}],DisabledSlots:47,ArmorItems:[{},{},{},{id:"minecraft:crying_obsidian",count:1}]}
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run summon armor_stand 244.50 113.79 160.50 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["sdoor10","door"],attributes:[{id:"minecraft:scale",base:1.60}],DisabledSlots:47,ArmorItems:[{},{},{},{id:"minecraft:obsidian",count:1}]}
execute if entity @e[tag=dummy,scores={warpedCooking=2}] run summon arrow 243.50 103.79 160.50 {NoGravity:1b,Motion:[0.0,0.1,0.0],Tags:["sdoor_animator"]}
execute at @e[tag=sdoor_animator] if entity @e[tag=dummy,scores={warpedCooking=3..53}] run tp @e[tag=sdoor1] ~ ~10 ~
execute at @e[tag=sdoor_animator] if entity @e[tag=dummy,scores={warpedCooking=3..53}] run tp @e[tag=sdoor2] ~-1 ~9 ~
execute at @e[tag=sdoor_animator] if entity @e[tag=dummy,scores={warpedCooking=3..53}] run tp @e[tag=sdoor3] ~ ~9 ~
execute at @e[tag=sdoor_animator] if entity @e[tag=dummy,scores={warpedCooking=3..53}] run tp @e[tag=sdoor4] ~1 ~9 ~
execute at @e[tag=sdoor_animator] if entity @e[tag=dummy,scores={warpedCooking=3..53}] run tp @e[tag=sdoor5] ~-1 ~8 ~
execute at @e[tag=sdoor_animator] if entity @e[tag=dummy,scores={warpedCooking=3..53}] run tp @e[tag=sdoor6] ~ ~8 ~
execute at @e[tag=sdoor_animator] if entity @e[tag=dummy,scores={warpedCooking=3..53}] run tp @e[tag=sdoor7] ~1 ~8 ~
execute at @e[tag=sdoor_animator] if entity @e[tag=dummy,scores={warpedCooking=3..53}] run tp @e[tag=sdoor8] ~-1 ~7 ~
execute at @e[tag=sdoor_animator] if entity @e[tag=dummy,scores={warpedCooking=3..53}] run tp @e[tag=sdoor9] ~ ~7 ~
execute at @e[tag=sdoor_animator] if entity @e[tag=dummy,scores={warpedCooking=3..53}] run tp @e[tag=sdoor10] ~1 ~7 ~
execute if entity @e[tag=dummy,scores={warpedCooking=54}] run kill @e[tag=sdoor_animator]

execute if entity @e[tag=dummy,scores={warpedCooking=2}] as @e[tag=hyphae] at @e[tag=hyphae] run summon arrow ~ ~-10 ~ {NoGravity:1b,Motion:[0.0,-0.05,0.0],Tags:["cooking_animator"]}
execute at @e[tag=cooking_animator] if entity @e[tag=dummy,scores={warpedCooking=3..22}] run tp @e[tag=hyphae] ~ ~10 ~
execute if entity @e[tag=dummy,scores={warpedCooking=23}] run kill @e[tag=cooking_animator]


execute if entity @e[tag=dummy,scores={warpedCooking=380}] run data merge entity @e[tag=hyphae,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:warped_hyphae",count:1,components:{"minecraft:equippable":{slot:"head",equip_sound:"block.chorus_flower.death",allowed_entities:"armor_stand",swappable:false},"minecraft:enchantment_glint_override":true,"minecraft:custom_name":'{"bold":true,"color":"dark_purple","text":"Active Warped Core"}'}}]}
execute if entity @e[tag=dummy,scores={warpedCooking=380}] run data modify entity @e[tag=hyphae,limit=1] DisabledSlots set value 47
execute if entity @e[tag=dummy,scores={warpedCooking=380}] as @e[tag=hyphae] at @e[tag=hyphae] run summon arrow ~ ~-10 ~ {NoGravity:1b,Motion:[0.0,0.05,0.0],Tags:["cooking_animator"]}

execute at @e[tag=cooking_animator] if entity @e[tag=dummy,scores={warpedCooking=380..400}] run tp @e[tag=hyphae] ~ ~10 ~
execute if entity @e[tag=dummy,scores={warpedCooking=400}] run tellraw @a {"text":"The Warped Core is ready!"}
execute if entity @e[tag=dummy,scores={warpedCooking=401}] run kill @e[tag=cooking_animator]
#North Door
execute if entity @e[tag=dummy,scores={warpedCooking=400}] run summon arrow 243.50 107.79 142.50 {NoGravity:1b,Motion:[0.0,-0.1,0.0],Tags:["ndoor_animator"]}
execute at @e[tag=ndoor_animator] if entity @e[tag=dummy,scores={warpedCooking=400..453}] run tp @e[tag=ndoor1] ~ ~10 ~
execute at @e[tag=ndoor_animator] if entity @e[tag=dummy,scores={warpedCooking=400..453}] run tp @e[tag=ndoor2] ~-1 ~9 ~
execute at @e[tag=ndoor_animator] if entity @e[tag=dummy,scores={warpedCooking=400..453}] run tp @e[tag=ndoor3] ~ ~9 ~
execute at @e[tag=ndoor_animator] if entity @e[tag=dummy,scores={warpedCooking=400..453}] run tp @e[tag=ndoor4] ~1 ~9 ~
execute at @e[tag=ndoor_animator] if entity @e[tag=dummy,scores={warpedCooking=400..453}] run tp @e[tag=ndoor5] ~-1 ~8 ~
execute at @e[tag=ndoor_animator] if entity @e[tag=dummy,scores={warpedCooking=400..453}] run tp @e[tag=ndoor6] ~ ~8 ~
execute at @e[tag=ndoor_animator] if entity @e[tag=dummy,scores={warpedCooking=400..453}] run tp @e[tag=ndoor7] ~1 ~8 ~
execute at @e[tag=ndoor_animator] if entity @e[tag=dummy,scores={warpedCooking=400..453}] run tp @e[tag=ndoor8] ~-1 ~7 ~
execute at @e[tag=ndoor_animator] if entity @e[tag=dummy,scores={warpedCooking=400..453}] run tp @e[tag=ndoor9] ~ ~7 ~
execute at @e[tag=ndoor_animator] if entity @e[tag=dummy,scores={warpedCooking=400..453}] run tp @e[tag=ndoor10] ~1 ~7 ~
execute if entity @e[tag=dummy,scores={warpedCooking=454}] run kill @e[tag=ndoor_animator]
execute if entity @e[tag=dummy,scores={warpedCooking=454}] run setblock 243 120 142 minecraft:air
execute if entity @e[tag=dummy,scores={warpedCooking=454}] run fill 244 119 142 242 117 142 minecraft:air
#South Door
execute if entity @e[tag=dummy,scores={warpedCooking=400}] run summon arrow 243.50 107.79 160.50 {NoGravity:1b,Motion:[0.0,-0.1,0.0],Tags:["sdoor_animator"]}
execute at @e[tag=sdoor_animator] if entity @e[tag=dummy,scores={warpedCooking=400..453}] run tp @e[tag=sdoor1] ~ ~10 ~
execute at @e[tag=sdoor_animator] if entity @e[tag=dummy,scores={warpedCooking=400..453}] run tp @e[tag=sdoor2] ~-1 ~9 ~
execute at @e[tag=sdoor_animator] if entity @e[tag=dummy,scores={warpedCooking=400..453}] run tp @e[tag=sdoor3] ~ ~9 ~
execute at @e[tag=sdoor_animator] if entity @e[tag=dummy,scores={warpedCooking=400..453}] run tp @e[tag=sdoor4] ~1 ~9 ~
execute at @e[tag=sdoor_animator] if entity @e[tag=dummy,scores={warpedCooking=400..453}] run tp @e[tag=sdoor5] ~-1 ~8 ~
execute at @e[tag=sdoor_animator] if entity @e[tag=dummy,scores={warpedCooking=400..453}] run tp @e[tag=sdoor6] ~ ~8 ~
execute at @e[tag=sdoor_animator] if entity @e[tag=dummy,scores={warpedCooking=400..453}] run tp @e[tag=sdoor7] ~1 ~8 ~
execute at @e[tag=sdoor_animator] if entity @e[tag=dummy,scores={warpedCooking=400..453}] run tp @e[tag=sdoor8] ~-1 ~7 ~
execute at @e[tag=sdoor_animator] if entity @e[tag=dummy,scores={warpedCooking=400..453}] run tp @e[tag=sdoor9] ~ ~7 ~
execute at @e[tag=sdoor_animator] if entity @e[tag=dummy,scores={warpedCooking=400..453}] run tp @e[tag=sdoor10] ~1 ~7 ~
execute if entity @e[tag=dummy,scores={warpedCooking=454}] run kill @e[tag=sdoor_animator]
execute if entity @e[tag=dummy,scores={warpedCooking=454}] run kill @e[tag=door]
execute if entity @e[tag=dummy,scores={warpedCooking=454}] run setblock 243 120 160 minecraft:air
execute if entity @e[tag=dummy,scores={warpedCooking=454}] run fill 242 119 160 244 117 160 minecraft:air

execute if entity @e[tag=dummy,scores={warpedCooking=455}] run schedule function e1:summon_well_keeper 3s
execute if entity @e[tag=dummy,scores={warpedCooking=456..}] run setblock -4 -60 2 minecraft:air
execute if entity @e[tag=dummy,scores={warpedCooking=456..}] run scoreboard players set @e[tag=dummy] warpedCooking 0