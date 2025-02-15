execute if entity @e[type=armor_stand,tag=north_deposit,nbt={ArmorItems:[{},{},{},{id:"minecraft:warped_hyphae",count:1}]}] run tag @e[tag=north_deposit] add activeDeposit
execute if entity @e[type=armor_stand,tag=east_deposit,nbt={ArmorItems:[{},{},{},{id:"minecraft:warped_hyphae",count:1}]}] run tag @e[tag=east_deposit] add activeDeposit
execute if entity @e[type=armor_stand,tag=south_deposit,nbt={ArmorItems:[{},{},{},{id:"minecraft:warped_hyphae",count:1}]}] run tag @e[tag=south_deposit] add activeDeposit
execute if entity @e[type=armor_stand,tag=west_deposit,nbt={ArmorItems:[{},{},{},{id:"minecraft:warped_hyphae",count:1}]}] run tag @e[tag=west_deposit] add activeDeposit
tag @e[tag=activeDeposit] remove deposits
setblock -4 -60 6 redstone_block