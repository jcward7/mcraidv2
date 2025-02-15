#the following line DISABLES the item from being removed from the active deposits head slot
execute if entity @e[tag=dummy,scores={warpedCoreDeposit=2}] run data modify entity @e[tag=activeDeposit,limit=1] DisabledSlots set value 2039583


execute if entity @e[tag=dummy,scores={warpedCoreDeposit=10}] as @e[type=armor_stand,tag=north_deposit] if entity @e[type=armor_stand,tag=north_deposit,nbt={ArmorItems:[{},{},{},{id:"minecraft:warped_hyphae",count:1}]}] run attribute @s minecraft:scale base set 1.5
execute if entity @e[tag=dummy,scores={warpedCoreDeposit=10}] as @e[type=armor_stand,tag=east_deposit] if entity @e[type=armor_stand,tag=east_deposit,nbt={ArmorItems:[{},{},{},{id:"minecraft:warped_hyphae",count:1}]}] run attribute @s minecraft:scale base set 1.5
execute if entity @e[tag=dummy,scores={warpedCoreDeposit=10}] as @e[type=armor_stand,tag=south_deposit] if entity @e[type=armor_stand,tag=south_deposit,nbt={ArmorItems:[{},{},{},{id:"minecraft:warped_hyphae",count:1}]}] run attribute @s minecraft:scale base set 1.5
execute if entity @e[tag=dummy,scores={warpedCoreDeposit=10}] as @e[type=armor_stand,tag=west_deposit] if entity @e[type=armor_stand,tag=west_deposit,nbt={ArmorItems:[{},{},{},{id:"minecraft:warped_hyphae",count:1}]}] run attribute @s minecraft:scale base set 1.5
execute if entity @e[tag=dummy,scores={warpedCoreDeposit=20}] run function e1:summon_well_keeper
execute if entity @e[tag=dummy,scores={warpedCoreDeposit=60..}] run setblock -4 -60 6 air
execute if entity @e[tag=dummy,scores={warpedCoreDeposit=60..}] run scoreboard players set @e[tag=dummy] warpedCoreDeposit 0