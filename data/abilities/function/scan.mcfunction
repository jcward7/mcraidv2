#item used:
#give @p music_disc_11[consumable={consume_seconds:0,animation:"none",sound:"ui.hud.bubble_pop",has_consume_particles:false},use_cooldown={seconds:5,cooldown_group:"ability1"}] 1
execute as @e[scores={ability1=1}] run scoreboard players set @e[scores={ability1=1}] ability1 2
execute as @e[scores={ability1=2}] run effect give @e[distance=..20] glowing 2 0 true
execute as @e[scores={ability1=2}] at @s run playsound minecraft:entity.drowned.shoot master @a ~ ~ ~ 50 0.25 1
execute as @e[scores={ability1=2}] run scoreboard players set @e[scores={ability1=2}] ability1 0