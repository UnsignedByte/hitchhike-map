# Keep permanent falling blocks
execute as @e[tag=falling-block-display,type=falling_block] run data modify entity @s Time set value 1
schedule function generated:scheduled/s-99 99t
