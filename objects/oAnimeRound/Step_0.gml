/// @description Insert description here
// You can write your code in this editor

if room != rLeaderboard{

guess = keyboard_check_pressed(ord("Y"))
pass = keyboard_check_pressed(ord("P"))
undo = keyboard_check_pressed(vk_backspace)
wheelUp = mouse_wheel_up()
wheelDown = mouse_wheel_down()
space = keyboard_check_pressed(vk_space)

if undo{actionUndo()}

if wheelUp{
	scrollTarget += scrollAmount
}
else if wheelDown{
	scrollTarget -= scrollAmount
}

scrollTarget = clamp(scrollTarget, scrollLimit*75, 0)

scrollHeight = approach (scrollHeight, scrollTarget, 10*abs(scrollTarget-scrollHeight)/scrollAmount)

if time <= 10{
	timerCol = make_colour_rgb(100, 0, 0)
}
else{
	timerCol = make_colour_rgb(255,255,255)	
}

if time > 0{
	if space{time = 0}
	if array_length(anime[diff]) > 0{
		animeName = array_last(anime[diff])
	
		if guess{actionGuess()}

		if pass{actionPass()}
	}
	else{
		actionReplenish(diff)
	}
}
else{
	if lastGuess{		
		actionSilentPass()
		animeName = ""
		lastGuess = false
	}
	if space{
		oGameMaster.teamData[oGameMaster.currentTeam][oGameMaster.currentRound] = guessed
		oGameMaster.teamData[oGameMaster.currentTeam][4] += guessed
		room_goto(rLeaderboard)
	}
}
}