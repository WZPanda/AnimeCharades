/// @description Insert description here
// You can write your code in this editor

if room = rStart{
	
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_set_font(fLarge)
	
	draw_text_color(room_width/2, room_height /4, "Anisoc 2024\nHeads Up: Anime Edition", ar, ar, ar, ar, 1)
	
}

if room = rLeaderboard{
	draw_set_halign(fa_center)
	draw_set_font(fNormal)	
	draw_text_color(room_width/2, 80, "Leaderboard", b, b, b, b, 1)
	draw_set_halign(fa_left)
	draw_set_font(fLeaderboard)	
	
	var i
	var j
	for (i = 0; i < teamCount; i++)
	{
		draw_text_color(100, 180 + i*dataSpacing, teamData[i, 0], b, b, b, b, 1)
	}
	draw_rectangle_color(1250, 125, room_width, room_height, bg, bg, bg, bg, false)
	for (i = 0; i < teamCount; i++)
	{
		for (j = 1; j < 5; j++){
			
		draw_text_color(room_width/5*3 + j*150, 180 + i*dataSpacing, teamData[i, j], b, b, b, b, 1)
				
		}
	}
	
	
}


