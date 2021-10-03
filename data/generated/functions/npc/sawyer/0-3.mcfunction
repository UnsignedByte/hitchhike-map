# Dialogue line #0-4: speak and make noise.
execute at @e[tag=npc-sawyer, limit=1] run tellraw @a[distance=..50] ["<",{"text":"Chris Sawyer","color":"#4fa1a7","bold":true},"> ",{"text":"That might have something to do with the sudden loss of electricity in my house, or the massive thunderstorm going on outside... who knows?"}]
execute at @e[tag=npc-sawyer, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50]
schedule function generated:npc/sawyer/0-4 320t
