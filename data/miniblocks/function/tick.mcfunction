
# if player attacked interaction, run the break function
# execute as @e[tag=miniblocks.interaction] at @s on attacker positioned ~ ~ ~ run function miniblocks:kill
# use seperate logic for different sides to prevent issues
# execute as @e[tag=miniblocks.westinteraction] at @s on attacker positioned ~-0.09375 ~ ~-0.03125 run function miniblocks:kill



execute as @e[tag=miniblocks.interaction] at @s on attacker positioned ~ ~ ~ run function miniblocks:break



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

# this is weird
execute as @e[tag=miniblocks.eastinteraction] at @s on target positioned ~0.03125 ~ ~-0.03125 positioned ~-0.001 ~ ~ run function miniblocks:placeeast
execute as @e[tag=miniblocks.eastinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run summon interaction ~ ~ ~ {width:0.0625f,height:0.0625f,response:0b,Tags:["miniblocks.eastinteraction","miniblocks.interaction","miniblocks.new"],attack:{timestamp:0},interaction:{timestamp:0}}
execute as @e[tag=miniblocks.eastinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run kill @e[tag=miniblocks.eastinteraction,tag=!miniblocks.new,distance=..0.001]

execute as @e[tag=miniblocks.westinteraction] at @s on target positioned ~-0.09375 ~ ~-0.03125 positioned ~0.001 ~ ~ run function miniblocks:placewest
execute as @e[tag=miniblocks.westinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run summon interaction ~ ~ ~ {width:0.0625f,height:0.0625f,response:0b,Tags:["miniblocks.westinteraction","miniblocks.interaction","miniblocks.new"],attack:{timestamp:0},interaction:{timestamp:0}}
execute as @e[tag=miniblocks.westinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run kill @e[tag=miniblocks.westinteraction,tag=!miniblocks.new,distance=..0.001]

execute as @e[tag=miniblocks.southinteraction] at @s on target positioned ~-0.03125 ~ ~0.03125 positioned ~ ~ ~-0.001 run function miniblocks:placesouth
execute as @e[tag=miniblocks.southinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run summon interaction ~ ~ ~ {width:0.0625f,height:0.0625f,response:0b,Tags:["miniblocks.southinteraction","miniblocks.interaction","miniblocks.new"],attack:{timestamp:0},interaction:{timestamp:0}}
execute as @e[tag=miniblocks.southinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run kill @e[tag=miniblocks.southinteraction,tag=!miniblocks.new,distance=..0.001]

execute as @e[tag=miniblocks.northinteraction] at @s on target positioned ~-0.03125 ~ ~-0.09375 positioned ~ ~ ~0.001 run function miniblocks:placenorth
execute as @e[tag=miniblocks.northinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run summon interaction ~ ~ ~ {width:0.0625f,height:0.0625f,response:0b,Tags:["miniblocks.northinteraction","miniblocks.interaction","miniblocks.new"],attack:{timestamp:0},interaction:{timestamp:0}}
execute as @e[tag=miniblocks.northinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run kill @e[tag=miniblocks.northinteraction,tag=!miniblocks.new,distance=..0.001]

execute as @e[tag=miniblocks.upinteraction] at @s on target positioned ~-0.03125 ~0.0625 ~-0.03125 positioned ~ ~-0.001 ~ run function miniblocks:placeup
execute as @e[tag=miniblocks.upinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run summon interaction ~ ~ ~ {width:0.0625f,height:0.0625f,response:0b,Tags:["miniblocks.upinteraction","miniblocks.interaction","miniblocks.new"],attack:{timestamp:0},interaction:{timestamp:0}}
execute as @e[tag=miniblocks.upinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run kill @e[tag=miniblocks.upinteraction,tag=!miniblocks.new,distance=..0.001]

execute as @e[tag=miniblocks.downinteraction] at @s on target positioned ~-0.03125 ~-0.0625 ~-0.03125 positioned ~ ~0.001 ~ run function miniblocks:placedown
execute as @e[tag=miniblocks.downinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run summon interaction ~ ~ ~ {width:0.0625f,height:0.0625f,response:0b,Tags:["miniblocks.downinteraction","miniblocks.interaction","miniblocks.new"],attack:{timestamp:0},interaction:{timestamp:0}}
execute as @e[tag=miniblocks.downinteraction,tag=!miniblocks.new] at @s on target positioned ~ ~ ~ run kill @e[tag=miniblocks.downinteraction,tag=!miniblocks.new,distance=..0.001]


# summon minecraft:armor_stand ~0.03125 ~ ~0.03125 {Tags:["miniblocks.shulkerstand"],Marker:1b,Invisible:1b,Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,Invulnerable:0b,CustomNameVisible:0b,NoAI:1b,Invisible:1b,Tags:["miniblocks.shulker"],attributes:[{id:"minecraft:scale",base:0.0625}],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b,show_icon:0b}]}]}


# # add collision to miniblocks near to players
# execute as @e[type=armor_stand,tag=miniblocks.newshulkerstand] run tp @s ~ ~100 ~
# remove tag
# execute as @e[type=armor_stand,tag=miniblocks.newshulkerstand] run tag @s remove miniblocks.newshulkerstand

# execute as @e[type=player] at @s run execute as @e[type=block_display,tag=miniblocks.miniblock,distance=..1] at @s unless entity @e[distance=..0.0625,tag=shulkerstand] run summon minecraft:armor_stand ~0.03125 ~100 ~0.03125 {Tags:["miniblocks.shulkerstand","miniblocks.newshulkerstand"],Marker:1b,Invisible:1b,Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,Invulnerable:0b,CustomNameVisible:0b,NoAI:1b,Invisible:1b,Tags:["miniblocks.shulker"],attributes:[{id:"minecraft:scale",base:0.0625}],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b,show_icon:0b}]}]}
# defer until next tick
# execute as @e[type=player] at @s run execute as @e[type=block_display,tag=miniblocks.miniblock,distance=..1] at @s positioned ~0.03125 ~100 ~0.03125 run tp @e[tag=miniblocks.shulkerstand] ~0.03125 ~ ~0.03125


# # remove collision to miniblocks far from players
# execute as @e[type=player] at @s run execute as @e[type=block_display,tag=miniblocks.miniblock,distance=1..] at @s run kill @e[tag=miniblocks.shulkerstand,distance=..0.0625]
# execute as @e[type=player] at @s run execute as @e[type=block_display,tag=miniblocks.miniblock,distance=1..] at @s run kill @e[tag=miniblocks.shulker,distance=..0.0625]

