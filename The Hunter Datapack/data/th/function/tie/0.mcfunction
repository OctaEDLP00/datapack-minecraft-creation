# Summon Armor Stand
execute at @a[scores={thTie=1..}] run summon armor_stand ~ ~ ~ {Tags:["thCobweb"],NoGravity:1b,Marker:1b,NoBasePlate:1b,Invulnerable:1b,Invisible:1b,Pose:{Head:[0f,90f,0f]},DisabledSlots:4144896,ArmorItems:[{},{},{},{id:"minecraft:cobweb",Count:1b,tag:{HideFlags:33,CustomModelData:1}}]}
# Tp Armor Stand
execute as @a[scores={thTie=1..}] at @s run tp @e[tag=thCobweb,distance=..1] @s
# Reset scoreboard thTie
scoreboard players reset @p[scores={thTie=1..}] thTie
# Execute function remove 1 point in thTie
function th:timer/1
# Kill entity (Armor Stand) with the score thTie in -35 points
kill @e[tag=thCobweb,scores={thTie=..-35}]
# Execute tp in Cobweb at @s in ^ ^ ^
execute as @e[tag=thCobweb] at @s run tp @s ^ ^ ^3
# Execute Effects in Cobweb
execute as @e[tag=thCobweb,scores={thTie=-5..}] at @s run effect give @e[dy=1] slowness 5 6 true
# Execute Playsound in Cobweb
execute at @e[tag=thCobweb,scores={thTie=-1}] run playsound minecraft:item.firecharge.use ambient @a ~ ~ ~ 1 1.7 1
# Execute Effect in player with 1 or more points in the scoreboard thTie
execute at @a[scores={thTie=-1..}] run effect give @s resistance 1 255 true