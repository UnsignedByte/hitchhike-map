setblock 915 59 -83 stone
clone 914 55 -79 914 55 -79 914 49 -79
setblock 914 49 -79 air destroy
execute positioned 914 49 -79 run function generated:change/count
execute positioned 914 49 -79 run kill @e[type=item,distance=..1,nbt={Item:{tag:{ismoney:1b}}}]
execute positioned 914 49 -79 run tp @e[type=item] 914 56 -79
data modify block 914 55 -79 Items set value []
schedule function generated:story/fountain/jar/finishgettokens 50t
