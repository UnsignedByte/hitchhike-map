tag @a[tag=victim-of-dialogue-by-hurm, limit=1] add npc-eavesdropper
execute at @e[tag=npc-hurm, limit=1] run tag @a[distance=..25] add npc-eavesdropper
# Dialogue line #2-1: speak and make noise.
execute at @e[tag=npc-hurm, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Herb Schmitt","color":"#183aab","bold":true},"> ",{"text":"Yer back, sport! With the fish!"}]
execute at @e[tag=npc-hurm, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
execute at @e[tag=npc-hurm, limit=1] run function hitchhike:story/hurm/clear_one_fish
execute at @e[tag=npc-hurm, limit=1] run function hitchhike:story/hurm/clear_one_fish
execute at @e[tag=npc-hurm, limit=1] run function hitchhike:story/hurm/clear_one_fish
execute at @e[tag=npc-hurm, limit=1] run function hitchhike:story/hurm/clear_one_fish
execute if score -cleared hurm-fish matches 1 run data modify entity @e[tag=npc-hurm, limit=1] HandItems[0] set value {id:"minecraft:cooked_salmon",Count:1b}
execute if score -cleared hurm-fish matches 0 run data modify entity @e[tag=npc-hurm, limit=1] HandItems[0] set value {id:"minecraft:cooked_cod",Count:1b}
execute at @e[tag=npc-hurm, limit=1] run playsound minecraft:entity.item.pickup neutral @a ~ ~ ~ 1 1
schedule function generated:npc/hurm/2-1 36t
tag @a remove npc-eavesdropper
