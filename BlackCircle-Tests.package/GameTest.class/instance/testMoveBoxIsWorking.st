tests
testMoveBoxIsWorking
	| player board game |
	player := self playerHijitus.
	board := self boardWith4BoxesAndNoEffect.
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving: {player}
		generatingCardsFrom:
			self deckRandomCardGenerator
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(2)))}.
	game playTurn: player.
	self assert: (board positionOf: player) currentBox equals: 2