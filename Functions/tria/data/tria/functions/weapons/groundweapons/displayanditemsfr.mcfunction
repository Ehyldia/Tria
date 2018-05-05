# Ground Weapons / Display and Items FR

# Items
replaceitem entity @a[scores={InVehicle=0,ID=1..4}] weapon.offhand air
replaceitem entity @a[scores={1stWeapon=1,ID=1..4,InVehicle=0}] hotbar.0 minecraft:carrot_on_a_stick{display:{Name:"FAMAS du Turfu"}} 1
replaceitem entity @a[scores={2ndWeapon=1,ID=1..4,InVehicle=0}] hotbar.1 minecraft:carrot_on_a_stick{display:{Name:"44. Magnum"}} 1
replaceitem entity @a[scores={1stWeapon=0,ID=1..4,InVehicle=0}] hotbar.0 minecraft:black_stained_glass_pane{display:{Name:""}} 1
replaceitem entity @a[scores={2ndWeapon=0,ID=1..4,InVehicle=0}] hotbar.1 minecraft:black_stained_glass_pane{display:{Name:""}} 1

# Display
execute as @a[scores={ActiveSlot=0,InVehicle=0,1stWeapon=1..,1stReloading=0,ID=1..4}] run title @s actionbar {"text":"< ","extra":[{"score":{"objective":"1stAmoLoaded","name":"@p"},"bold":"true"},{"text":"/"},{"score":{"objective":"1stLoadCapacity","name":"@p"},"bold":"true"},{"text":" > : "},{"score":{"objective":"1stAmo","name":"@p"},"bold":"true"}]}
title @a[scores={ActiveSlot=0,InVehicle=0,1stWeapon=1..,1stReloading=1..,ID=1..4},tag=!LockWeapons] actionbar {"text":"Rechargement...","bold":"true"}
title @a[scores={ActiveSlot=0,InVehicle=0,1stWeapon=1..,1stReloading=1..,ID=1..4},tag=LockWeapons] actionbar {"text":"Vous ne pouvez pas utiliser cette arme si vous etes au sol !","bold":"true"}
execute as @a[scores={ActiveSlot=1,InVehicle=0,2ndWeapon=1..,2ndReloading=0,ID=1..4}] run title @s actionbar {"text":"< ","extra":[{"score":{"objective":"2ndAmoLoaded","name":"@p"},"bold":"true"},{"text":"/"},{"score":{"objective":"2ndLoadCapacity","name":"@p"},"bold":"true"},{"text":" > : "},{"score":{"objective":"2ndAmo","name":"@p"},"bold":"true"}]}
title @a[scores={ActiveSlot=1,InVehicle=0,2ndWeapon=1,2ndReloading=1..,ID=1..4},tag=!LockWeapons] actionbar {"text":"Rechargement...","bold":"true"}
title @a[scores={ActiveSlot=1,InVehicle=0,2ndWeapon=1,2ndReloading=1..,ID=1..4},tag=LockWeapons] actionbar {"text":"Vous ne pouvez pas utiliser cette arme si vous etes au sol !","bold":"true"}
title @a[scores={ActiveSlot=0,InVehicle=0,ID=1..4,1stWeapon=0}] actionbar {"text":""}
title @a[scores={ActiveSlot=1,InVehicle=0,ID=1..4,2ndWeapon=0}] actionbar {"text":""}


