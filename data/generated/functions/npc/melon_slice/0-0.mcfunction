# Dialogue line #0-1: speak and make noise.
execute at @e[tag=npc-melon_slice, limit=1] run tellraw @a[distance=..50] ["<",["melon_slice",{"text":" (2.00B)","bold":false,"italic":false,"strikethrough":false,"obfuscated":false,"underlined":false}],"> ",{"text":"taken"}]
# silent // execute at @e[tag=npc-melon_slice, limit=1] run playsound minecraft:entity.villager.ambient player @a[distance=..50] ~ ~ ~ 100
give @a[tag=victim-of-dialogue-by-melon_slice, limit=1] minecraft:melon_slice{cost: 200, pos: '909.5 64 -152.5', display: {Lore: ["{\"text\":\"Unsold (2.00B)\",\"italic\":true,\"color\":\"dark_gray\"}"]}, sold: 0b} 1
schedule function generated:npc/melon_slice/0-end 12t