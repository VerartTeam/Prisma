#> prima-playermanager:cmd/game/start
# 
# Call this function from you code when you start a new game.
# This will sync the playermanager
#

#----- Code -----#
scoreboard players set ?isInLobby psm.plmng.status 0
scoreboard players add $gameId psm.plmng.status 1

execute as @a run function prima-playermanager:cmd/player/addplayerincurrentgame