/// @description Insert description here
// You can write your code in this editor

rounds = 3
currentRound = 1
w = c_white
b = c_black
ar = make_color_rgb(204, 0, 0)
bg = $efefb0
dataSpacing = 90

var _teamNames = importFile("teams.txt")

var i

for (i=0; i < array_length(_teamNames); i++){
	teamData[i][0] = _teamNames[i]	//team name
	teamData[i][1] = 0				//round 1
	teamData[i][2] = 0				//round 2
	teamData[i][3] = 0				//round 3
	teamData[i][4] = 0				//round total
}

teamCount = array_length(teamData)
currentTeam = 0

show_debug_message(teamData)



