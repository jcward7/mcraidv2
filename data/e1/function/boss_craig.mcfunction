execute if entity @e[tag=craig] run bossbar set minecraft:craig visible true
execute as @a at @s as @e[tag=craig] at @s store result bossbar minecraft:craig value run data get entity @s Health
execute as @e[tag=craig] at @e[tag=craig] store result score @e[tag=craig] trueHealth run data get entity @s Health

execute if entity @e[tag=craig,scores={trueHealth=20}] run teleport @e[tag=craig_health] 20 -59 0
execute if entity @e[tag=craig,scores={trueHealth=19}] run teleport @e[tag=craig_health] 19 -59 0
execute if entity @e[tag=craig,scores={trueHealth=18}] run teleport @e[tag=craig_health] 18 -59 0
execute if entity @e[tag=craig,scores={trueHealth=17}] run teleport @e[tag=craig_health] 17 -59 0
execute if entity @e[tag=craig,scores={trueHealth=16}] run teleport @e[tag=craig_health] 16 -59 0
execute if entity @e[tag=craig,scores={trueHealth=15}] run teleport @e[tag=craig_health] 15 -59 0
execute if entity @e[tag=craig,scores={trueHealth=14}] run teleport @e[tag=craig_health] 14 -59 0
execute if entity @e[tag=craig,scores={trueHealth=13}] run teleport @e[tag=craig_health] 13 -59 0
execute if entity @e[tag=craig,scores={trueHealth=12}] run teleport @e[tag=craig_health] 12 -59 0
execute if entity @e[tag=craig,scores={trueHealth=11}] run teleport @e[tag=craig_health] 11 -59 0
execute if entity @e[tag=craig,scores={trueHealth=10}] run teleport @e[tag=craig_health] 10 -59 0
execute if entity @e[tag=craig,scores={trueHealth=9}] run teleport @e[tag=craig_health] 9 -59 0
execute if entity @e[tag=craig,scores={trueHealth=8}] run teleport @e[tag=craig_health] 8 -59 0
execute if entity @e[tag=craig,scores={trueHealth=7}] run teleport @e[tag=craig_health] 7 -59 0
execute if entity @e[tag=craig,scores={trueHealth=6}] run teleport @e[tag=craig_health] 6 -59 0
execute if entity @e[tag=craig,scores={trueHealth=5}] run teleport @e[tag=craig_health] 5 -59 0
execute if entity @e[tag=craig,scores={trueHealth=4}] run teleport @e[tag=craig_health] 4 -59 0
execute if entity @e[tag=craig,scores={trueHealth=3}] run teleport @e[tag=craig_health] 3 -59 0
execute if entity @e[tag=craig,scores={trueHealth=2}] run teleport @e[tag=craig_health] 2 -59 0
execute if entity @e[tag=craig,scores={trueHealth=1}] run teleport @e[tag=craig_health] 1 -59 0
execute if entity @e[tag=craig,scores={trueHealth=0}] run teleport @e[tag=craig_health] 0 -59 0






















#probably needs to just be hidden whenever the bosses are actually killed during the encounter
#execute if entity @e[type=cow,tag=!craig,tag=!micheal] run bossbar set minecraft:craig visible false

#this is for reference, was used from the 2020 raid during 1.16.1
#execute as @a at @s as @e[tag=tester] at @s store result bossbar minecraft:test1 value run data get entity @s Health