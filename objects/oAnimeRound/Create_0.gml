/// @description Insert description here
// You can write your code in this editor
randomise()
easy = importFile("easy.txt")
medium = importFile("medium.txt")
hard = importFile("hard.txt")
easyClone = []
mediumClone = []
hardClone = []

array_copy(easyClone, 0, easy, 0, array_length(easy))
array_copy(mediumClone, 0, medium, 0, array_length(medium))
array_copy(hardClone, 0, hard, 0, array_length(hard))

anime[0] = array_shuffle(easy)
anime[1] = array_shuffle(medium)
anime[2] = array_shuffle(hard)

animeClone[0] = easyClone
animeClone[1] = mediumClone
animeClone[2] = hardClone

timerCol = c_white
w = c_white
b = c_black
/*
g = make_colour_rgb(3, 61, 23)
r = make_colour_rgb(61, 3, 3)
*/
g = make_colour_rgb(5, 90, 30)
r = make_colour_rgb(90, 6, 6)
bg = $efefb0
ar = make_color_rgb(204, 0, 0)


guessedList = []
passedList = []
diff = 0
guessed = 0
passed = 0
maxGuessedPassed = 0
scrollHeight = 0
scrollTarget = scrollHeight
scrollAmount = 50
scrollLimit = 0
animeName = ""

playStack = []
lastGuess = true

startTime = 90
time = startTime
alarm[0] = 1