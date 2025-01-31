execute as @e[tag=craig_health] at @e[tag=craig_health] if entity @e[tag=micheal_health,distance=5..] run setblock -4 -60 -4 redstone_block
execute if entity @e[tag=dummy,scores={healthSyncCheck=2}] run tellraw @a {"text":"Craig and Micheal fall out of sync!","color":"yellow"}
execute if entity @e[tag=dummy,scores={healthSyncCheck=100}] run setblock -4 -60 -4 air
execute if entity @e[tag=dummy,scores={healthSyncCheck=100}] run scoreboard players set @e[tag=dummy] healthSyncCheck 0