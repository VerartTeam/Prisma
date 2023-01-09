#> prima-playermanager:cmd/game/end
# 
# Call this function from you code when you stop a game.
# This will sync the playermanager
#

#----- Code -----#
scoreboard players set ?isInLobby psm.plmng.status 1

execute as @a run function prima-playermanager:cmd/player/issenttolobby