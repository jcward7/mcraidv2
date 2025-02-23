#note: for this to work, players need to be set at a score of 0 upon joining for the first time
execute unless block ~ ~-1 ~ minecraft:air run execute as @a[scores={deaths=0}] at @a[scores={deaths=0}] run spawnpoint @s ~ ~ ~ ~
execute if entity @a[scores={deaths=1}] run gamemode spectator @a[scores={deaths=1}]
execute if entity @a[scores={deaths=1}] run tp @e[tag=revive_node] @a[scores={deaths=1},limit=1]
execute if entity @a[scores={deaths=1}] run scoreboard players set @a[scores={deaths=1}] deaths 2



# TO-DO:
# 2 nodes need to be made to designate between 2 potential dead players
# when 1 node is used, update a scoreboard counter for the next one to be in line
# implement a reviving system using the sneak_input predicate and a "respawn token" system
# 
