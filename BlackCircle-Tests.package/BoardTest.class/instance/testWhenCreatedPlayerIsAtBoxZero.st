tests
testWhenCreatedPlayerIsAtBoxZero
	| board player1 player2 |
	board := Board with: 20 source: (FixedEffectSequence generating: {NoEffect new})..
	player1 := Player named: 'guadalupe'.
	player2 := Player named: 'mariano'.
	
	self assert: (board positionOf: player1) currentBox equals: 0.
	self assert: (board positionOf: player2) currentBox equals: 0