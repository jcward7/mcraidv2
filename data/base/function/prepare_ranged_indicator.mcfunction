tag @s add recentRanged
execute store result score indicatorDirection damageTracker run random value 1..3 minecraft:10
execute if score indicatorDirection damageTracker matches 1 run execute at @e[tag=recentRanged] run summon item ^ ^1.5 ^3.5 {Tags:["indicator"],PickupDelay:100,Age:5987,CustomNameVisible:1b,CustomName:'{"bold":true,"text":""}',Item:{id:"minecraft:polished_blackstone_button",Count:1b},Motion:[0.28,0.15,0.03]}
execute if score indicatorDirection damageTracker matches 1 run execute if entity @e[tag=dummy,scores={randomCritChance=2..10}] run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 50 1 1
execute if score indicatorDirection damageTracker matches 2 run execute at @e[tag=recentRanged] run summon item ^ ^1.5 ^3.5 {Tags:["indicator"],PickupDelay:100,Age:5987,CustomNameVisible:1b,CustomName:'{"bold":true,"text":""}',Item:{id:"minecraft:polished_blackstone_button",Count:1b},Motion:[0.25,0.35,0.0]}
execute if score indicatorDirection damageTracker matches 2 run execute if entity @e[tag=dummy,scores={randomCritChance=2..10}] run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 50 0.7 1
execute if score indicatorDirection damageTracker matches 3 run execute at @e[tag=recentRanged] run summon item ^ ^1.5 ^3.5 {Tags:["indicator"],PickupDelay:100,Age:5987,CustomNameVisible:1b,CustomName:'{"bold":true,"text":""}',Item:{id:"minecraft:polished_blackstone_button",Count:1b},Motion:[0.0,0.15,0.17]}
execute if score indicatorDirection damageTracker matches 3 run execute if entity @e[tag=dummy,scores={randomCritChance=2..10}] run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 50 1.3 1
execute if entity @e[tag=dummy,scores={randomCritChance=2..10}] run data merge entity @e[tag=indicator,limit=1] {CustomName:'{"bold":true,"text":"HIT!","color":"white"}'}
execute if entity @e[tag=dummy,scores={randomCritChance=1}] run data merge entity @e[tag=indicator,limit=1] {CustomName:'{"bold":true,"text":"CRIT HIT!","color":"red"}'}
execute if entity @e[tag=dummy,scores={randomCritChance=1}] run playsound minecraft:block.bell.use master @s ~ ~ ~ 50 0.1 1

scoreboard players set @e[tag=dummy] randomCritChance 0
tag @s remove recentRanged
tag @s remove recentDamager
advancement revoke @s only base:damage_indicator
advancement revoke @s only base:ranged_indicator