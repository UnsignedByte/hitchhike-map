# Dialogue line #1-3: speak and make noise.
execute at @e[tag=npc-sawyer, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Chris Sawyer","color":"#4fa1a7","bold":true},"> ",{"text":"If you "},{"text":"require","italic":true},{"text":" internet so desperately, maybe you could find somewhere unaffected by the power outage?"}]
execute at @e[tag=npc-sawyer, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
schedule function generated:npc/sawyer/1-3 222t
