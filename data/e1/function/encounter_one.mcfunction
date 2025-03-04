#uses scoreboard "encounter1"
execute if entity @e[tag=dummy,scores={encounter1=10}] run function e1:summon_well_keeper
#Crimson Well 0
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=0,warpedWell=0}] run fill 211 132 183 213 132 181 minecraft:crimson_planks
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=0,warpedWell=0}] run fill 210 133 180 214 133 180 minecraft:polished_blackstone_stairs[facing=north]
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=0,warpedWell=0}] run fill 214 133 180 214 133 184 minecraft:polished_blackstone_stairs[facing=east]
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=0,warpedWell=0}] run fill 214 133 184 210 133 184 minecraft:polished_blackstone_stairs[facing=south]
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=0,warpedWell=0}] run fill 210 133 184 210 133 180 minecraft:polished_blackstone_stairs[facing=west]
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=0,warpedWell=0}] run tellraw @a {"text":"A Crimson Well opens..."}
#Warped Well 0
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=1,warpedWell=0}] run fill 235 117 127 237 117 129 minecraft:warped_planks
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=1,warpedWell=0}] run fill 234 118 126 238 118 126 minecraft:polished_blackstone_stairs[facing=north]
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=1,warpedWell=0}] run fill 238 118 126 238 118 130 minecraft:polished_blackstone_stairs[facing=east]
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=1,warpedWell=0}] run fill 238 118 130 234 118 130 minecraft:polished_blackstone_stairs[facing=south]
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=1,warpedWell=0}] run fill 234 118 130 234 118 126 minecraft:polished_blackstone_stairs[facing=west]
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=1,warpedWell=0}] run tellraw @a {"text":"A Warped Well opens..."}
#Crimson Well 1
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=1,warpedWell=1}] run fill 275 133 121 273 133 119 minecraft:crimson_planks
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=1,warpedWell=1}] run fill 272 134 118 276 134 118 minecraft:polished_blackstone_stairs[facing=north]
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=1,warpedWell=1}] run fill 276 134 118 276 134 122 minecraft:polished_blackstone_stairs[facing=east]
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=1,warpedWell=1}] run fill 276 134 122 272 134 122 minecraft:polished_blackstone_stairs[facing=south]
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=1,warpedWell=1}] run fill 272 134 122 272 134 118 minecraft:polished_blackstone_stairs[facing=west]
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=1,warpedWell=1}] run tellraw @a {"text":"A Crimson Well opens..."}
#Warped Well 1
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=0,warpedWell=1}] run fill 265 117 173 267 117 175 minecraft:warped_planks
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=0,warpedWell=1}] run fill 264 118 172 268 118 172 minecraft:polished_blackstone_stairs[facing=north]
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=0,warpedWell=1}] run fill 268 118 172 268 118 176 minecraft:polished_blackstone_stairs[facing=east]
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=0,warpedWell=1}] run fill 268 118 176 264 118 176 minecraft:polished_blackstone_stairs[facing=south]
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=0,warpedWell=1}] run fill 264 118 176 264 118 172 minecraft:polished_blackstone_stairs[facing=west]
execute if entity @e[scores={wellkeepersKilled=1..,crimsonWell=0,warpedWell=1}] run tellraw @a {"text":"A Warped Well opens..."}

execute as @a if predicate e1:warped_well_check run function e1:use_well
execute as @a if predicate e1:crimson_well_check run function e1:use_well
execute if entity @e[scores={wellkeepersKilled=1..}] run scoreboard players set @a wellkeepersKilled 0

execute if entity @e[tag=dummy,scores={encounter1=200}] run function e1:summon_cooking_test
execute if entity @e[tag=dummy,scores={encounter1=200}] run function e1:summon_core_deposits
execute if entity @e[type=armor_stand,tag=hyphae,nbt={ArmorItems:[{},{},{},{id:"minecraft:warped_wart_block",count:1}]}] run function e1:warped_cooking_start
execute if entity @e[type=armor_stand,tag=deposits,nbt={ArmorItems:[{},{},{},{id:"minecraft:warped_hyphae",count:1}]}] run function e1:warped_core_deposit_start


execute if entity @e[tag=dummy,scores={encounter1=2400..}] run kill @e[tag=hyphae]
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run kill @e[tag=wellkeeper]
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run kill @e[tag=shield_brute]
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run kill @e[tag=hybrid_piglin]
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run kill @e[tag=north_deposit]
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run kill @e[tag=east_deposit]
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run kill @e[tag=south_deposit]
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run kill @e[tag=west_deposit]
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run scoreboard players set spawnCounter encounter1 0
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run scoreboard players set @a wellkeepersKilled 0
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run scoreboard players set @e[tag=dummy] warpedWell 0
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run scoreboard players set @e[tag=dummy] crimsonWell 0
#Crimson Well 0
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run fill 211 132 183 213 132 181 polished_blackstone
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run fill 210 133 180 214 133 180 minecraft:blackstone_stairs[facing=north]
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run fill 214 133 180 214 133 184 minecraft:blackstone_stairs[facing=east]
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run fill 214 133 184 210 133 184 minecraft:blackstone_stairs[facing=south]
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run fill 210 133 184 210 133 180 minecraft:blackstone_stairs[facing=west]
#Warped Well 0
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run fill 235 117 127 237 117 129 minecraft:polished_blackstone
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run fill 234 118 126 238 118 126 minecraft:blackstone_stairs[facing=north]
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run fill 238 118 126 238 118 130 minecraft:blackstone_stairs[facing=east]
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run fill 238 118 130 234 118 130 minecraft:blackstone_stairs[facing=south]
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run fill 234 118 130 234 118 126 minecraft:blackstone_stairs[facing=west]
#Crimson Well 1
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run fill 275 133 121 273 133 119 minecraft:polished_blackstone
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run fill 272 134 118 276 134 118 minecraft:blackstone_stairs[facing=north]
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run fill 276 134 118 276 134 122 minecraft:blackstone_stairs[facing=east]
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run fill 276 134 122 272 134 122 minecraft:blackstone_stairs[facing=south]
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run fill 272 134 122 272 134 118 minecraft:blackstone_stairs[facing=west]
#Warped Well 1
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run fill 265 117 173 267 117 175 minecraft:polished_blackstone
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run fill 264 118 172 268 118 172 minecraft:blackstone_stairs[facing=north]
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run fill 268 118 172 268 118 176 minecraft:blackstone_stairs[facing=east]
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run fill 268 118 176 264 118 176 minecraft:blackstone_stairs[facing=south]
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run fill 264 118 176 264 118 172 minecraft:blackstone_stairs[facing=west]

execute if entity @e[tag=dummy,scores={encounter1=2400..}] run function e1:warped_test_reset
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run tp @e[tag=warped_node] -6 -61 -2
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run setblock -4 -60 0 minecraft:air
execute if entity @e[tag=dummy,scores={encounter1=2400..}] run scoreboard players set @e[tag=dummy] encounter1 0
