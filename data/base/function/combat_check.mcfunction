effect clear @s minecraft:regeneration
execute as @s if entity @s[tag=combat1] run scoreboard players set @s combatCounter 0
execute as @s if entity @s[tag=combat2] run scoreboard players set @s combatCounter 0
execute as @s if entity @s[tag=combat3] run scoreboard players set @s combatCounter 0

#combat1 == 3
#combat2 == 5
#combat3 == 7
#combat4 == 0
#combat4 is a backup for specific edge cases to make sure nothing breaks

execute as @s[tag=!incombat] if entity @e[tag=dummy,scores={combatCounter=12}] run tag @s add combat4

execute as @s[tag=!incombat] if entity @e[tag=dummy,scores={combatCounter=10}] run tag @s add combat2
execute as @s[tag=!incombat] if entity @e[tag=dummy,scores={combatCounter=10}] run scoreboard players add @e[tag=dummy] combatCounter 5

execute as @s[tag=!incombat] if entity @e[tag=dummy,scores={combatCounter=8}] run tag @s add combat3
execute as @s[tag=!incombat] if entity @e[tag=dummy,scores={combatCounter=8}] run scoreboard players add @e[tag=dummy] combatCounter 7

execute as @s[tag=!incombat] if entity @e[tag=dummy,scores={combatCounter=5}] run tag @s add combat3
execute as @s[tag=!incombat] if entity @e[tag=dummy,scores={combatCounter=5}] run scoreboard players add @e[tag=dummy] combatCounter 7

execute as @s[tag=!incombat] if entity @e[tag=dummy,scores={combatCounter=3}] run tag @s add combat2
execute as @s[tag=!incombat] if entity @e[tag=dummy,scores={combatCounter=3}] run scoreboard players add @e[tag=dummy] combatCounter 5

execute as @s[tag=!incombat] if entity @e[tag=dummy,scores={combatCounter=0}] run tag @s add combat1
execute as @s[tag=!incombat] if entity @e[tag=dummy,scores={combatCounter=0}] run scoreboard players add @e[tag=dummy] combatCounter 3

tag @s[tag=!incombat] add incombat
advancement revoke @s only base:combat_check