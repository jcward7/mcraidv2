#TO-DO:
#This needs to be split into probably 2 different functions that deal with crimson and warped spawns
#
#first well is used to go back to the crimson area
execute if score spawnCounter encounter1 matches 1 run execute positioned 243.5 135 121.5 run function dev:summon_hybrid_piglin
execute if score spawnCounter encounter1 matches 1 run execute positioned 279.5 135 152.5 run function dev:summon_hybrid_piglin
execute if score spawnCounter encounter1 matches 1 run execute positioned 211.5 136 142.5 run function dev:summon_hybrid_piglin
execute if score spawnCounter encounter1 matches 1 run scoreboard players set spawnCounter encounter1 2

#beginning of the encounter (first time a player goes into the warped area)
execute if score spawnCounter encounter1 matches 0 run execute positioned 252.5 120 161.5 run function dev:summon_hybrid_piglin
execute if score spawnCounter encounter1 matches 0 run execute positioned 227.5 119 134.5 run function dev:summon_hybrid_piglin
execute if score spawnCounter encounter1 matches 0 run execute positioned 229.5 118 167.5 run function dev:summon_hybrid_piglin
execute if score spawnCounter encounter1 matches 0 run scoreboard players set spawnCounter encounter1 1
