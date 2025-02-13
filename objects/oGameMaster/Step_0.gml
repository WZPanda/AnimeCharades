/// @description Insert description here
// You can write your code in this editor#

space = keyboard_check_pressed(vk_space)



if room = rStart{
	
	if space{
		room_goto(rRound)	
	}
}
else if room = rRound{if !instance_exists(oAnimeRound){instance_create_layer(0, 0, "Instances", oAnimeRound)}}
else if room = rLeaderboard{
	
	if space and currentRound < rounds+1{
		
		if currentTeam < teamCount-1
		{
			currentTeam++
		}
		else{
		currentTeam = 0
		currentRound++
		}
		
		if currentRound < rounds+1
		{
			with oAnimeRound{				
				guessedList = []
				passedList = []
				guessed = 0
				passed = 0
				maxGuessedPassed = 0
				scrollHeight = 0
				scrollTarget = scrollHeight
				scrollAmount = 50
				scrollLimit = 0
				animeName = ""
				playStack = []
				time = oAnimeRound.startTime
				oAnimeRound.lastGuess = true
				alarm[0] = 1				
			}
			room_goto(rRound)		
		}
		
		
		
	}
	
	
	
	
	
	
}