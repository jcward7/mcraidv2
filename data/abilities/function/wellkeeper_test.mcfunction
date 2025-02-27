#summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["shield_center"]}
#summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Invisible:0b,Tags:["shield_orbit1","shield_orbit"],Pose:{RightArm:[76f,84f,0f]},HandItems:[{id:"minecraft:shield",count:1},{}]}
#summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Invisible:0b,Tags:["shield_orbit2","shield_orbit"],Pose:{RightArm:[76f,84f,0f]},HandItems:[{id:"minecraft:shield",count:1},{}]}
#summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Invisible:1b,Tags:["shield_orbit3","shield_orbit"],Pose:{RightArm:[76f,84f,0f]},HandItems:[{id:"minecraft:shield",count:1},{}]}

#PROOF OF CONCEPT run this function on an always active command block
execute as @e[tag=shield_center] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=shield_center] at @s run tp @e[tag=shield_orbit1] ^3 ^ ^1 facing ^1 ^ ^0.9
execute as @e[tag=shield_center] at @s run tp @e[tag=shield_orbit2] ^-2.8 ^ ^1.2 facing ^1 ^ ^0.9
execute as @e[tag=shield_center] at @s run tp @e[tag=shield_orbit3] ^0.3 ^ ^-3 facing ^1 ^ ^0.9
execute as @e[tag=shield_brute] at @e[tag=shield_brute] run tp @e[tag=shield_center] ~ ~ ~