execute as @a[scores={hasSmelting=0}] run execute if entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"more_enchantments:smelting":1}}}}] run scoreboard players set @s hasSmelting 1

execute as @a[scores={hasSmelting=1}] run execute if entity @s[nbt=!{SelectedItem:{components:{"minecraft:enchantments":{"more_enchantments:smelting":1}}}}] run scoreboard players set @s hasSmelting 0
