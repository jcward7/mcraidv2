execute as @e[tag=hybrid_piglin,tag=!swapCooldown] at @s if entity @p[distance=..2.5] run scoreboard players add @s hybridPiglin 0
execute as @e[tag=hybrid_piglin,tag=!swapCooldown] at @s if entity @p[distance=..2.5] run tag @s add swapCooldown
execute as @e[tag=swapCooldown,scores={hybridPiglin=0..41}] run scoreboard players add @s hybridPiglin 1
execute as @e[tag=swapCooldown,scores={hybridPiglin=1}] run data merge entity @s {HandItems:[{components:{},id:"minecraft:iron_sword",count:1},{}]}
execute as @e[tag=swapCooldown,scores={hybridPiglin=40..}] run scoreboard players set @s hybridPiglin -1
execute as @e[tag=swapCooldown,scores={hybridPiglin=-1}] run tag @s remove swapCooldown
execute as @e[tag=hybrid_piglin,scores={hybridPiglin=-1}] at @s if entity @p[distance=3.5..] run data merge entity @s {HandItems:[{components:{"minecraft:enchantments":{levels:{"minecraft:quick_charge":10}},"minecraft:unbreakable":{}},id:"minecraft:crossbow",count:1},{}]}
execute as @e[tag=hybrid_piglin,scores={hybridPiglin=-1}] run scoreboard players set @s hybridPiglin 0
