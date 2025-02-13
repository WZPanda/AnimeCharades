/// @description Insert description here
// You can write your code in this editor

if room != rLeaderboard
{

	guessedDistance = 500
	passedDistance = 500
	animeSpacing = 75
	resultsHeight = room_height/2 + 250


	//draw_rectangle_color(room_width + 100, room_height + 100, room_width - 100, room_height - 100, c, c, c, c, true)



	draw_set_valign(fa_center)



	draw_set_font(fSmall)
	draw_set_halign(fa_center)
	if time = 0{
		resultsHeight = 200
		var i
		for (i = 0; i < guessed; i++){
			draw_text_color(room_width/2-guessedDistance, resultsHeight+(i+1)*animeSpacing+20+scrollHeight, guessedList[i], b, b, b, b, 1)
		}
	
		var j
		for (j = 0; j < passed; j++){
			draw_text_color(room_width/2+passedDistance, resultsHeight+(j+1)*animeSpacing+20+scrollHeight, passedList[j], b, b, b, b, 1)
		}
		
			draw_rectangle_color(0, 0, room_width, 250, bg, bg, bg, bg, false)
	
	
	}
	else{/*
		
		var i
		
		for (i=0; i < 3; i++){
			draw_circle_color(500+100*diff, 250, 10, c_red, c_red, false)
			var j
			for (j=0; j < array_length(anime[i]); j++){				
			draw_text(500+i*100,300+100*j,anime[i][j])
			}			
		}	*/		

		draw_set_font(fLarge)
		draw_text_color(100, 100, time, timerCol, timerCol, timerCol, timerCol, 1)
	}

	draw_set_font(fNormal)
	draw_text_color(room_width/2-guessedDistance,resultsHeight, "Guessed: " + string(guessed), g, g, g, g, 1)
	draw_text_color(room_width/2+passedDistance, resultsHeight, "Passed: " + string(passed), r, r, r, r, 1)

	/*
	draw_set_font(fLarger)
	draw_text_color(room_width/2, room_height/2, animeName, w, w, w, w, 1)
	*/
	draw_set_font(fAnimeName)

	if string_width(animeName) > room_width*0.9{
		draw_text_transformed_color(room_width/2, room_height/2, animeName, 1/string_width(animeName)*0.9*room_width,  1/string_width(animeName)*0.9*room_width, 0, b, b, b, b, 1)
	}
	else{
		draw_text_transformed_color(room_width/2, room_height/2, animeName,1, 1, 0, b, b, b, b, 1)
	}


	draw_set_font(fLeaderboard)
	draw_text_color(room_width/2, 200, "Round " + string(oGameMaster.currentRound), b, b, b, b, 1)
	draw_set_font(fNormal)
	draw_set_halign(fa_left)
	draw_text_color(200, 100, oGameMaster.teamData[oGameMaster.currentTeam][0], ar, ar, ar, ar, 1)



}