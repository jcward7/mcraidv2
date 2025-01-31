tellraw @a[team=dev] {"text":"warped_temp_trigger: function started","color":"yellow"}
execute store result score @e[tag=dummy] randomValue run random value 1..6 minecraft:10

#starts the timer for the animation (scoreboard warpedNodeAnimation)
setblock -4 -60 -2 redstone_block