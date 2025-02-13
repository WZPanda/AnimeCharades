// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function actionGuess(){
		guessed ++
		action(true)
		array_push(guessedList, animeName)
		audio_play_sound(sCorrect, 0, false)
}

function actionPass(){
		passed ++
		action(false)
		array_push(passedList, animeName)		
		audio_play_sound(sSkip, 0, false)
}

function actionSilentPass(){
		passed ++
		action(false)
		array_push(passedList, animeName)
}

function actionReplenish(_diff){
	array_copy(anime[_diff], 0, animeClone[_diff], 0, array_length(animeClone[_diff]))
	anime[_diff] = array_shuffle(anime[_diff])
}

function action(actionBoolean){
	var _animeName = array_pop(anime[diff])	
	array_push(playStack, [actionBoolean, _animeName])	
	diff = modulo(diff+1, 3)
	
}

function actionUndo(){
	if array_length(playStack) > 0{
		var _data = array_pop(playStack)
		var _newDiff = modulo(diff-1, 3)
		array_push(anime[_newDiff], _data[1])
		
		if _data[0]{guessed --}
		else{passed--}
		
		diff = _newDiff
	}
}
