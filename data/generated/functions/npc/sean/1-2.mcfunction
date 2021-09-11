# Dialogue line #1-3: speak and make noise.
execute at @e[tag=npc-sean, limit=1] run tellraw @a[distance=..25] ["<",{"text":"Sean","color":"#4fa1a7","bold":true},"> ",{"text":"If you "},{"text":"require","italic":true},{"text":" internet so desperately, maybe you could find somewhere unaffected by the power outage?"}]
execute at @e[tag=npc-sean, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..25]
schedule function generated:npc/sean/1-3 185t
