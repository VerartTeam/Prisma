#> prima-dynmem:private/loader/init


## update to the last version
# when the module will require an update, it will load depending of the current version the corresponding file
# which will be located in `./update/v<number of version>`
# Then, when future updates will be added, more files will be added.
# It will permit to migrate data...


## module version
scoreboard players set .dynmem psm.modules.version 1


## tick
# schedule clear prima-playermanager:private/tick
# function prima-playermanager:private/tick

## init



## Load message
tellraw @a [{"text":"[","color":"dark_gray"},{"text":"PrismaModules","color":"#fed513"},{"text":"] ","color":"dark_gray"},{"text":"DynMem","color":"gray"},{"text":" (ver. ","italic":true},{"score":{"name":".playermanager","objective":"psm.modules.version"},"italic":true},{"text":")","italic":true}]