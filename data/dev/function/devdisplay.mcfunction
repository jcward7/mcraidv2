#used in scoreboard devDisplay
execute store result score warpedNodeAnimation devDisplay run scoreboard players get @e[tag=dummy,limit=1] warpedNodeAnimation
execute store result score encounter1 devDisplay run scoreboard players get @e[tag=dummy,limit=1] encounter1
execute store result score warpedCooking devDisplay run scoreboard players get @e[tag=dummy,limit=1] warpedCooking
execute store result score crimsonWell devDisplay run scoreboard players get @e[tag=dummy,limit=1] crimsonWell
execute store result score warpedWell devDisplay run scoreboard players get @e[tag=dummy,limit=1] warpedWell
execute store result score warpedCoreDeposit devDisplay run scoreboard players get @e[tag=dummy,limit=1] warpedCoreDeposit

execute store result score healthSyncCheck devDisplay run scoreboard players get @e[tag=dummy,limit=1] healthSyncCheck
execute store result score @e[tag=craig] devDisplay run scoreboard players get @e[tag=craig,limit=1] trueHealth
execute store result score @e[tag=micheal] devDisplay run scoreboard players get @e[tag=micheal,limit=1] trueHealth

#wellkeepersKilled scoreboard
execute store result score @e[tag=dummy] wellkeepersKilled run scoreboard players get @a[limit=1] wellkeepersKilled