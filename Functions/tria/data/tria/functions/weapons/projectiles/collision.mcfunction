# Projectiles / Collision

# When a projectile collides with something, this system determines if it's a iron_bars, a glass block, or something else

# Determines what type of collisions it is
execute as @e[tag=ProjCollide] at @s if block ~ ~ ~ #tria:glass run tag @s add CollideGlass
execute as @e[tag=ProjCollide,tag=BulletCollisions] at @s if block ~ ~ ~ minecraft:iron_bars run tag @s add CollideBars
execute as @e[tag=ProjCollide,tag=ShellCollisions] at @s if block ~ ~ ~ minecraft:iron_bars run tag @s remove ProjCollide

# Actions for glass and iron_bars
execute if entity @e[tag=ProjCollide,tag=BulletCollisions,tag=CollideBars] run function tria:weapons/projectiles/collision/collidebars
execute if entity @e[tag=ProjCollide,tag=CollideGlass] run function tria:weapons/projectiles/collision/collideglass

# Actions for everything else
execute if entity @e[tag=ProjCollide] run function tria:weapons/projectiles/collision/collide

tag @e remove ProjCollide
