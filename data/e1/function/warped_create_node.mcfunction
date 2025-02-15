#uses scoreboard "warpedNodeAnimation"
#uses scoreboard "randomValue"

execute if entity @e[tag=dummy,scores={warpedNodeAnimation=2}] run tellraw @a {"text":"A Warped Fungus is ready to be harvested!"}
#node position 1 (temp note: -10.9, 127.35)
execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=2}] run summon arrow 260 106.35 134 {NoGravity:1b,Motion:[0.0,0.05,0.0],Tags:["node_animator"]}
execute at @e[tag=node_animator] if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=3..22}] run tp @e[tag=warped_node] ~ ~10 ~

#node position 2
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=2}] run summon arrow 260 106.35 134 {NoGravity:1b,Motion:[0.0,0.05,0.0],Tags:["node_animator"]}
execute at @e[tag=node_animator] if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=3..22}] run tp @e[tag=warped_node] ~ ~10 ~

#node position 3
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=2}] run summon arrow 260 106.35 134 {NoGravity:1b,Motion:[0.0,0.05,0.0],Tags:["node_animator"]}
execute at @e[tag=node_animator] if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=3..22}] run tp @e[tag=warped_node] ~ ~10 ~

#node position 4
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=2}] run summon arrow 260 106.35 134 {NoGravity:1b,Motion:[0.0,0.05,0.0],Tags:["node_animator"]}
execute at @e[tag=node_animator] if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=3..22}] run tp @e[tag=warped_node] ~ ~10 ~

#node position 5
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=2}] run summon arrow 260 106.35 134 {NoGravity:1b,Motion:[0.0,0.05,0.0],Tags:["node_animator"]}
execute at @e[tag=node_animator] if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=3..22}] run tp @e[tag=warped_node] ~ ~10 ~

#node position 6
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=2}] run summon arrow 260 106.35 134 {NoGravity:1b,Motion:[0.0,0.05,0.0],Tags:["node_animator"]}
execute at @e[tag=node_animator] if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=3..22}] run tp @e[tag=warped_node] ~ ~10 ~


execute if entity @e[tag=dummy,scores={warpedNodeAnimation=23}] run kill @e[tag=node_animator]
execute if entity @e[tag=dummy,scores={warpedNodeAnimation=30..}] run setblock -4 -60 -2 air
execute if entity @e[tag=dummy,scores={warpedNodeAnimation=30..}] run scoreboard players set @e[tag=dummy] warpedNodeAnimation 0