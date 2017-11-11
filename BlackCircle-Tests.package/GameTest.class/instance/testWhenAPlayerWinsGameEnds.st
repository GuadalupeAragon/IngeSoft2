tests
testWhenAPlayerWinsGameEnds
	| player board game |
	player := self playerFacu.
	board := self boardWith4BoxesAndNoEffect.
	game := Game
		withBoard: board
		requiredLapsToWin: 1
		involving: {player}
		generatingCardsFrom:
			self deckRandomCardGenerator
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(3 5)))}.
	game playTurn: player.
	self assert: (board positionOf: player) currentBox equals: 3.
	self assert: (board positionOf: player) currentLap equals: 0.
	game playTurn: player.
	self assert: (board positionOf: player) currentBox equals: 4.
	self assert: (board positionOf: player) currentLap equals: 1.
	self assert: game winner equals: player.
	self assert: game hasEnded