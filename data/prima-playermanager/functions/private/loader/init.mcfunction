#> prima-playermanager:private/loader/init
#define score_holder $gameId psm.plmng.status
#define score_holder ?isInLobby psm.plmng.status
#define score_holder #playersOnline psm.plmng.status
#define score_holder #teamsOnline psm.plmng.status

# tick
schedule clear prima-playermanager:private/tick
function prima-playermanager:private/tick
schedule clear prima-playermanager:private/1sloop
function prima-playermanager:private/1sloop

# init
scoreboard objectives add psm.plmng.leavegame minecraft.custom:minecraft.leave_game

scoreboard objectives add psm.plmng.status dummy
execute unless score $gameId psm.plmng.status matches 0.. run scoreboard players set $gameId psm.plmng.status 0
execute unless score ?isInLobby psm.plmng.status matches 0.. run scoreboard players set ?isInLobby psm.plmng.status 1

scoreboard objectives add psm.plmng.status.player dummy


scoreboard players set #playersOnline psm.plmng.status 0
scoreboard players set #teamsOnline psm.plmng.status 0


# tellraw
tellraw @a [{"text": "[","color": "dark_gray"},{"text": "PrismaModules","color": "#fed513"},{"text": "] ","color": "dark_gray"},{"text": "Player Manager","color": "gray"}]