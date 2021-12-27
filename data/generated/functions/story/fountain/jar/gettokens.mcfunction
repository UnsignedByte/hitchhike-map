setblock 915 59 -83 stone
clone 914 55 -79 914 55 -79 914 49 -79
setblock 914 49 -79 air destroy
schedule function generated:story/fountain/jar/spawntokens 2t
data modify block 914 55 -79 Items set value []
schedule function generated:story/fountain/jar/finishgettokens 80t
