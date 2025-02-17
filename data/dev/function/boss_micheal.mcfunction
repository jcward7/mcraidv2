execute if entity @e[tag=micheal] run bossbar set minecraft:micheal visible true
execute as @a at @s as @e[tag=micheal] at @s store result bossbar minecraft:micheal value run data get entity @s Health
execute as @e[tag=micheal] at @e[tag=micheal] store result score @e[tag=micheal] trueHealth run data get entity @s Health

execute if entity @e[tag=micheal,scores={trueHealth=20}] run teleport @e[tag=micheal_health] 20 -59 0
execute if entity @e[tag=micheal,scores={trueHealth=19}] run teleport @e[tag=micheal_health] 19 -59 0
execute if entity @e[tag=micheal,scores={trueHealth=18}] run teleport @e[tag=micheal_health] 18 -59 0
execute if entity @e[tag=micheal,scores={trueHealth=17}] run teleport @e[tag=micheal_health] 17 -59 0
execute if entity @e[tag=micheal,scores={trueHealth=16}] run teleport @e[tag=micheal_health] 16 -59 0
execute if entity @e[tag=micheal,scores={trueHealth=15}] run teleport @e[tag=micheal_health] 15 -59 0
execute if entity @e[tag=micheal,scores={trueHealth=14}] run teleport @e[tag=micheal_health] 14 -59 0
execute if entity @e[tag=micheal,scores={trueHealth=13}] run teleport @e[tag=micheal_health] 13 -59 0
execute if entity @e[tag=micheal,scores={trueHealth=12}] run teleport @e[tag=micheal_health] 12 -59 0
execute if entity @e[tag=micheal,scores={trueHealth=11}] run teleport @e[tag=micheal_health] 11 -59 0
execute if entity @e[tag=micheal,scores={trueHealth=10}] run teleport @e[tag=micheal_health] 10 -59 0
execute if entity @e[tag=micheal,scores={trueHealth=9}] run teleport @e[tag=micheal_health] 9 -59 0
execute if entity @e[tag=micheal,scores={trueHealth=8}] run teleport @e[tag=micheal_health] 8 -59 0
execute if entity @e[tag=micheal,scores={trueHealth=7}] run teleport @e[tag=micheal_health] 7 -59 0
execute if entity @e[tag=micheal,scores={trueHealth=6}] run teleport @e[tag=micheal_health] 6 -59 0
execute if entity @e[tag=micheal,scores={trueHealth=5}] run teleport @e[tag=micheal_health] 5 -59 0
execute if entity @e[tag=micheal,scores={trueHealth=4}] run teleport @e[tag=micheal_health] 4 -59 0
execute if entity @e[tag=micheal,scores={trueHealth=3}] run teleport @e[tag=micheal_health] 3 -59 0
execute if entity @e[tag=micheal,scores={trueHealth=2}] run teleport @e[tag=micheal_health] 2 -59 0
execute if entity @e[tag=micheal,scores={trueHealth=1}] run teleport @e[tag=micheal_health] 1 -59 0
execute if entity @e[tag=micheal,scores={trueHealth=0}] run teleport @e[tag=micheal_health] 0 -59 0















#probably needs to just be hidden whenever the bosses are actually killed during the encounter
#execute if entity @e[type=sheep,tag=!micheal,tag=!micheal] run bossbar set minecraft:micheal visible false