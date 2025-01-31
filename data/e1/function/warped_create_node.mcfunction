#uses scoreboard "warpedNodeAnimation"
#uses scoreboard "randomValue"

execute if entity @e[tag=dummy,scores={warpedNodeAnimation=2}] run tellraw @a[team=dev] {"text":"warped_create_node: function started","color":"yellow"}


#node position 1 (temp note: -10.9)
execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=2}] run summon arrow 243 127.35 151 {NoGravity:1b,Motion:[0.0,0.05,0.0],Tags:["node_animator"]}
execute at @e[tag=node_animator] if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=3..22}] run tp @e[tag=warped_node] ~ ~10 ~
execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=2}] run tellraw @a[team=dev] {"text":"warped_create_node: position 1/bottom left (130, 72)","color":"yellow"}

#node position 2
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=2}] run summon arrow 244 127.35 151 {NoGravity:1b,Motion:[0.0,0.05,0.0],Tags:["node_animator"]}
execute at @e[tag=node_animator] if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=3..22}] run tp @e[tag=warped_node] ~ ~10 ~
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=2}] run tellraw @a[team=dev] {"text":"warped_create_node: position 2/bottom right (117, 108)","color":"yellow"}

#node position 3
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=2}] run summon arrow 245 127.35 151 {NoGravity:1b,Motion:[0.0,0.05,0.0],Tags:["node_animator"]}
execute at @e[tag=node_animator] if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=3..22}] run tp @e[tag=warped_node] ~ ~10 ~
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=2}] run tellraw @a[team=dev] {"text":"warped_create_node: position 3/middle (136, 97)","color":"yellow"}

#node position 4
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=2}] run summon arrow 246 127.35 151 {NoGravity:1b,Motion:[0.0,0.05,0.0],Tags:["node_animator"]}
execute at @e[tag=node_animator] if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=3..22}] run tp @e[tag=warped_node] ~ ~10 ~
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=2}] run tellraw @a[team=dev] {"text":"warped_create_node: position 4/top right (145, 111)","color":"yellow"}

#node position 5
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=2}] run summon arrow 247 127.35 151 {NoGravity:1b,Motion:[0.0,0.05,0.0],Tags:["node_animator"]}
execute at @e[tag=node_animator] if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=3..22}] run tp @e[tag=warped_node] ~ ~10 ~
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=2}] run tellraw @a[team=dev] {"text":"warped_create_node: position 5/top middle hill (153, 95)","color":"yellow"}

#node position 6
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=2}] run summon arrow 248 127.35 151 {NoGravity:1b,Motion:[0.0,0.05,0.0],Tags:["node_animator"]}
execute at @e[tag=node_animator] if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=3..22}] run tp @e[tag=warped_node] ~ ~10 ~
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=2}] run tellraw @a[team=dev] {"text":"warped_create_node: position 6/top left (151, 87)","color":"yellow"}




execute if entity @e[tag=dummy,scores={warpedNodeAnimation=23}] run kill @e[tag=node_animator]
execute if entity @e[tag=dummy,scores={warpedNodeAnimation=30..}] run tellraw @a[team=dev] {"text":"warped_create_node: finished executing","color":"yellow"}
execute if entity @e[tag=dummy,scores={warpedNodeAnimation=30..}] run setblock -4 -60 -2 air
execute if entity @e[tag=dummy,scores={warpedNodeAnimation=30..}] run scoreboard players set @e[tag=dummy] warpedNodeAnimation 0