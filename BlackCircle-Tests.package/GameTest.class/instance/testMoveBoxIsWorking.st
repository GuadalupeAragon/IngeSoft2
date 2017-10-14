tests
testMoveBoxIsWorking
	| player board game |
	player := self playerHijitus.
	board := self boardWith4BoxesAndNoEffect.
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving: {player}
		sourceOfCards: (FixedCardSequence generating: {Snapshot new. Permanent new})
		withDices: {(Dice with: 6 source: (FixedNumberSequence generating: #(2)))}.
	game playTurn: player.
	self assert: (board positionOf: player) currentBox equals: 2