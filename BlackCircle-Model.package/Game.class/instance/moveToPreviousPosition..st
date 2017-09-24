move
moveToPreviousPosition: aPlayer
	| position |
	position := board previousPositionOf: aPlayer.
	board
		updatePositionOf: aPlayer
		withBox: (position ) currentBox
		withLap: (position ) currentLap