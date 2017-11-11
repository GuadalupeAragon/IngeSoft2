test-effects
testWhenPlayerIsAtNoEffectBoxNothingHappenToPlayers
	| board playerOne game playerTwo  |
	playerOne := self playerGuada.
	playerTwo := self playerFacu.
	board := self boardWith4BoxesAndNoEffect.
		
	game := Game
		withBoard: board
		requiredLapsToWin: 1
		involving:
			{playerOne.
			playerTwo}
		generatingCardsFrom: self deckWithOverloadCard 
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(1)))}.
	
	game playTurn: playerOne.
	self assert: (board positionOf: playerOne) currentBox equals: 1.
	self assert: (board positionOf: playerOne) currentLap equals: 0.
	self assert: (board positionOf: playerTwo) currentBox equals: 0.
	self assert: (board positionOf: playerTwo) currentLap equals: 0