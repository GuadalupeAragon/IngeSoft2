tests
testAdvancingLapLengthIncreasesLapInOne
	| player board game |
	player := self playerFacu.
	board := self boardWith4BoxesAndNoEffect.
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving: {player}
		sourceOfCards: RandomCardGenerator new
		withDices: {(Dice with: 6 source: (FixedNumberSequence generating: #(4 2)))}.
	game playTurn: player with: nil.
	game playTurn: player with: nil.
	self assert: (board positionOf: player) currentLap equals: 1