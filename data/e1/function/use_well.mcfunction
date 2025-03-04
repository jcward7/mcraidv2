execute as @e[type=player] at @e[type=player] if block ~ ~-1 ~ minecraft:crimson_planks run schedule function e1:warped_temp_trigger 140t
execute as @s at @s run playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 25 2 1

#Warped Well 1
execute as @e[type=player] at @e[type=player] if block ~ ~-1 ~ minecraft:warped_planks if entity @e[tag=dummy,scores={crimsonWell=0,warpedWell=1}] run tp @s 212 134 182
execute if score spawnCounter encounter1 matches 0..4 run function e1:spawn_counter_process
execute if entity @e[tag=dummy,scores={crimsonWell=0,warpedWell=1}] run fill 265 117 173 267 117 175 minecraft:polished_blackstone
execute if entity @e[tag=dummy,scores={crimsonWell=0,warpedWell=1}] run fill 264 118 172 268 118 172 minecraft:blackstone_stairs[facing=north]
execute if entity @e[tag=dummy,scores={crimsonWell=0,warpedWell=1}] run fill 268 118 172 268 118 176 minecraft:blackstone_stairs[facing=east]
execute if entity @e[tag=dummy,scores={crimsonWell=0,warpedWell=1}] run fill 268 118 176 264 118 176 minecraft:blackstone_stairs[facing=south]
execute if entity @e[tag=dummy,scores={crimsonWell=0,warpedWell=1}] run fill 264 118 176 264 118 172 minecraft:blackstone_stairs[facing=west]
execute if entity @e[tag=dummy,scores={crimsonWell=0,warpedWell=1}] run scoreboard players set @e[tag=dummy] warpedWell 2

#Crimson Well 1
execute as @e[type=player] at @e[type=player] if block ~ ~-1 ~ minecraft:crimson_planks if entity @e[tag=dummy,scores={crimsonWell=1,warpedWell=1}] run tp @s 236 118 128
execute if entity @e[tag=dummy,scores={crimsonWell=1,warpedWell=1}] run fill 275 133 121 273 133 119 minecraft:polished_blackstone
execute if entity @e[tag=dummy,scores={crimsonWell=1,warpedWell=1}] run fill 272 134 118 276 134 118 minecraft:blackstone_stairs[facing=north]
execute if entity @e[tag=dummy,scores={crimsonWell=1,warpedWell=1}] run fill 276 134 118 276 134 122 minecraft:blackstone_stairs[facing=east]
execute if entity @e[tag=dummy,scores={crimsonWell=1,warpedWell=1}] run fill 276 134 122 272 134 122 minecraft:blackstone_stairs[facing=south]
execute if entity @e[tag=dummy,scores={crimsonWell=1,warpedWell=1}] run fill 272 134 122 272 134 118 minecraft:blackstone_stairs[facing=west]
execute if entity @e[tag=dummy,scores={crimsonWell=1,warpedWell=1}] run scoreboard players set @e[tag=dummy] crimsonWell 0

#Warped Well 0
execute as @e[type=player] at @e[type=player] if block ~ ~-1 ~ minecraft:warped_planks if entity @e[tag=dummy,scores={crimsonWell=1,warpedWell=0}] run tp @s 274 134 120
execute if entity @e[tag=dummy,scores={crimsonWell=1,warpedWell=0}] run fill 235 117 127 237 117 129 minecraft:polished_blackstone
execute if entity @e[tag=dummy,scores={crimsonWell=1,warpedWell=0}] run fill 234 118 126 238 118 126 minecraft:blackstone_stairs[facing=north]
execute if entity @e[tag=dummy,scores={crimsonWell=1,warpedWell=0}] run fill 238 118 126 238 118 130 minecraft:blackstone_stairs[facing=east]
execute if entity @e[tag=dummy,scores={crimsonWell=1,warpedWell=0}] run fill 238 118 130 234 118 130 minecraft:blackstone_stairs[facing=south]
execute if entity @e[tag=dummy,scores={crimsonWell=1,warpedWell=0}] run fill 234 118 130 234 118 126 minecraft:blackstone_stairs[facing=west]
execute if entity @e[tag=dummy,scores={crimsonWell=1,warpedWell=0}] run scoreboard players set @e[tag=dummy] warpedWell 1

#Crimson Well 0
execute as @e[type=player] at @e[type=player] if block ~ ~-1 ~ minecraft:crimson_planks if entity @e[tag=dummy,scores={crimsonWell=0,warpedWell=0}] run tp @s 266 118 174
execute if entity @e[tag=dummy,scores={crimsonWell=0,warpedWell=0}] run fill 211 132 183 213 132 181 polished_blackstone
execute if entity @e[tag=dummy,scores={crimsonWell=0,warpedWell=0}] run fill 210 133 180 214 133 180 minecraft:blackstone_stairs[facing=north]
execute if entity @e[tag=dummy,scores={crimsonWell=0,warpedWell=0}] run fill 214 133 180 214 133 184 minecraft:blackstone_stairs[facing=east]
execute if entity @e[tag=dummy,scores={crimsonWell=0,warpedWell=0}] run fill 214 133 184 210 133 184 minecraft:blackstone_stairs[facing=south]
execute if entity @e[tag=dummy,scores={crimsonWell=0,warpedWell=0}] run fill 210 133 184 210 133 180 minecraft:blackstone_stairs[facing=west]
execute if entity @e[tag=dummy,scores={crimsonWell=0,warpedWell=0}] run scoreboard players set @e[tag=dummy] crimsonWell 1