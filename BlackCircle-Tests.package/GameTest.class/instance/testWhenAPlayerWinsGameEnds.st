tests
testWhenAPlayerWinsGameEnds
	| player board game |
	player := self playerFacu.
	board := self boardWith4BoxesAndNoEffect.
	game := Game
		withBoard: board
		requiredLapsToWin: 1
		involving: {player}
		sourceOfCards:(FixedCardSequence
				generating:
					{Snapshot new.
					Permanent new})
		withDices: {(Dice with: 6 source: (FixedNumberSequence generating: #(5)))}.
	game playTurn: player.
	self assert: (board positionOf: player) currentBox equals: 1.
	self assert: game winner equals: player.
	self assert: game hasEnded