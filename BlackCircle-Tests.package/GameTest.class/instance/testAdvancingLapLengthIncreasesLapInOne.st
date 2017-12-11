tests
testAdvancingLapLengthIncreasesLapInOne
	| player board game  |
	player := self playerFacu.
	board := self boardWith4BoxesAndNoEffect.
	
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving: {player}
		generatingCardsFrom: self deckRandomCardGenerator
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(4 2)))}.
	game playTurn: player.
	game playTurn: player.
	self assert: (game context positionOf: player) currentLap equals: 1