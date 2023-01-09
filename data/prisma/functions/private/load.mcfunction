#> prisma:private/load


## Modules versioning
scoreboard objectives add psm.modules.version dummy
scoreboard players reset * psm.modules.version
# core version
scoreboard players set .psmcore psm.modules.version 1



## Load message
tellraw @a [{"text":"[","color":"dark_gray"},{"text":"Prismacore","color":"#E61B1B"},{"text":"] ","color":"dark_gray"},{"text":"Prisma core","color":"gray"},{"text":" (ver. ","italic":true},{"score":{"name":".psmcore","objective":"psm.modules.version"},"italic":true},{"text":")","italic":true}]
