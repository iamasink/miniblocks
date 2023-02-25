
execute as @e[type=player] if data entity @s SelectedItem.id run playsound block.stone.place block @a ~ ~ ~ 1 1.3
execute as @e[type=player] if data entity @s SelectedItem.id run function miniblocks:summon
