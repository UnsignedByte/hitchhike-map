# Dialogue line #1-4: speak and make noise.
execute at @e[tag=npc-sean, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Sean","color":"#4fa1a7","bold":true},"> ",{"text":"I "},{"text":"have","italic":true},{"text":" heard there was a cell tower up on the mountain with its own generator, though that may well be an urban myth."}]
execute at @e[tag=npc-sean, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50]
schedule function generated:npc/sean/1-end 175t
