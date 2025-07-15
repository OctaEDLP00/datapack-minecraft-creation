# Verify if the player have the Score Trigger[Arrow]
execute as @a at @s[scores={Arrow=0}] run tellraw @p [{text:"You ", underlined:true, color: "gold"}, {text:"DON'T", "bold":true, underlined:true,color: "gold"},{text:" have any ", underlined:true, color: "gold"}, {text:"Particle Set", "bold":true, underlined:true,color: "gold"}]

schedule function ar_dp:delay 2t
