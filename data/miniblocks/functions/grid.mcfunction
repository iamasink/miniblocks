# align to the corner
execute align xyz run summon marker ~ ~ ~ {Tags:["spawner"]}

# don't care if this is a bad way to code this <3
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~
execute as @e[type=marker,tag=spawner] at @s run summon marker ~ ~ ~ {Tags:["spawner2"]}
execute as @e[tag=spawner] at @s run tp @s ~0.0625 ~ ~

execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}
execute as @e[tag=spawner2] at @s run tp @s ~ ~ ~0.0625
execute as @e[type=marker,tag=spawner2] at @s run summon marker ~ ~ ~ {Tags:["spawner3"]}

# summon blocks
execute as @e[tag=spawner3] at @s run function miniblocks:summon
# kill spawner marker entities
kill @e[tag=spawner]
kill @e[tag=spawner2]
kill @e[tag=spawner3]

playsound entity.player.burp master @s ~ ~ ~