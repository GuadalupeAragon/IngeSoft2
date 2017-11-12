accessing
undoAt: aGame
	| previousPosition player |
	player :=self playerToWhomEffectWasAppliedAt: aGame.
	previousPosition := aGame board previousPositionOf: player.
	aGame board updatePositionOf: player at: previousPosition