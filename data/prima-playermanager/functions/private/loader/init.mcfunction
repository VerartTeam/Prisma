#> prima-playermanager:private/loader/init
#define score_holder $gameId psm.plmng.status
#define score_holder ?isInLobby psm.plmng.status
#define score_holder #playersOnline psm.plmng.status
#define score_holder #teamsOnline psm.plmng.status


## update to the last version
# when the module will require an update, it will load depending of the current version the corresponding file
# which will be located in `./update/v<number of version>`
# Then, when future updates will be added, more files will be added.
# It will permit to migrate data...


## module version
scoreboard players set .playermanager psm.modules.version 1


## tick
schedule clear prima-playermanager:private/tick
function prima-playermanager:private/tick
schedule clear prima-playermanager:private/1sloop
function prima-playermanager:private/1sloop

## init
scoreboard objectives add psm.plmng.leavegame minecraft.custom:minecraft.leave_game

scoreboard objectives add psm.plmng.status dummy
execute unless score $gameId psm.plmng.status matches 0.. run scoreboard players set $gameId psm.plmng.status 0
execute unless score ?isInLobby psm.plmng.status matches 0.. run scoreboard players set ?isInLobby psm.plmng.status 1

scoreboard objectives add psm.plmng.status.player dummy


scoreboard players set #playersOnline psm.plmng.status 0
scoreboard players set #teamsOnline psm.plmng.status 0


## Load message
tellraw @a [{"text":"[","color":"dark_gray"},{"text":"Prismacore","color":"#E61B1B"},{"text":"] ","color":"dark_gray"},{"text":"Prisma core","color":"gray"},{"text":" (ver. ","italic":true},{"score":{"name":".playermanager","objective":"psm.modules.version"},"italic":true},{"text":")","italic":true}]