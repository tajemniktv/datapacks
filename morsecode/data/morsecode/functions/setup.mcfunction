scoreboard objectives add mc.itemrotation dummy
scoreboard objectives add mc.craftreceiver minecraft.crafted:minecraft.feather

tellraw @a ["",{"text":"morsecode","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/Metroite/datapacks/tree/master/morsecode"},"hoverEvent":{"action":"show_text","value":"send morse codes no matter the distance or the dimension"}},{"text":" by "},{"text":"Metroite","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Metroite"}},{"text":" loaded!"}]
