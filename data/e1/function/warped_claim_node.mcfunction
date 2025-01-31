execute as @e[tag=warped_node] at @e[tag=warped_node] run tag @e[type=player,sort=nearest] add warped
execute as @e[tag=warped] run team join warped
execute as @e[tag=warped] run effect give @e[tag=warped] glowing 2 0 true
execute at @e[tag=warped] run playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 100 0.25
execute at @e[tag=warped] run particle minecraft:soul_fire_flame ~ ~0.75 ~ 0.75 0.75 0.75 0 150
tp @e[tag=warped_node] -6 -61 -2

















#old implementation from testing
#
#execute at @e[team=raid] as @e[team=raid] if block ~ ~-1 ~ minecraft:warped_wart_block run team join warped
#execute as @e[tag=warped] run team join warped
#execute at @e[tag=warped] run playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 100 0.25
