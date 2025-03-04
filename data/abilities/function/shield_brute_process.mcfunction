#player begins combat with the Shield Brute (Engaged)
execute if score Engaged shieldBruteTimer matches 0 run execute as @e[tag=shield_brute] at @e[tag=shield_brute] if entity @e[type=player,distance=..8] run scoreboard players set Engaged shieldBruteTimer 1
execute if score Engaged shieldBruteTimer matches 0 run execute as @e[tag=shield_brute] at @e[tag=shield_brute] if entity @e[type=player,distance=..8] run scoreboard players set @s shieldBruteTimer 0

#basic block attack during normal combat
execute if score shieldsActive shieldBruteTimer matches 0 run execute if entity @e[tag=shield_brute,nbt={HurtTime:1s}] run scoreboard players set blockAttack shieldBruteTimer 1
execute if score blockAttack shieldBruteTimer matches 1 run scoreboard players add blockAttackTimer shieldBruteTimer 1
execute if score blockAttackTimer shieldBruteTimer matches 1 run data merge entity @e[tag=shield_brute,limit=1] {HandItems:[{components:{},id:"minecraft:shield"},{components:{},id:"minecraft:shield"}]}
execute if score blockAttackTimer shieldBruteTimer matches 1 run effect give @e[tag=shield_brute] minecraft:resistance 2 10 true
execute if score blockAttackTimer shieldBruteTimer matches 1 run attribute @e[tag=shield_brute,limit=1] minecraft:movement_speed base set 0
execute if score blockAttackTimer shieldBruteTimer matches 1 run attribute @e[tag=shield_brute,limit=1] minecraft:knockback_resistance base set 100
execute if score blockAttackTimer shieldBruteTimer matches 1 run tag @e[tag=shield_brute,limit=1] add blocking
execute if score blockAttackTimer shieldBruteTimer matches 30 run data merge entity @e[tag=shield_brute,limit=1] {HandItems:[{components:{},id:"minecraft:iron_sword"},{components:{},id:"minecraft:shield"}]}
execute if score blockAttackTimer shieldBruteTimer matches 30 run attribute @e[tag=shield_brute,limit=1] minecraft:movement_speed base set 0.3499999940395355
execute if score blockAttackTimer shieldBruteTimer matches 30 run attribute @e[tag=shield_brute,limit=1] minecraft:knockback_resistance base set 0
execute if score blockAttackTimer shieldBruteTimer matches 30 run tag @e[tag=shield_brute,limit=1] remove blocking
execute if score blockAttackTimer shieldBruteTimer matches 30 run effect clear @e[tag=shield_brute] minecraft:resistance
execute if score blockAttackTimer shieldBruteTimer matches 100.. run scoreboard players set blockAttack shieldBruteTimer 0
execute if score blockAttackTimer shieldBruteTimer matches 100.. run scoreboard players set blockAttackTimer shieldBruteTimer 0

#Begin shielding ability countdown once player tries to leave combat
execute if score Engaged shieldBruteTimer matches 1 run execute if score shieldsActive shieldBruteTimer matches 0 run execute as @e[tag=shield_brute] at @e[tag=shield_brute] if entity @e[type=player,distance=12..] run scoreboard players add @s shieldBruteTimer 1
execute if score Engaged shieldBruteTimer matches 1 run execute if score shieldsActive shieldBruteTimer matches 0 run execute as @e[tag=shield_brute,scores={shieldBruteTimer=1..159}] at @e[tag=shield_brute] if entity @e[type=player,distance=..12] run scoreboard players remove @s shieldBruteTimer 1
#shielding ability countdown thresholds
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=1}] run scoreboard players set Armor shieldBruteTimer 0
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=1}] run data merge entity @e[tag=shield_brute,limit=1] {ArmorItems:[{},{},{},{}]}
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=35}] run data merge entity @e[tag=shield_brute,limit=1] {HandItems:[{components:{},id:"minecraft:iron_sword"},{components:{},id:"minecraft:shield"}]}
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=35}] if score Armor shieldBruteTimer matches 0 run scoreboard players add Armor shieldBruteTimer 1
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=35}] if score Armor shieldBruteTimer matches 1 run execute at @e[tag=shield_brute] run playsound minecraft:entity.iron_golem.death master @a ~ ~ ~ 25 1.5 1
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=35}] if score Armor shieldBruteTimer matches 1 run data merge entity @e[tag=shield_brute,limit=1] {ArmorItems:[{components:{},id:"minecraft:netherite_boots"},{},{},{}]}
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=35}] if score Armor shieldBruteTimer matches 1 run scoreboard players add Armor shieldBruteTimer 1
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=70}] if score Armor shieldBruteTimer matches 2 run data merge entity @e[tag=shield_brute,limit=1] {ArmorItems:[{components:{},id:"minecraft:netherite_boots"},{components:{},id:"minecraft:netherite_leggings"},{},{}]}
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=70}] if score Armor shieldBruteTimer matches 2 run execute at @e[tag=shield_brute] run playsound minecraft:entity.iron_golem.death master @a ~ ~ ~ 25 1.5 1
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=70}] if score Armor shieldBruteTimer matches 2 run scoreboard players add Armor shieldBruteTimer 1
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=105}] if score Armor shieldBruteTimer matches 3 run data merge entity @e[tag=shield_brute,limit=1] {ArmorItems:[{components:{},id:"minecraft:netherite_boots"},{components:{},id:"minecraft:netherite_leggings"},{components:{},id:"minecraft:netherite_chestplate"},{}]}
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=105}] if score Armor shieldBruteTimer matches 3 run execute at @e[tag=shield_brute] run playsound minecraft:entity.iron_golem.death master @a ~ ~ ~ 25 1.5 1
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=105}] if score Armor shieldBruteTimer matches 3 run scoreboard players add Armor shieldBruteTimer 1
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=140}] if score Armor shieldBruteTimer matches 4 run data merge entity @e[tag=shield_brute,limit=1] {ArmorItems:[{components:{},id:"minecraft:netherite_boots"},{components:{},id:"minecraft:netherite_leggings"},{components:{},id:"minecraft:netherite_chestplate"},{components:{},id:"minecraft:netherite_helmet"}]}
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=140}] if score Armor shieldBruteTimer matches 4 run execute at @e[tag=shield_brute] run playsound minecraft:entity.iron_golem.death master @a ~ ~ ~ 25 1.5 1
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=140}] if score Armor shieldBruteTimer matches 4 run scoreboard players add Armor shieldBruteTimer 1
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=160..}] run data merge entity @e[tag=shield_brute,limit=1] {ArmorItems:[{components:{"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:flow"}},id:"minecraft:netherite_boots"},{components:{"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:ward"}},id:"minecraft:netherite_leggings"},{components:{"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:snout"}},id:"minecraft:netherite_chestplate"},{components:{"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:dune"}},id:"minecraft:netherite_helmet"}]}
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=160..}] run execute at @e[tag=shield_brute] run playsound minecraft:entity.iron_golem.death master @a ~ ~ ~ 50 0.1 1
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=160..}] run effect give @e[tag=shield_brute] minecraft:resistance infinite 10 true
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=160..}] run scoreboard players set shieldsActive shieldBruteTimer 1
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=160..}] run scoreboard players set shieldsAlive shieldBruteTimer 0
execute if score Engaged shieldBruteTimer matches 1 run execute if entity @e[tag=shield_brute,scores={shieldBruteTimer=160..}] run scoreboard players set @e[tag=shield_brute] shieldBruteTimer 0

#Setting up shields:
execute if score shieldsActive shieldBruteTimer matches 1 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["shield_center"]}
execute if score shieldsActive shieldBruteTimer matches 1 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Invisible:1b,Tags:["shield_orbit1","shield_orbit"],Pose:{RightArm:[76f,84f,0f]},DisabledSlots:4144959,HandItems:[{components:{"minecraft:banner_patterns":[{color:"yellow",pattern:"minecraft:gradient"},{color:"yellow",pattern:"minecraft:border"},{color:"black",pattern:"minecraft:gradient_up"}]},id:"minecraft:shield",count:1},{}]}
execute if score shieldsActive shieldBruteTimer matches 1 run summon interaction ~ ~ ~ {NoGravity:1b,width:1.8f,height:2f,response:1b,Tags:["shield_orbit1","shield_orbit"]}
execute if score shieldsActive shieldBruteTimer matches 1 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Invisible:1b,Tags:["shield_orbit2","shield_orbit"],Pose:{RightArm:[76f,84f,0f]},DisabledSlots:4144959,HandItems:[{components:{"minecraft:banner_patterns":[{color:"yellow",pattern:"minecraft:gradient"},{color:"yellow",pattern:"minecraft:border"},{color:"black",pattern:"minecraft:gradient_up"}]},id:"minecraft:shield",count:1},{}]}
execute if score shieldsActive shieldBruteTimer matches 1 run summon interaction ~ ~ ~ {NoGravity:1b,width:1.8f,height:2f,response:1b,Tags:["shield_orbit2","shield_orbit"]}
execute if score shieldsActive shieldBruteTimer matches 1 run summon armor_stand ~ ~ ~ {NoGravity:1b,ShowArms:1b,Invisible:1b,Tags:["shield_orbit3","shield_orbit"],Pose:{RightArm:[76f,84f,0f]},DisabledSlots:4144959,HandItems:[{components:{"minecraft:banner_patterns":[{color:"yellow",pattern:"minecraft:gradient"},{color:"yellow",pattern:"minecraft:border"},{color:"black",pattern:"minecraft:gradient_up"}]},id:"minecraft:shield",count:1},{}]}
execute if score shieldsActive shieldBruteTimer matches 1 run summon interaction ~ ~ ~ {NoGravity:1b,width:1.8f,height:2f,response:1b,Tags:["shield_orbit3","shield_orbit"]}
execute if score shieldsActive shieldBruteTimer matches 1 run tag @e[tag=shield_brute] add shielded
execute if score shieldsActive shieldBruteTimer matches 1 run scoreboard players set shieldsActive shieldBruteTimer 2
#While shields are active:
#TO-DO: implement a mechanic to stun the piglin that does either or both:
#Stop the piglin from moving
#stop the shields from moving
execute if score shieldsActive shieldBruteTimer matches 2 run execute as @e[tag=shield_center] at @s run tp @s ~ ~ ~ ~5 ~
execute if score shieldsActive shieldBruteTimer matches 2 run execute as @e[tag=shield_center] at @s run tp @e[tag=shield_orbit1] ^3 ^ ^1 facing ^1 ^ ^0.9
execute if score shieldsActive shieldBruteTimer matches 2 run execute as @e[tag=shield_center] at @s run tp @e[tag=shield_orbit2] ^-2.8 ^ ^1.2 facing ^1 ^ ^0.9
execute if score shieldsActive shieldBruteTimer matches 2 run execute as @e[tag=shield_center] at @s run tp @e[tag=shield_orbit3] ^0.3 ^ ^-3 facing ^1 ^ ^0.9
execute if score shieldsActive shieldBruteTimer matches 2 run execute as @e[tag=shield_brute] at @e[tag=shield_brute] run tp @e[tag=shield_center] ~ ~ ~
execute if score shieldsActive shieldBruteTimer matches 2 run execute if score shieldsAlive shieldBruteTimer matches 0..2 run execute as @e[type=armor_stand,tag=shield_orbit1] run scoreboard players add shieldsAlive shieldBruteTimer 1
execute if score shieldsActive shieldBruteTimer matches 2 run execute if score shieldsAlive shieldBruteTimer matches 0..2 run execute as @e[type=armor_stand,tag=shield_orbit2] run scoreboard players add shieldsAlive shieldBruteTimer 1
execute if score shieldsActive shieldBruteTimer matches 2 run execute if score shieldsAlive shieldBruteTimer matches 0..2 run execute as @e[type=armor_stand,tag=shield_orbit3] run scoreboard players add shieldsAlive shieldBruteTimer 1
execute if score shieldsActive shieldBruteTimer matches 2 run execute if score shieldsAlive shieldBruteTimer matches 0..5 run execute as @e[tag=shield_center] run scoreboard players remove shieldsAlive shieldBruteTimer 1
#Once all shields have died:
execute if score shieldsAlive shieldBruteTimer matches -1 run execute at @e[tag=shield_brute] run playsound minecraft:entity.generic.hurt master @a ~ ~ ~ 50 0.1 1
execute if score shieldsAlive shieldBruteTimer matches -1 run data merge entity @e[tag=shield_brute,limit=1] {ArmorItems:[{},{},{},{}]}
execute if score shieldsAlive shieldBruteTimer matches -1 run tag @e[tag=shield_brute] remove shielded
execute if score shieldsAlive shieldBruteTimer matches -1 run effect clear @e[tag=shield_brute] minecraft:resistance
execute if score shieldsAlive shieldBruteTimer matches -1 run scoreboard players set Armor shieldBruteTimer 0
execute if score shieldsAlive shieldBruteTimer matches -1 run kill @e[tag=shield_center]
execute if score shieldsAlive shieldBruteTimer matches -1 run kill @e[tag=shield_orbit]
execute if score shieldsAlive shieldBruteTimer matches -1 run scoreboard players set Engaged shieldBruteTimer -1
execute if score shieldsAlive shieldBruteTimer matches -1 run scoreboard players set shieldsActive shieldBruteTimer 0
execute if score shieldsAlive shieldBruteTimer matches -1 run scoreboard players set shieldsAlive shieldBruteTimer 0
#EngagedCooldown
execute if score Engaged shieldBruteTimer matches -1 run scoreboard players add EngagedCooldown shieldBruteTimer 1
execute if score EngagedCooldown shieldBruteTimer matches 160..200 run scoreboard players set Engaged shieldBruteTimer 0
execute if score EngagedCooldown shieldBruteTimer matches 160..200 run scoreboard players set EngagedCooldown shieldBruteTimer 0




