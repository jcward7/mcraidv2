execute if entity @e[scores={crossbowUsed=1..}] run scoreboard players add @e[scores={crossbowUsed=1..}] rangedWeaponUsed 1
execute if entity @e[scores={crossbowUsed=1..}] run scoreboard players set @e[scores={crossbowUsed=1..}] crossbowUsed 0
execute if entity @e[scores={bowUsed=1..}] run scoreboard players add @e[scores={bowUsed=1..}] rangedWeaponUsed 1
execute if entity @e[scores={bowUsed=1..}] run scoreboard players set @e[scores={bowUsed=1..}] bowUsed 0

execute if entity @e[scores={rangedWeaponUsed=1..}] run execute store result score @e[tag=dummy] randomCritChance run random value 1..10 minecraft:10
execute if entity @e[scores={rangedWeaponUsed=1..}] run execute store result score randomCritChance devDisplay run scoreboard players get @e[tag=dummy,limit=1] randomCritChance
execute if entity @e[scores={rangedWeaponUsed=1..}] if entity @e[tag=dummy,scores={randomCritChance=1}] as @e[scores={rangedWeaponUsed=1..}] if entity @e[type=arrow,sort=nearest,limit=1,nbt={crit:1b}] run data modify entity @e[type=arrow,sort=nearest,limit=1,nbt={crit:1b}] damage set value 4.0d
execute if entity @e[scores={rangedWeaponUsed=1..}] run scoreboard players set @e[scores={rangedWeaponUsed=1..}] rangedWeaponUsed 0

