#item used:
#give @p music_disc_13[consumable={consume_seconds:0,animation:"none",sound:"ui.hud.bubble_pop",has_consume_particles:false},use_cooldown={seconds:5,cooldown_group:"ability2"}] 1
execute as @e[scores={ability2=1}] run scoreboard players set @e[scores={ability2=1}] ability2 2
execute as @e[scores={ability2=2}] run kill @e[tag=spring]
execute at @e[scores={ability2=2}] run summon block_display ~-3.75 ~ ~-3.75 {Glowing:1b,shadow_radius:0f,shadow_strength:0f,start_interpolation:-1,interpolation_duration:100,Tags:["spring"],glow_color_override:1025636,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[7.5f,0.075f,7.5f]},block_state:{Name:"minecraft:lime_stained_glass"}}
execute as @e[scores={ability2=2}] at @s run playsound minecraft:entity.illusioner.prepare_mirror master @p ~ ~ ~ 50 2 1
execute as @e[scores={ability2=2}] run scoreboard players set @e[scores={ability2=2}] ability2 0