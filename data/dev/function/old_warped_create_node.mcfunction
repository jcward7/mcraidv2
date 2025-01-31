# mainly just keeping this to be able to look back at this old method just incase it's needed for something
#
#
#
#
#node position 1 NEW METHOD
#																					###goal to achieve: 96.25

execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=2}] run summon arrow 130 85.35 72 {NoGravity:1b,Glowing:1b,Motion:[0.0,0.05,0.0],Tags:["falling_block"]}
execute at @e[tag=falling_block] if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=3..22}] run tp @e[tag=warped_node] ~ ~10 ~
execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=23}] run kill @e[tag=falling_block]







#node position 1
#execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=2}] run tp @e[tag=warped_node] 130 95.97 72
#execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=3}] run tp @e[tag=warped_node] 130 95.984 72
#execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=4}] run tp @e[tag=warped_node] 130 95.998 72
#execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=5}] run tp @e[tag=warped_node] 130 95.012 72
#execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=6}] run tp @e[tag=warped_node] 130 96.026 72
#execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=7}] run tp @e[tag=warped_node] 130 96.04 72
#execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=8}] run tp @e[tag=warped_node] 130 96.054 72
#execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=9}] run tp @e[tag=warped_node] 130 96.068 72
#execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=10}] run tp @e[tag=warped_node] 130 96.082 72
#execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=11}] run tp @e[tag=warped_node] 130 96.096 72
#execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=12}] run tp @e[tag=warped_node] 130 96.11 72
#execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=13}] run tp @e[tag=warped_node] 130 96.124 72
#execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=14}] run tp @e[tag=warped_node] 130 96.138 72
#execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=15}] run tp @e[tag=warped_node] 130 96.152 72
#execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=16}] run tp @e[tag=warped_node] 130 96.166 72
#execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=17}] run tp @e[tag=warped_node] 130 96.18 72
#execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=18}] run tp @e[tag=warped_node] 130 96.194 72
#execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=19}] run tp @e[tag=warped_node] 130 96.208 72
#execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=20}] run tp @e[tag=warped_node] 130 96.222 72
#execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=21}] run tp @e[tag=warped_node] 130 96.236 72
#execute if entity @e[tag=dummy,scores={randomValue=1,warpedNodeAnimation=22}] run tp @e[tag=warped_node] 130 96.25 72

#node position 2
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=2}] run tp @e[tag=warped_node] 117 99.97 108
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=3}] run tp @e[tag=warped_node] 117 99.984 108
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=4}] run tp @e[tag=warped_node] 117 99.998 108
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=5}] run tp @e[tag=warped_node] 117 100.012 108
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=6}] run tp @e[tag=warped_node] 117 100.026 108
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=7}] run tp @e[tag=warped_node] 117 100.04 108
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=8}] run tp @e[tag=warped_node] 117 100.054 108
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=9}] run tp @e[tag=warped_node] 117 100.068 108
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=10}] run tp @e[tag=warped_node] 117 100.082 108
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=11}] run tp @e[tag=warped_node] 117 100.096 108
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=12}] run tp @e[tag=warped_node] 117 100.11 108
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=13}] run tp @e[tag=warped_node] 117 100.124 108
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=14}] run tp @e[tag=warped_node] 117 100.138 108
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=15}] run tp @e[tag=warped_node] 117 100.152 108
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=16}] run tp @e[tag=warped_node] 117 100.166 108
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=17}] run tp @e[tag=warped_node] 117 100.18 108
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=18}] run tp @e[tag=warped_node] 117 100.194 108
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=19}] run tp @e[tag=warped_node] 117 100.208 108
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=20}] run tp @e[tag=warped_node] 117 100.222 108
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=21}] run tp @e[tag=warped_node] 117 100.236 108
execute if entity @e[tag=dummy,scores={randomValue=2,warpedNodeAnimation=22}] run tp @e[tag=warped_node] 117 100.25 108

#node position 3
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=2}] run tp @e[tag=warped_node] 136 99.97 97
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=3}] run tp @e[tag=warped_node] 136 99.984 97
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=4}] run tp @e[tag=warped_node] 136 99.998 97
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=5}] run tp @e[tag=warped_node] 136 100.012 97
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=6}] run tp @e[tag=warped_node] 136 100.026 97
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=7}] run tp @e[tag=warped_node] 136 100.04 97
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=8}] run tp @e[tag=warped_node] 136 100.054 97
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=9}] run tp @e[tag=warped_node] 136 100.068 97
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=10}] run tp @e[tag=warped_node] 136 100.082 97
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=11}] run tp @e[tag=warped_node] 136 100.096 97
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=12}] run tp @e[tag=warped_node] 136 100.11 97
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=13}] run tp @e[tag=warped_node] 136 100.124 97
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=14}] run tp @e[tag=warped_node] 136 100.138 97
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=15}] run tp @e[tag=warped_node] 136 100.152 97
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=16}] run tp @e[tag=warped_node] 136 100.166 97
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=17}] run tp @e[tag=warped_node] 136 100.18 97
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=18}] run tp @e[tag=warped_node] 136 100.194 97
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=19}] run tp @e[tag=warped_node] 136 100.208 97
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=20}] run tp @e[tag=warped_node] 136 100.222 97
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=21}] run tp @e[tag=warped_node] 136 100.236 97
execute if entity @e[tag=dummy,scores={randomValue=3,warpedNodeAnimation=22}] run tp @e[tag=warped_node] 136 100.25 97

#node position 4
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=2}] run tp @e[tag=warped_node] 145 99.111 111
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=3}] run tp @e[tag=warped_node] 145 99.984 111
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=4}] run tp @e[tag=warped_node] 145 99.998 111
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=5}] run tp @e[tag=warped_node] 145 100.012 111
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=6}] run tp @e[tag=warped_node] 145 100.026 111
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=7}] run tp @e[tag=warped_node] 145 100.04 111
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=8}] run tp @e[tag=warped_node] 145 100.054 111
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=9}] run tp @e[tag=warped_node] 145 100.068 111
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=10}] run tp @e[tag=warped_node] 145 100.082 111
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=11}] run tp @e[tag=warped_node] 145 100.096 111
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=12}] run tp @e[tag=warped_node] 145 100.11 111
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=13}] run tp @e[tag=warped_node] 145 100.124 111
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=14}] run tp @e[tag=warped_node] 145 100.138 111
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=15}] run tp @e[tag=warped_node] 145 100.152 111
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=16}] run tp @e[tag=warped_node] 145 100.166 111
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=17}] run tp @e[tag=warped_node] 145 100.18 111
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=18}] run tp @e[tag=warped_node] 145 100.194 111
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=19}] run tp @e[tag=warped_node] 145 100.208 111
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=20}] run tp @e[tag=warped_node] 145 100.222 111
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=21}] run tp @e[tag=warped_node] 145 100.236 111
execute if entity @e[tag=dummy,scores={randomValue=4,warpedNodeAnimation=22}] run tp @e[tag=warped_node] 145 100.25 111
#execute if entity @e[tag=dummy,scores={randomValue=4}] run tp @e[tag=warped_node] 145 100.25 111

#node position 5
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=2}] run tp @e[tag=warped_node] 153 104.95 95
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=3}] run tp @e[tag=warped_node] 153 104.984 95
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=4}] run tp @e[tag=warped_node] 153 104.998 95
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=5}] run tp @e[tag=warped_node] 153 105.012 95
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=6}] run tp @e[tag=warped_node] 153 105.026 95
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=7}] run tp @e[tag=warped_node] 153 105.04 95
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=8}] run tp @e[tag=warped_node] 153 105.054 95
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=9}] run tp @e[tag=warped_node] 153 105.068 95
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=10}] run tp @e[tag=warped_node] 153 105.082 95
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=11}] run tp @e[tag=warped_node] 153 105.096 95
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=12}] run tp @e[tag=warped_node] 153 105.11 95
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=13}] run tp @e[tag=warped_node] 153 105.124 95
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=14}] run tp @e[tag=warped_node] 153 105.138 95
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=15}] run tp @e[tag=warped_node] 153 105.152 95
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=16}] run tp @e[tag=warped_node] 153 105.166 95
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=17}] run tp @e[tag=warped_node] 153 105.18 95
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=18}] run tp @e[tag=warped_node] 153 105.194 95
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=19}] run tp @e[tag=warped_node] 153 105.208 95
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=20}] run tp @e[tag=warped_node] 153 105.222 95
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=21}] run tp @e[tag=warped_node] 153 105.236 95
execute if entity @e[tag=dummy,scores={randomValue=5,warpedNodeAnimation=22}] run tp @e[tag=warped_node] 153 105.25 95
#execute if entity @e[tag=dummy,scores={randomValue=5}] run tp @e[tag=warped_node] 153 105.25 95

#node position 6
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=2}] run tp @e[tag=warped_node] 151 99.87 87
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=3}] run tp @e[tag=warped_node] 151 99.984 87
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=4}] run tp @e[tag=warped_node] 151 99.998 87
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=5}] run tp @e[tag=warped_node] 151 100.012 87
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=6}] run tp @e[tag=warped_node] 151 100.026 87
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=7}] run tp @e[tag=warped_node] 151 100.04 87
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=8}] run tp @e[tag=warped_node] 151 100.054 87
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=9}] run tp @e[tag=warped_node] 151 100.068 87
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=10}] run tp @e[tag=warped_node] 151 100.082 87
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=11}] run tp @e[tag=warped_node] 151 100.096 87
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=12}] run tp @e[tag=warped_node] 151 100.11 87
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=13}] run tp @e[tag=warped_node] 151 100.124 87
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=14}] run tp @e[tag=warped_node] 151 100.138 87
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=15}] run tp @e[tag=warped_node] 151 100.152 87
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=16}] run tp @e[tag=warped_node] 151 100.166 87
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=17}] run tp @e[tag=warped_node] 151 100.18 87
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=18}] run tp @e[tag=warped_node] 151 100.194 87
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=19}] run tp @e[tag=warped_node] 151 100.208 87
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=20}] run tp @e[tag=warped_node] 151 100.222 87
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=21}] run tp @e[tag=warped_node] 151 100.236 87
execute if entity @e[tag=dummy,scores={randomValue=6,warpedNodeAnimation=22}] run tp @e[tag=warped_node] 151 100.25 87
#execute if entity @e[tag=dummy,scores={randomValue=6}] run tp @e[tag=warped_node] 151 100.25 87





#
execute if entity @e[tag=dummy,scores={warpedNodeAnimation=30..}] run setblock -4 -60 -2 air
execute if entity @e[tag=dummy,scores={warpedNodeAnimation=30..}] run scoreboard players set @e[tag=dummy] warpedNodeAnimation 0