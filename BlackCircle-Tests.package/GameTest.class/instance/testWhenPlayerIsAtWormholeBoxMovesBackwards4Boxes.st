test-effects
testWhenPlayerIsAtWormholeBoxMovesBackwards4Boxes
	| board playerOne game playerTwo   |
	playerOne := self playerGuada.
	playerTwo := self playerFacu.
	board := Board
		with: 20
		boxesGeneratingEffectsFrom:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					WormholeEffect new}).
	game := Game
		withBoard: board
		requiredLapsToWin: 1
		involving:
			{playerOne.
			playerTwo}
		generatingCardsFrom:
			self deckWithOverloadCard 
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(3 1 2 1)))}.
	game playTurn: playerOne.
	self assert: (game history positionOf: playerOne) currentBox equals: 3.
	self assert: (game history positionOf: playerOne) currentLap equals: 0.
	game playTurn: playerTwo.
	self assert: (game history positionOf: playerTwo) currentBox equals: 1.
	self assert: (game history positionOf: playerTwo) currentLap equals: 0.
	game playTurn: playerOne.
	self assert: (game history positionOf: playerOne) currentBox equals: 5.
	self assert: (game history positionOf: playerOne) currentLap equals: 0.
	game playTurn: playerTwo.
	self assert: (game history positionOf: playerTwo) currentBox equals: -2.
	self assert: (game history positionOf: playerTwo) currentLap equals: 0