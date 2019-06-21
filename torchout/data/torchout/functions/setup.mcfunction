scoreboard objectives add to.damage dummy
execute unless score $burntime$ to.torch >= 0 to.pa.fail run scoreboard players set $burntime$ to.torch 24000
###placement-api_torch
scoreboard objectives add to.torch minecraft.used:minecraft.torch
scoreboard objectives add to.pa.fail dummy
scoreboard players set 0 to.pa.fail 0
scoreboard players add _fallback_ to.pa.fail 0
###placement-api_campfire
scoreboard objectives add to.campfire minecraft.used:minecraft.campfire
#"datapack loaded": Please don't remove this message, if it annoys you make sure to credit me otherwise. Thank you!
tellraw @a ["",{"text":"torchout","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/Metroite/datapacks/tree/master/torchout"},"hoverEvent":{"action":"show_text","value":"torches burn out after a while"}},{"text":"  by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"},{"text":" [","color":"dark_red"},{"text":"!","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"/function torchout:uninstall"},"hoverEvent":{"action":"show_text","value":"click and delete files to uninstall"}},{"text":"]","color":"dark_red"}]
