execute as @e[type=interaction,sort=nearest,limit=1] on attacker run kill @e[type=armor_stand,tag=shield_orbit,sort=nearest,limit=1]
execute as @e[type=interaction,sort=nearest,limit=1] on attacker run kill @e[type=interaction,sort=nearest,limit=1]
execute at @s run summon item ^ ^1.5 ^3.5 {Tags:["indicator"],PickupDelay:100,Age:5987,CustomNameVisible:1b,CustomName:'{"bold":true,"text":""}',Item:{id:"minecraft:polished_blackstone_button",Count:1b},Motion:[0.25,0.35,0.0]}
data merge entity @e[tag=indicator,limit=1] {CustomName:'{"bold":true,"text":"SHIELDED!","color":"aqua"}'}
playsound minecraft:item.wolf_armor.crack master @s ~ ~ ~ 50 0.3 1
advancement revoke @s only abilities:shield_interaction