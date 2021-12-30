tag @a[tag=victim-of-dialogue-by-hurm, limit=1] add npc-eavesdropper
execute at @e[tag=npc-hurm, limit=1] run tag @a[distance=..50] add npc-eavesdropper
# Dialogue line #2-1: speak and make noise.
execute at @e[tag=npc-hurm, limit=1] run tellraw @a[tag=npc-eavesdropper] ["<",{"text":"Hurm Etkcraub","color":"#183aab","bold":true},"> ",{"text":"Nice, you're back! I'll take those fish..."}]
execute at @e[tag=npc-hurm, limit=1] run playsound minecraft:entity.villager.ambient player @a[tag=npc-eavesdropper] ~ ~ ~ 1000 1 1
execute as @p[nbt=!{Inventory:[{id:"minecraft:cooked_cod"}]},nbt=!{Inventory:[{id:"minecraft:cooked_salmon"}]}] run function hitchhike:story/hurm/clear_one_fish
execute as @p[nbt=!{Inventory:[{id:"minecraft:cooked_cod"}]},nbt=!{Inventory:[{id:"minecraft:cooked_salmon"}]}] run function hitchhike:story/hurm/clear_one_fish
execute as @p[nbt=!{Inventory:[{id:"minecraft:cooked_cod"}]},nbt=!{Inventory:[{id:"minecraft:cooked_salmon"}]}] run function hitchhike:story/hurm/clear_one_fish
execute as @p[nbt=!{Inventory:[{id:"minecraft:cooked_cod"}]},nbt=!{Inventory:[{id:"minecraft:cooked_salmon"}]}] run function hitchhike:story/hurm/clear_one_fish
schedule function generated:npc/hurm/2-end 72t
tag @a remove npc-eavesdropper
