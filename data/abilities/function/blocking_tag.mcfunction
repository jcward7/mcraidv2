execute at @s run summon item ^ ^1.5 ^3.5 {Tags:["indicator"],PickupDelay:100,Age:5987,CustomNameVisible:1b,CustomName:'{"bold":true,"text":""}',Item:{id:"minecraft:polished_blackstone_button",Count:1b},Motion:[0.25,0.35,0.0]}
data merge entity @e[tag=indicator,limit=1] {CustomName:'{"bold":true,"text":"BLOCKED!","color":"gray"}'}
execute at @s run playsound minecraft:item.shield.block master @a ~ ~ ~ 25 1 1
advancement revoke @s only abilities:blocking_tag