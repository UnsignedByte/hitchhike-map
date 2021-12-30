tag @a[nbt=!{Inventory:[{id:"minecraft:cooked_cod"}]},nbt=!{Inventory:[{id:"minecraft:cooked_salmon"}]}] add hurm-fishless
execute store success score -cleared hurm-fish run clear @p[tag=!hurm-fishless] minecraft:cooked_salmon 1
execute if score -cleared hurm-fish matches 0 run clear @p[tag=!hurm-fishless] minecraft:cooked_cod 1
tag @a remove hurm-fishless