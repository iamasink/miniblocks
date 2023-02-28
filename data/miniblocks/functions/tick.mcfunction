
# if player attacked interaction, run the break function
execute as @e[tag=miniblocks.interaction] at @s on attacker run function miniblocks:break
#execute as @e[tag=spawner3] at @s run summon minecraft:block_display ~ ~ ~ {width:10f,height:10f,block_state:{Name:"minecraft:stone"},Tags:["small"]}
# remove new tags at the start of each tick
execute as @e[tag=miniblocks.new] run tag @s remove miniblocks.new
# scoreboard player's miniblocks.rotation
execute as @a store result score @s miniblocks.rotation run data get entity @s Rotation[0]

# save held item to storage. todo- find a better way to do this that supports multiple players?
# no longer needed im just stupid
#execute as @e[type=player] run data modify storage miniblocks:miniblocks block set from entity @s SelectedItem.id
#execute as @e[type=player] unless data entity @s SelectedItem.id run data modify storage miniblocks:miniblocks block set value stone

# handle use interactions for every direction
execute as @e[tag=miniblocks.eastinteraction] at @s on target positioned ~0.03125 ~ ~-0.03125 positioned ~-0.001 ~ ~ run function miniblocks:place
execute as @e[tag=miniblocks.eastinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run summon interaction ~ ~ ~ {width:0.0625f,height:0.0625f,response:0b,Tags:["miniblocks.eastinteraction","miniblocks.interaction","miniblocks.new"],attack:{timestamp:-1},interaction:{timestamp:-1}}
execute as @e[tag=miniblocks.eastinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run kill @e[tag=miniblocks.eastinteraction,tag=!miniblocks.new,distance=..0.001]

execute as @e[tag=miniblocks.westinteraction] at @s on target positioned ~-0.09375 ~ ~-0.03125 positioned ~0.001 ~ ~ run function miniblocks:place
execute as @e[tag=miniblocks.westinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run summon interaction ~ ~ ~ {width:0.0625f,height:0.0625f,response:0b,Tags:["miniblocks.westinteraction","miniblocks.interaction","miniblocks.new"],attack:{timestamp:-1},interaction:{timestamp:-1}}
execute as @e[tag=miniblocks.westinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run kill @e[tag=miniblocks.westinteraction,tag=!miniblocks.new,distance=..0.001]

execute as @e[tag=miniblocks.southinteraction] at @s on target positioned ~-0.03125 ~ ~0.03125 positioned ~ ~ ~-0.001 run function miniblocks:place
execute as @e[tag=miniblocks.southinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run summon interaction ~ ~ ~ {width:0.0625f,height:0.0625f,response:0b,Tags:["miniblocks.southinteraction","miniblocks.interaction","miniblocks.new"],attack:{timestamp:-1},interaction:{timestamp:-1}}
execute as @e[tag=miniblocks.southinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run kill @e[tag=miniblocks.southinteraction,tag=!miniblocks.new,distance=..0.001]

execute as @e[tag=miniblocks.northinteraction] at @s on target positioned ~-0.03125 ~ ~-0.09375 positioned ~ ~ ~0.001 run function miniblocks:place
execute as @e[tag=miniblocks.northinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run summon interaction ~ ~ ~ {width:0.0625f,height:0.0625f,response:0b,Tags:["miniblocks.northinteraction","miniblocks.interaction","miniblocks.new"],attack:{timestamp:-1},interaction:{timestamp:-1}}
execute as @e[tag=miniblocks.northinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run kill @e[tag=miniblocks.northinteraction,tag=!miniblocks.new,distance=..0.001]

execute as @e[tag=miniblocks.upinteraction] at @s on target positioned ~-0.03125 ~0.0625 ~-0.03125 positioned ~ ~-0.001 ~ run function miniblocks:place
execute as @e[tag=miniblocks.upinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run summon interaction ~ ~ ~ {width:0.0625f,height:0.0625f,response:0b,Tags:["miniblocks.upinteraction","miniblocks.interaction","miniblocks.new"],attack:{timestamp:-1},interaction:{timestamp:-1}}
execute as @e[tag=miniblocks.upinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run kill @e[tag=miniblocks.upinteraction,tag=!miniblocks.new,distance=..0.001]

execute as @e[tag=miniblocks.downinteraction] at @s on target positioned ~-0.03125 ~-0.0625 ~-0.03125 positioned ~ ~0.001 ~ run function miniblocks:place
execute as @e[tag=miniblocks.downinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run summon interaction ~ ~ ~ {width:0.0625f,height:0.0625f,response:0b,Tags:["miniblocks.downinteraction","miniblocks.interaction","miniblocks.new"],attack:{timestamp:-1},interaction:{timestamp:-1}}
execute as @e[tag=miniblocks.downinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run kill @e[tag=miniblocks.downinteraction,tag=!miniblocks.new,distance=..0.001]









# execute as @e[tag=miniblocks.southinteraction] at @s on target positioned ~ ~ ~0.0625 run
# execute as @e[tag=miniblocks.southinteraction] at @s on target positioned ~ ~ ~0.0625 run

# execute as @e[tag=miniblocks.northinteraction] at @s on target positioned ~ ~ ~-0.0625 ru
# execute as @e[tag=miniblocks.northinteraction] at @s on target positioned ~ ~ ~-0.0625 ru

# execute as @e[tag=miniblocks.upinteraction] at @s on target positioned ~ ~0.0625 ~ run 
# execute as @e[tag=miniblocks.upinteraction] at @s on target positioned ~ ~0.0625 ~ run 

# execute as @e[tag=miniblocks.downinteraction] at @s on target positioned ~ ~-0.0625 ~ run
# execute as @e[tag=miniblocks.downinteraction] at @s on target positioned ~ ~-0.0625 ~ run



 