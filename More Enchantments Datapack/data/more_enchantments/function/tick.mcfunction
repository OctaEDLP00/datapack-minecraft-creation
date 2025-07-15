# Ejecutar funciones de smelting
function more_enchantments:smelting/check_smelting
execute unless entity @a[scores={hasSmelting=0}] run return run function more_enchantments:smelting/smelt_drops
