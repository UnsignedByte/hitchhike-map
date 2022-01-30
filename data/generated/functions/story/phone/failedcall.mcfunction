execute if score #phone-enabled vars matches 0 run title @s actionbar {"text":"No Connection.","color":"#d4d1c3"}
execute unless score android song-playing matches 1 run tag @a remove song-android
execute unless score ios song-playing matches 1 run tag @a remove song-ios
