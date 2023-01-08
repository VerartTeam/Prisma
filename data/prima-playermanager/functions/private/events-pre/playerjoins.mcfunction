#> prima-playermanager:private/events-pre/playerjoins


# first connection
execute unless score @s psm.plmng.status.player matches -2.. run scoreboard players set @s psm.plmng.status.player -2



#@Events
# psm.plmng.status.player
# -2 = first join
# -1 = was in the lobby
# 0.. = was in the game with the same id as indicated

execute if score @s psm.plmng.status.player matches -1 if score @s psm.plmng.status.player = $gameId psm.plmng.status run function prima-playermanager:events/playerjoins/lobby
execute unless score @s psm.plmng.status.player matches ..-1 if score @s psm.plmng.status.player = $gameId psm.plmng.status run function prima-playermanager:events/playerjoins/samegame
execute unless score @s psm.plmng.status.player matches ..-1 unless score @s psm.plmng.status.player = $gameId psm.plmng.status run function prima-playermanager:events/playerjoins/othergame
execute if score @s psm.plmng.status.player matches -2 run function prima-playermanager:private/events-pre/playerjoins/firstjoin


scoreboard players reset @s psm.plmng.leavegame