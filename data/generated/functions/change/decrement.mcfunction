execute positioned ~ ~ ~ run function generated:change/count
scoreboard players set dec-success change 0
execute positioned ~ ~ ~ if score dec change <= count change run function generated:change/dec/root
