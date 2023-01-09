#> prima-playermanager:cmd/player/addplayerincurrentgame
# 
# Call this function from you code when you want to add a player to the current game.
# This will sync the playermanager.
# This function is already automatically run for @a when a new game starts
#

#----- Code -----#
scoreboard players operation @s psm.plmng.status.player = $gameId psm.plmng.status