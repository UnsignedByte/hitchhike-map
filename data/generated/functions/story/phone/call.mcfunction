tag @a[tag=song-ios] add caller
tag @a[tag=song-android] add caller
execute unless score #phone-enabled vars matches 1 run function generated:story/phone/failedcall
execute if score #phone-enabled vars matches 1 run function generated:story/phone/
tag @a remove song-ios
tag @a remove song-android
