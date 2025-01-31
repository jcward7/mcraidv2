execute if entity @e[tag=dummy,scores={movingworldborder=19}] run summon arrow 123 107 -76 {NoGravity:1b,pickup:2b,Motion:[-0.10,0.0,0.0],Tags:["worldbordercenter"]}

execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=20}] run worldborder center ~ ~
execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=20}] run worldborder set 30
execute at @e[tag=dummy] if entity @e[tag=dummy,scores={movingworldborder=20}] run tellraw @a {"text":"The boundaries begin to shift...","color":"red"}
execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=20..199}] run worldborder center ~ ~


execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=200}] run worldborder set 1000
execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=200}] run function e4:worldborder_stop

































#older implementation, keeping just in case
#execute if entity @e[tag=dummy,scores={movingworldborder=20}] run tp @e[tag=worldbordercenter] 123 101 -76
#execute if entity @e[tag=dummy,scores={movingworldborder=20}] run worldborder set 30
#execute if entity @e[tag=dummy,scores={movingworldborder=30}] run worldborder set 20 6


#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=20}] run tellraw @a {"text":"The boundaries begin to shift...","color":"red"}
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=20}] run tp @e[tag=worldbordercenter] ~-0.15 ~ ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=20}] run worldborder center ~-0.15 ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=22}] run tp @e[tag=worldbordercenter] ~-0.15 ~ ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=22}] run worldborder center ~-0.15 ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=24}] run tp @e[tag=worldbordercenter] ~-0.15 ~ ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=24}] run worldborder center ~-0.15 ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=26}] run tp @e[tag=worldbordercenter] ~-0.15 ~ ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=26}] run worldborder center ~-0.15 ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=28}] run tp @e[tag=worldbordercenter] ~-0.15 ~ ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=28}] run worldborder center ~-0.15 ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=30}] run tp @e[tag=worldbordercenter] ~-0.15 ~ ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=30}] run worldborder center ~-0.15 ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=32}] run tp @e[tag=worldbordercenter] ~-0.15 ~ ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=32}] run worldborder center ~-0.15 ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=34}] run tp @e[tag=worldbordercenter] ~-0.15 ~ ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=34}] run worldborder center ~-0.15 ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=36}] run tp @e[tag=worldbordercenter] ~-0.15 ~ ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=36}] run worldborder center ~-0.15 ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=38}] run tp @e[tag=worldbordercenter] ~-0.15 ~ ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=38}] run worldborder center ~-0.15 ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=40}] run tp @e[tag=worldbordercenter] ~-0.15 ~ ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=40}] run worldborder center ~-0.15 ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=42}] run tp @e[tag=worldbordercenter] ~-0.15 ~ ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=42}] run worldborder center ~-0.15 ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=44}] run tp @e[tag=worldbordercenter] ~-0.15 ~ ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=44}] run worldborder center ~-0.15 ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=46}] run tp @e[tag=worldbordercenter] ~-0.15 ~ ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=46}] run worldborder center ~-0.15 ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=48}] run tp @e[tag=worldbordercenter] ~-0.15 ~ ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=48}] run worldborder center ~-0.15 ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=50}] run tp @e[tag=worldbordercenter] ~-0.15 ~ ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=50}] run worldborder center ~-0.15 ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=52}] run tp @e[tag=worldbordercenter] ~-0.15 ~ ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=52}] run worldborder center ~-0.15 ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=54}] run tp @e[tag=worldbordercenter] ~-0.15 ~ ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=54}] run worldborder center ~-0.15 ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=56}] run tp @e[tag=worldbordercenter] ~-0.15 ~ ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=56}] run worldborder center ~-0.15 ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=58}] run tp @e[tag=worldbordercenter] ~-0.15 ~ ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=58}] run worldborder center ~-0.15 ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=60}] run tp @e[tag=worldbordercenter] ~-0.15 ~ ~
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=60}] run worldborder center ~-0.15 ~
#
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=200}] run worldborder set 1000
#execute at @e[tag=worldbordercenter] if entity @e[tag=dummy,scores={movingworldborder=200}] run function e4:worldborder_stop















