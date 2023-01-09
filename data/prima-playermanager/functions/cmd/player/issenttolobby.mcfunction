#> prima-playermanager:cmd/player/issenttolobby
# 
# Call this function from you code when you send a player to the lobby.
# This will sync the playermanager.
# This function is already automatically run for @a when a new game ends
#

#----- Code -----#
scoreboard players set @s psm.plmng.status.player -1