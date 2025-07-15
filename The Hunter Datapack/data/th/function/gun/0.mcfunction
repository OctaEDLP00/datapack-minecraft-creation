# Summon Armor Stand
execute at @a[scores={thGun=1..}] run summon armor_stand ~ ~ ~ {Tags:["thBullet"],NoGravity:1b,Marker:1b,NoBasePlate:1b,Invulnerable:1b,Invisible:1b,Pose:{Head:[0f,90f,0f]},DisabledSlots:4144896,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{HideFlags:33,CustomModelData:1}}]}
# Tp Armor Stand
execute as @a[scores={thGun=1..}] at @s run tp @e[tag=thBullet,distance=..1] @s
# Reset scoreboard thGun
scoreboard players reset @p[scores={thGun=1..}] thGun
# Execute function remove 1 point in thGun
function th:timer/0
# Kill entity (Armor Stand) with the score thGun in -35 points
kill @e[tag=thBullet,scores={thGun=..-35}]
# Execute tp in Bullet at @s in ^ ^ ^
execute as @e[tag=thBullet] at @s run tp @s ^ ^ ^3
# Execute Effects in Bullet
execute as @e[tag=thBullet,scores={thGun=-5..}] at @s run effect give @e[dy=1,type=!#th:death_mobs] instant_damage 1 0 true
execute as @e[tag=thBullet,scores={thGun=-5..}] at @s run effect give @e[dy=1,type=#th:death_mobs] instant_health 1 0 true
# Execute Particles in Bullet
execute at @e[tag=thBullet] run particle smoke ~ ~1.8 ~ 0 0 0 0 20 force
execute at @e[tag=thBullet] run particle flame ~ ~1.9 ~ 0 0 0 0 1 force
# Execute Playsound in Bullet
execute at @e[tag=thBullet,scores={thGun=-1}] run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 1 1.7 1
execute at @e[tag=thBullet,scores={thGun=-1}] run playsound minecraft:entity.generic.extinguish_fire ambient @a ~ ~ ~ 0.4 1.7 1
# Execute Effect in player with 1 or more points in the scoreboard thGun
execute at @a[scores={thGun=-1..}] run effect give @s resistance 1 255 true