tag @a[tag=victim-of-dialogue-by-hurm, limit=1] add npc-eavesdropper
execute at @e[type=villager,tag=npc-hurm, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #0-7: speak and make noise.
execute at @e[type=villager,tag=npc-hurm, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Herb Schmitt","color":"#3f7bd5","bold":true},"> ",{"text":"Well, sport, the only way to the trails is through Eddreckson Lake right here, and the only way through "},{"text":"there","italic":true},{"text":" is on "},{"text":"my","italic":true},{"text":" precious boat."}]
execute at @e[type=villager,tag=npc-hurm, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
schedule function generated:npc/hurm/0-07 144t
tag @a remove npc-eavesdropper
