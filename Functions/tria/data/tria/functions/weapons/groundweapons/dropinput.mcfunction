# Drop Input

# Weapon drop
execute as @a[tag=!LockWeapons,scores={Drop=1..,InVehicle=0,1stWeapon=1..,1stReloading=0},nbt={SelectedItemSlot:0}] at @s run function tria:weapons/groundweapons/onground/drop1
execute as @a[tag=!LockWeapons,scores={Drop=1..,InVehicle=0,2ndWeapon=1..,2ndReloading=0},nbt={SelectedItemSlot:1}] at @s run function tria:weapons/groundweapons/onground/drop2
