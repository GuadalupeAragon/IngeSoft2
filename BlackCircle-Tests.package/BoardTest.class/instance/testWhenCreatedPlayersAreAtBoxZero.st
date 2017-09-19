tests
testWhenCreatedPlayersAreAtBoxZero
	| board player |
	board := Board with: 20.
	player := Player named: 'guadalupe'.

	self assert: (board positionOf: player) currentBox equals: 0