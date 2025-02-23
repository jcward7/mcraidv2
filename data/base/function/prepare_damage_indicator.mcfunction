tag @s add recentDamager
#this stores the PREVIOUS damage
execute store result score @e[tag=dummy,limit=1] damageTracker run scoreboard players get @p[tag=recentDamager] damageTracker
