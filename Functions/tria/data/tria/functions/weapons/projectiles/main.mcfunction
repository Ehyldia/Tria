# Projectiles
# Made by: KubbyDev

# Inaccuracy
execute if entity @e[tag=Projectile,scores={Inaccuracy=1..}] run function tria:weapons/projectiles/inaccuracy

# Movement
execute as @e[tag=Projectile] run scoreboard players operation @s Var2 = @s ProjectileSpeed
function tria:weapons/projectiles/move

# ------------------------------------------------
# How to use it:

# Speed:
# Set the speed of the projectile in half blocks per tick using the ProjectileSpeed score

# Damages:
# Add the DealDamages tag to enable damages. The damages amount can be set using the Damage and HeadDamage scores.
# You have to set the Team score to tell which team the projectile should hit. -1 will deal damages to the team of the players, 1 will deal damages to enemies.
# Add the GoThroughEntites tag to prevent the projectile from being killed when it hits an entity (After the hit the projectile will get the HasHitEntity tag).
# Only the entities with the CanBeShot tag can receive damages.

# Collisions:
# Set the desired tag to determine what behavior the projectile should use.
# BulletCollisions: Collides with everything not transparent (#tria:transparent), glass has 1/3 chances to break, iron_bars has 1/3 chances to kill the bullet.
# ShellCollisions: Collides with everything not transparent (#tria:transparent), except iron_bars. Breaks glass.

# Other:
# Set the Inaccuracy score to randomize a projectile orientation. The maximum shift if 0.04 * Inaccuracy degrees (The shift is done everytime the score is > 0, and sets the score to 0)

# ------------------------------------------------
# All the scores and tags used by the whole system

# Scores:
#Inaccuracy: The inaccuracy of the weapon that fired a bullet. When this score is set on a bullet, it will randomize its orientation
#Random: used to generate a random number. There's 10 armor_stands with scores on Random from 1 to 10 (target them with @e[tag=Random,scores={Random=1..10},limit=1,sort=random]).
#Damage: stores the damage of a bullet. When on an AI, applies the damages
#DamageHead: stores the damage of a bullet in the head.
#Team: stores the team of an entity (team of the player: 1, enemy team: -1)
#Health: stores the health of an AI
#ProjectileSpeed: The speed of the projectile in half blocks per tick
#Var1: A variable. It is used everywhere so its value changes all the time, dont use it to store things for more than one tick
#Var2: A variable. It is used everywhere so its value changes all the time, dont use it to store things for more than one tick

#Tags:
#Projectile: Identifier of projectiles
#Projectile: Identifier of bullets
#ProjCollide: This tag is given to all the Projectile that hit a block which triggers an event
#BulletCollisions: This tag tells a projectile to use the collisions behavior of bullets
#ShellCollisions: This tag tells a projectile to use the collisions behavior of shells
#DealDamages: This tag tells a projectile to deal damages to entities
#CanBeShot: All the entities that can be shot by a bullet should have this tag
#CollideGlass: If a projectile has this tag, it will do the actions when a bullet hits a glass block
#CollideBars: If a projectile has this tag, it will do the actions when a bullet hits a iron_bars
#GoThroughEntities: This tag prevents the projectile from being killed when it hits an entity
#HasHitEntity: This tag is added when a projectile with GoThroughEntities hits an entity