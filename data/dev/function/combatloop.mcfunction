execute as @e[tag=combat1] run scoreboard players add @e[tag=combat1] combatCounter 1
execute as @e[tag=combat2] run scoreboard players add @e[tag=combat2] combatCounter 1
execute as @e[tag=combat3] run scoreboard players add @e[tag=combat3] combatCounter 1
execute as @e[tag=combat4] run scoreboard players add @e[tag=combat4] combatCounter 1




execute as @e[tag=combat1] if entity @e[tag=combat1,scores={combatCounter=100..}] run effect give @e[tag=combat1] minecraft:regeneration 11 2 false
execute as @e[tag=combat1] if entity @e[tag=combat1,scores={combatCounter=100..}] run scoreboard players remove @e[tag=dummy] combatCounter 3
execute as @e[tag=combat1] if entity @e[tag=combat1,scores={combatCounter=100..}] run tag @e[tag=combat1] remove incombat
execute as @e[tag=combat1] if entity @e[tag=combat1,scores={combatCounter=100..}] run tag @e[tag=combat1] remove combat1

execute as @e[tag=combat2] if entity @e[tag=combat2,scores={combatCounter=100..}] run effect give @e[tag=combat2] minecraft:regeneration 11 2 false
execute as @e[tag=combat2] if entity @e[tag=combat2,scores={combatCounter=100..}] run scoreboard players remove @e[tag=dummy] combatCounter 5
execute as @e[tag=combat2] if entity @e[tag=combat2,scores={combatCounter=100..}] run tag @e[tag=combat2] remove incombat
execute as @e[tag=combat2] if entity @e[tag=combat2,scores={combatCounter=100..}] run tag @e[tag=combat2] remove combat2

execute as @e[tag=combat3] if entity @e[tag=combat3,scores={combatCounter=100..}] run effect give @e[tag=combat3] minecraft:regeneration 11 2 false
execute as @e[tag=combat3] if entity @e[tag=combat3,scores={combatCounter=100..}] run scoreboard players remove @e[tag=dummy] combatCounter 7
execute as @e[tag=combat3] if entity @e[tag=combat3,scores={combatCounter=100..}] run tag @e[tag=combat3] remove incombat
execute as @e[tag=combat3] if entity @e[tag=combat3,scores={combatCounter=100..}] run tag @e[tag=combat3] remove combat3

execute as @e[tag=combat4] if entity @e[tag=combat4,scores={combatCounter=100..}] run effect give @e[tag=combat4] minecraft:regeneration 11 2 false
execute as @e[tag=combat4] if entity @e[tag=combat4,scores={combatCounter=100..}] run scoreboard players remove @e[tag=dummy] combatCounter 0
execute as @e[tag=combat4] if entity @e[tag=combat4,scores={combatCounter=100..}] run tag @e[tag=combat4] remove incombat
execute as @e[tag=combat4] if entity @e[tag=combat4,scores={combatCounter=100..}] run tag @e[tag=combat4] remove combat4

execute if entity @e[scores={combatCounter=100..}] run scoreboard players set @e[scores={combatCounter=100..}] combatCounter 0
