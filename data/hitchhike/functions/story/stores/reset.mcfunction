function generated:story/stores/reset

# Kill items
execute as @e[type=item] if data entity @s Item.tag.store run kill @s