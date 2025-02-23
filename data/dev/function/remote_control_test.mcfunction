execute as @e[tag=controller] if predicate dev:forward_input run execute as @e[tag=controlled] at @e[tag=controlled] run tp @s ~ ~ ~-0.21585
execute as @e[tag=controller] if predicate dev:left_input run execute as @e[tag=controlled] at @e[tag=controlled] run tp @s ~-0.21585 ~ ~
execute as @e[tag=controller] if predicate dev:backward_input run execute as @e[tag=controlled] at @e[tag=controlled] run tp @s ~ ~ ~0.21585
execute as @e[tag=controller] if predicate dev:right_input run execute as @e[tag=controlled] at @e[tag=controlled] run tp @s ~0.21585 ~ ~