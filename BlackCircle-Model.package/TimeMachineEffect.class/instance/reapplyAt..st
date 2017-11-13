accessing
reapplyAt: aGame
	| previousPosition player |
	player := aGame lastPlayerWhoPlayed.
	previousPosition := ((aGame board historyOf: player) last: (4 min: (aGame board historyOf: player) size)) first.
	aGame board updatePositionOf: player at: previousPosition