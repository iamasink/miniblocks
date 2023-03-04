execute as @e[type=player] if data entity @s SelectedItem.id run playsound block.stone.place block @a ~ ~ ~ 1 1.3
execute as @e[type=player] if data entity @s SelectedItem.id run function miniblocks:summon
execute as @e[type=minecraft:block_display,limit=1,sort=nearest] at @s if entity @s run data modify entity @s block_state.Properties.axis set value z
execute as @e[type=minecraft:block_display,limit=1,sort=nearest] at @s if entity @s[nbt={block_state:{Name:"minecraft:lightning_rod"}}] run data modify entity @s block_state.Properties.facing set value north