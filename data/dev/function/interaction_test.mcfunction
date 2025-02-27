execute as @e[type=interaction,sort=nearest,limit=1] on attacker run kill @e[type=armor_stand,tag=shield_orbit,sort=nearest,limit=1]
execute as @e[type=interaction,sort=nearest,limit=1] on attacker run kill @e[type=interaction,sort=nearest,limit=1]
playsound minecraft:item.lodestone_compass.lock master @s ~ ~ ~ 100 0.1 1
advancement revoke @s only dev:interaction_test