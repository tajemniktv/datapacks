scoreboard objectives add wop.usecarrot minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add wop.mode dummy
execute unless score $mode$ wop.mode matches 0.. run scoreboard players set $mode$ wop.mode 0
scoreboard objectives add wop.validitem dummy
scoreboard objectives add wop.extend dummy
execute unless score $extend$ wop.extend matches 0.. run scoreboard players set $extend$ wop.extend 6
execute unless score $cooldown$ wop.extend matches 0.. run scoreboard players set $cooldown$ wop.extend 0
execute unless score $attribute$ wop.extend matches 0.. run scoreboard players set $attribute$ wop.extend 1
execute unless score $mustsneak$ wop.extend matches 0.. run scoreboard players set $mustsneak$ wop.extend 1
scoreboard objectives add wop.health health
scoreboard objectives add wop.sneaking minecraft.custom:minecraft.sneak_time
scoreboard objectives add wop.damage dummy
scoreboard objectives add wop.itemslot dummy
scoreboard objectives add wop.itemslottemp dummy
scoreboard objectives add wop.drop minecraft.custom:minecraft.drop

#scheduled functions
schedule function worseoldpvp:main9 2t
schedule function worseoldpvp:main200 88t
#"datapack loaded": Please don't remove this message, if it annoys you make sure to credit me otherwise. Thank you!
tellraw @a ["",{"text":"worseoldpvp","color":"green","clickEvent":{"action":"open_url","value":"https://www.metroite.de/worseoldpvp"},"hoverEvent":{"action":"show_text","value":"reverts the combat system to the worse one back in 1.8"}},{"text":" by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"},{"text":" [","color":"dark_red"},{"text":"!","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"/function worseoldpvp:uninstall"},"hoverEvent":{"action":"show_text","value":"click and delete files to uninstall"}},{"text":"]","color":"dark_red"}]
