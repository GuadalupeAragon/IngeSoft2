tests
testPlayerCanPlayHisTurn
	| player board game |
	player := self playerHijitus.
	board := self boardWith4BoxesAndNoEffect.
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving: {player}
		generatingCardsFrom:
		self deckRandomCardGenerator
		withDices:
			{(Dice with: 6 facesGeneratingNumbersFrom: Random new).
			(Dice with: 4 facesGeneratingNumbersFrom: Random new)}.
	game playTurn: player.
	self assert: (board positionOf: player) currentBox > 0