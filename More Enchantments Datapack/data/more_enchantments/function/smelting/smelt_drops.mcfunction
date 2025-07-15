# Convertir minerales crudos a lingotes
execute as @e[type=item,nbt={Item:{id:"minecraft:raw_iron"}}] run data merge entity @s {Item:{id:"minecraft:iron_ingot"}}
execute as @e[type=item,nbt={Item:{id:"minecraft:raw_copper"}}] run data merge entity @s {Item:{id:"minecraft:copper_ingot"}}
execute as @e[type=item,nbt={Item:{id:"minecraft:raw_gold"}}] run data merge entity @s {Item:{id:"minecraft:gold_ingot"}}
execute as @e[type=item,nbt={Item:{id:"minecraft:ancient_debris"}}] run data merge entity @s {Item:{id:"minecraft:netherite_scrap"}}
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_gold_ore"}}] run data merge entity @s {Item:{id:"minecraft:gold_ingot"}}
# Convertir otros materiales
function more_enchantments:smelting/other_blocks/index
# Convertir Maderas en charcoal
function more_enchantments:smelting/wood/index
# Comidas
function more_enchantments:smelting/entities/index
