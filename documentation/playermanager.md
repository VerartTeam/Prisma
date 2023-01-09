# Player Manager

Acronym : `plmng`


## Commands

| Command | action | version |
|--|--|--|
| `game/end` | to execute when a game ends; sync the plmng |  |
| `game/start` | to execute when a new game starts; sync the plmng |  |
| `player/addplayerincurrentgame` | to execute as a player when you want to add a player to the current game. This function is already automatically run for @a when a new game starts so execute it only to add players in the game after it started if they weren't connected |  |
| `player/issenttolobby` | to execute as a player when you want to send a player to the lobby. This function is already automatically run for @a when a game ends so execute it only when you send the player to the lobby if they weren't connected |  |
| `` |  |  |


## Events

| Event | trigger | version |
|--|--|--|
| `playercount/noplayer` | No player left. You can ignore from this count a player using the tag `plmng_count_ignore` |  |
| `playercount/oneplayer` | Only one player left. You can ignore from this count a player using the tag `plmng_count_ignore` |  |
| `playercount/oneteamleft` | Only one team left. You can ignore from this count a player using the tag `plmng_count_ignore`. The count is determined by the teams specified in the config file `config/teams` |  |
| `playerjoins/firstjoin` | first time the player joins the game (executed as the player) |  |
| `playerjoins/lobby` | the player joins the game, last time he was in the lobby (executed as the player) |  |
| `playerjoins/othergame` | the player joins the game, last time he was in an other game (executed as the player) |  |
| `playerjoins/samegame` | the player joins the game, last time he was in the same game that is currently playing (executed as the player) |  |
| `` |  |  |


## Configs

| Config | usage | version |
|--|--|--|
| `teams` | place in it one line for each team you want to be counted to trigger the event `events/playercount` |  |
| `` |  |  |