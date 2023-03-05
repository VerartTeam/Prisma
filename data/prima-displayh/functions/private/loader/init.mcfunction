#> prima-displayh:private/loader/init

## update to the last version
# when the module will require an update, it will load depending of the current version the corresponding file
# which will be located in `./update/v<number of version>`
# Then, when future updates will be added, more files will be added.
# It will permit to migrate data...


## module version
scoreboard players set .displayh psm.modules.version 1


## init



## Load message
tellraw @a [{"text":"[","color":"dark_gray"},{"text":"PrismaModules","color":"#fed513"},{"text":"] ","color":"dark_gray"},{"text":"Display Entities |H","color":"gray"},{"text":" (ver. ","italic":true},{"score":{"name":".displayh","objective":"psm.modules.version"},"italic":true},{"text":")","italic":true}]