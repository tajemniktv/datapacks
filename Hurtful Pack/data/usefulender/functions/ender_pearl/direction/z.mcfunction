#recursively lowers the score and redefines the position until score is close enough to 0
scoreboard players remove @s[scores={ue.pearlZ=100000..}] ue.pearlZ 100000
scoreboard players remove @s[scores={ue.pearlZ=10000..100000}] ue.pearlZ 10000
scoreboard players remove @s[scores={ue.pearlZ=1000..10000}] ue.pearlZ 1000
scoreboard players remove @s[scores={ue.pearlZ=100..1000}] ue.pearlZ 100
scoreboard players add @s[scores={ue.pearlZ=..-100000}] ue.pearlZ 100000
scoreboard players add @s[scores={ue.pearlZ=-100000..-10000}] ue.pearlZ 10000
scoreboard players add @s[scores={ue.pearlZ=-10000..-1000}] ue.pearlZ 1000
scoreboard players add @s[scores={ue.pearlZ=-1000..-100}] ue.pearlZ 100
#if score is close enough to 0, it calls finish
execute if entity @s[scores={ue.pearlZ=-99..99}] run function usefulender:ender_pearl/direction/finish
#recursive
execute if entity @s[scores={ue.pearlZ=100000..}] positioned ~ ~ ~0.25 run function usefulender:ender_pearl/direction/z
execute if entity @s[scores={ue.pearlZ=10000..100000}] positioned ~ ~ ~0.025 run function usefulender:ender_pearl/direction/z
execute if entity @s[scores={ue.pearlZ=1000..10000}] positioned ~ ~ ~0.0025 run function usefulender:ender_pearl/direction/z
execute if entity @s[scores={ue.pearlZ=100..1000}] positioned ~ ~ ~0.00025 run function usefulender:ender_pearl/direction/z
execute if entity @s[scores={ue.pearlZ=..-100000}] positioned ~ ~ ~-0.25 run function usefulender:ender_pearl/direction/z
execute if entity @s[scores={ue.pearlZ=-100000..-10000}] positioned ~ ~ ~-0.025 run function usefulender:ender_pearl/direction/z
execute if entity @s[scores={ue.pearlZ=-10000..-1000}] positioned ~ ~ ~-0.0025 run function usefulender:ender_pearl/direction/z
execute if entity @s[scores={ue.pearlZ=-1000..-100}] positioned ~ ~ ~-0.00025 run function usefulender:ender_pearl/direction/z
