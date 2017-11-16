applying
reapplyAt: aGame
	"No usa el mensaje del padre porque para volver a aplicar TimeMachineEffect necesito que saltee 3 posiciones guardadas en su historial (actual, 
	la anterior al time machine y la posicion que hizo cambiar la posicion actual)"

	| previousPosition player |
	player := aGame lastPlayerWhoPlayed.
	previousPosition := ((aGame board historyOf: player) last: (4 min: (aGame board historyOf: player) size)) first.
	aGame board updatePositionOf: player at: previousPosition