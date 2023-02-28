
# if player attacked interaction, run the break function
execute as @e[tag=interaction] at @s on attacker run function miniblocks:break
#execute as @e[tag=spawner3] at @s run summon minecraft:block_display ~ ~ ~ {width:10f,height:10f,block_state:{Name:"minecraft:stone"},Tags:["small"]}
# remove new tags at the start of each tick
execute as @e[tag=new] run tag @s remove new
# scoreboard player's rotation
execute as @a store result score @s rotation run data get entity @s Rotation[0]

# save held item to storage. todo- find a better way to do this that supports multiple players?
# no longer needed im just stupid
#execute as @e[type=player] run data modify storage miniblocks:miniblocks block set from entity @s SelectedItem.id
#execute as @e[type=player] unless data entity @s SelectedItem.id run data modify storage miniblocks:miniblocks block set value stone

# handle use interactions for every direction
execute as @e[tag=eastinteraction] at @s on target positioned ~0.03125 ~ ~-0.03125 positioned ~-0.001 ~ ~ run function miniblocks:place
execute as @e[tag=eastinteraction,tag=!new] at @s on target positioned ~ ~ ~ run summon interaction ~ ~ ~ {width:0.0625f,height:0.0625f,response:0b,Tags:["eastinteraction","interaction","new"],attack:{timestamp:-1},interaction:{timestamp:-1}}
execute as @e[tag=eastinteraction,tag=!new] at @s on target positioned ~ ~ ~ run kill @e[tag=eastinteraction,tag=!new,distance=..0.001]

execute as @e[tag=westinteraction] at @s on target positioned ~-0.09375 ~ ~-0.03125 positioned ~0.001 ~ ~ run function miniblocks:place
execute as @e[tag=westinteraction,tag=!new] at @s on target positioned ~ ~ ~ run summon interaction ~ ~ ~ {width:0.0625f,height:0.0625f,response:0b,Tags:["westinteraction","interaction","new"],attack:{timestamp:-1},interaction:{timestamp:-1}}
execute as @e[tag=westinteraction,tag=!new] at @s on target positioned ~ ~ ~ run kill @e[tag=westinteraction,tag=!new,distance=..0.001]

execute as @e[tag=southinteraction] at @s on target positioned ~-0.03125 ~ ~0.03125 positioned ~ ~ ~-0.001 run function miniblocks:place
execute as @e[tag=southinteraction,tag=!new] at @s on target positioned ~ ~ ~ run summon interaction ~ ~ ~ {width:0.0625f,height:0.0625f,response:0b,Tags:["southinteraction","interaction","new"],attack:{timestamp:-1},interaction:{timestamp:-1}}
execute as @e[tag=southinteraction,tag=!new] at @s on target positioned ~ ~ ~ run kill @e[tag=southinteraction,tag=!new,distance=..0.001]

execute as @e[tag=northinteraction] at @s on target positioned ~-0.03125 ~ ~-0.09375 positioned ~ ~ ~0.001 run function miniblocks:place
execute as @e[tag=northinteraction,tag=!new] at @s on target positioned ~ ~ ~ run summon interaction ~ ~ ~ {width:0.0625f,height:0.0625f,response:0b,Tags:["northinteraction","interaction","new"],attack:{timestamp:-1},interaction:{timestamp:-1}}
execute as @e[tag=northinteraction,tag=!new] at @s on target positioned ~ ~ ~ run kill @e[tag=northinteraction,tag=!new,distance=..0.001]

execute as @e[tag=upinteraction] at @s on target positioned ~-0.03125 ~0.0625 ~-0.03125 positioned ~ ~-0.001 ~ run function miniblocks:place
execute as @e[tag=upinteraction,tag=!new] at @s on target positioned ~ ~ ~ run summon interaction ~ ~ ~ {width:0.0625f,height:0.0625f,response:0b,Tags:["upinteraction","interaction","new"],attack:{timestamp:-1},interaction:{timestamp:-1}}
execute as @e[tag=upinteraction,tag=!new] at @s on target positioned ~ ~ ~ run kill @e[tag=upinteraction,tag=!new,distance=..0.001]

execute as @e[tag=downinteraction] at @s on target positioned ~-0.03125 ~-0.0625 ~-0.03125 positioned ~ ~0.001 ~ run function miniblocks:place
execute as @e[tag=downinteraction,tag=!new] at @s on target positioned ~ ~ ~ run summon interaction ~ ~ ~ {width:0.0625f,height:0.0625f,response:0b,Tags:["downinteraction","interaction","new"],attack:{timestamp:-1},interaction:{timestamp:-1}}
execute as @e[tag=downinteraction,tag=!new] at @s on target positioned ~ ~ ~ run kill @e[tag=downinteraction,tag=!new,distance=..0.001]









# execute as @e[tag=southinteraction] at @s on target positioned ~ ~ ~0.0625 run
# execute as @e[tag=southinteraction] at @s on target positioned ~ ~ ~0.0625 run

# execute as @e[tag=northinteraction] at @s on target positioned ~ ~ ~-0.0625 ru
# execute as @e[tag=northinteraction] at @s on target positioned ~ ~ ~-0.0625 ru

# execute as @e[tag=upinteraction] at @s on target positioned ~ ~0.0625 ~ run 
# execute as @e[tag=upinteraction] at @s on target positioned ~ ~0.0625 ~ run 

# execute as @e[tag=downinteraction] at @s on target positioned ~ ~-0.0625 ~ run
# execute as @e[tag=downinteraction] at @s on target positioned ~ ~-0.0625 ~ run



 