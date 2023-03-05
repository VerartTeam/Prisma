#> prima-maths:private/loader/init

## update to the last version
# when the module will require an update, it will load depending of the current version the corresponding file
# which will be located in `./update/v<number of version>`
# Then, when future updates will be added, more files will be added.
# It will permit to migrate data...


## module version
scoreboard players set .maths psm.modules.version 1


## init
scoreboard objectives add psm.maths.interface dummy
scoreboard players reset * psm.maths.interface
scoreboard players set .input psm.maths.interface 0
scoreboard players set .input_2 psm.maths.interface 0
scoreboard players set .output psm.maths.interface 0


## Load message
tellraw @a [{"text":"[","color":"dark_gray"},{"text":"PrismaModules","color":"#fed513"},{"text":"] ","color":"dark_gray"},{"text":"Maths","color":"gray"},{"text":" (ver. ","italic":true},{"score":{"name":".maths","objective":"psm.modules.version"},"italic":true},{"text":")","italic":true}]