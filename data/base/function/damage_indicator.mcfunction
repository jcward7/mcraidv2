scoreboard players operation @e[tag=recentDamager] damageTracker /= @e[tag=dummy] damageTrackerCorrection
data merge block -5 -60 -8 {front_text:{has_glowing_text: 1b, color: "black", messages: ['{"score":{"objective":"damageTracker","name":"@p[tag=recentDamager]"}}','""','""','""']}}
execute store result score @e[tag=dummy] damageTracker run scoreboard players get @e[tag=recentDamager,limit=1] damageTracker
execute store result score indicatorDirection damageTracker run random value 1..3 minecraft:10
execute if score indicatorDirection damageTracker matches 1 run execute at @e[tag=recentDamager] run summon item ^ ^1.5 ^3.5 {Tags:["indicator"],PickupDelay:100,Age:5987,CustomNameVisible:1b,CustomName:'{"bold":true,"text":""}',Item:{id:"minecraft:polished_blackstone_button",Count:1b},Motion:[0.28,0.15,0.03]}
execute if score indicatorDirection damageTracker matches 2 run execute at @e[tag=recentDamager] run summon item ^ ^1.5 ^3.5 {Tags:["indicator"],PickupDelay:100,Age:5987,CustomNameVisible:1b,CustomName:'{"bold":true,"text":""}',Item:{id:"minecraft:polished_blackstone_button",Count:1b},Motion:[0.25,0.35,0.0]}
execute if score indicatorDirection damageTracker matches 3 run execute at @e[tag=recentDamager] run summon item ^ ^1.5 ^3.5 {Tags:["indicator"],PickupDelay:100,Age:5987,CustomNameVisible:1b,CustomName:'{"bold":true,"text":""}',Item:{id:"minecraft:polished_blackstone_button",Count:1b},Motion:[0.0,0.15,0.17]}
data modify entity @e[tag=indicator,limit=1] CustomName set from block -5 -60 -8 front_text.messages[0]
tag @e[type=item,tag=indicator] remove indicator
advancement revoke @p[tag=recentDamager] only base:damage_indicator
scoreboard players set @e[tag=recentDamager] damageTracker 0
scoreboard players set @e[tag=dummy] damageTracker 0
tag @p[tag=recentDamager] remove recentDamager