#player begins combat with the Shield Brute
execute if score Engaged shieldBruteTimer matches 0 run execute as @e[tag=shield_brute] at @e[tag=shield_brute] if entity @e[type=player,distance=..8] run scoreboard players set Engaged shieldBruteTimer 1
execute if score Engaged shieldBruteTimer matches 0 run execute as @e[tag=shield_brute] at @e[tag=shield_brute] if entity @e[type=player,distance=..8] run scoreboard players set @s shieldBruteTimer 0



execute if score Engaged shieldBruteTimer matches 1 run execute if score shieldsActive shieldBruteTimer matches 0 run execute as @e[tag=shield_brute] at @e[tag=shield_brute] if entity @e[type=player,distance=10..] run scoreboard players add @s shieldBruteTimer 1
execute if score Engaged shieldBruteTimer matches 1 run execute if score shieldsActive shieldBruteTimer matches 0 run execute as @e[tag=shield_brute,scores={shieldBruteTimer=1..159}] at @e[tag=shield_brute] if entity @e[type=player,distance=..10] run scoreboard players remove @s shieldBruteTimer 1
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=160..}] run scoreboard players set shieldsActive shieldBruteTimer 1
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=160..}] run scoreboard players set shieldsAlive shieldBruteTimer 0
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=160..}] run scoreboard players set @e[tag=shield_brute] shieldBruteTimer 0

execute if score shieldsActive shieldBruteTimer matches 1 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["shield_center"]}

execute if score shieldsActive shieldBruteTimer matches 1 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Invisible:1b,Tags:["shield_orbit1","shield_orbit"],Pose:{RightArm:[76f,84f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:shield",count:1},{}]}
execute if score shieldsActive shieldBruteTimer matches 1 run summon interaction ~ ~ ~ {NoGravity:1b,width:1.8f,height:2f,response:1b,Tags:["shield_orbit1","shield_orbit"]}
execute if score shieldsActive shieldBruteTimer matches 1 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Invisible:1b,Tags:["shield_orbit2","shield_orbit"],Pose:{RightArm:[76f,84f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:shield",count:1},{}]}
execute if score shieldsActive shieldBruteTimer matches 1 run summon interaction ~ ~ ~ {NoGravity:1b,width:1.8f,height:2f,response:1b,Tags:["shield_orbit2","shield_orbit"]}
execute if score shieldsActive shieldBruteTimer matches 1 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Invisible:1b,Tags:["shield_orbit3","shield_orbit"],Pose:{RightArm:[76f,84f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:shield",count:1},{}]}
execute if score shieldsActive shieldBruteTimer matches 1 run summon interaction ~ ~ ~ {NoGravity:1b,width:1.8f,height:2f,response:1b,Tags:["shield_orbit3","shield_orbit"]}
execute if score shieldsActive shieldBruteTimer matches 1 run scoreboard players set shieldsActive shieldBruteTimer 2

execute if score shieldsActive shieldBruteTimer matches 2 run function abilities:wellkeeper_test
execute if score shieldsActive shieldBruteTimer matches 2 run execute if score shieldsAlive shieldBruteTimer matches 0..2 run execute as @e[type=armor_stand,tag=shield_orbit1] run scoreboard players add shieldsAlive shieldBruteTimer 1
execute if score shieldsActive shieldBruteTimer matches 2 run execute if score shieldsAlive shieldBruteTimer matches 0..2 run execute as @e[type=armor_stand,tag=shield_orbit2] run scoreboard players add shieldsAlive shieldBruteTimer 1
execute if score shieldsActive shieldBruteTimer matches 2 run execute if score shieldsAlive shieldBruteTimer matches 0..2 run execute as @e[type=armor_stand,tag=shield_orbit3] run scoreboard players add shieldsAlive shieldBruteTimer 1
execute if score shieldsActive shieldBruteTimer matches 2 run execute if score shieldsAlive shieldBruteTimer matches 0..5 run execute as @e[tag=shield_center] run scoreboard players remove shieldsAlive shieldBruteTimer 1
execute if score shieldsAlive shieldBruteTimer matches -1 run kill @e[tag=shield_center]
execute if score shieldsAlive shieldBruteTimer matches -1 run kill @e[tag=shield_orbit]
execute if score shieldsAlive shieldBruteTimer matches -1 run scoreboard players set Engaged shieldBruteTimer -1
execute if score shieldsAlive shieldBruteTimer matches -1 run scoreboard players set shieldsActive shieldBruteTimer 0
execute if score shieldsAlive shieldBruteTimer matches -1 run scoreboard players set shieldsAlive shieldBruteTimer 0

execute if score Engaged shieldBruteTimer matches -1 run scoreboard players add EngagedCooldown shieldBruteTimer 1
execute if score EngagedCooldown shieldBruteTimer matches 160..200 run scoreboard players set Engaged shieldBruteTimer 0
execute if score EngagedCooldown shieldBruteTimer matches 160..200 run scoreboard players set EngagedCooldown shieldBruteTimer 0




