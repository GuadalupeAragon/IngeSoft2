tests
testGameIsPlayedUntilOnePlayerWins
	| playerOne playerTwo board game |
	playerOne := self playerFacu.
	playerTwo := self playerGuada.
	board := Board
		with: 7
		boxesGeneratingEffectsFrom:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					SpeedUpEffect new.
					TimeMachineEffect new.
					NoEffect new.
					WormholeEffect new.
					AtomicBombEffect new.
					NoEffect new}).
	game := Game
		withBoard: board
		requiredLapsToWin: 2
		involving:
			{playerOne.
			playerTwo}
		generatingCardsFrom:
			self deckRandomCardGenerator
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(4 1 2 2 3 3 3 2)))}.
	self assert: game winner equals: nil.
	self deny: game hasEnded.
	self assert: (game history positionOf: playerOne) currentBox equals: 0.
	self assert: (game history positionOf: playerOne) currentLap equals: 0.
	self assert: (game history positionOf: playerTwo) currentBox equals: 0.
	self assert: (game history positionOf: playerTwo) currentLap equals: 0.
	self deny: game hasEnded.
	game playTurn: playerOne.
	self assert: (game history positionOf: playerOne) currentBox equals: 4.
	self assert: (game history positionOf: playerOne) currentLap equals: 0.
	game playTurn: playerTwo.
	self assert: (game history positionOf: playerTwo) currentBox equals: 1.
	self assert: (game history positionOf: playerTwo) currentLap equals: 0.
	game playTurn: playerOne.
	self assert: (game history positionOf: playerOne) currentBox equals: 0.
	self assert: (game history positionOf: playerOne) currentLap equals: 0.
	self assert: (game history positionOf: playerTwo) currentBox equals: 0.
	self assert: (game history positionOf: playerTwo) currentLap equals: 0.
	game playTurn: playerTwo.
	self assert: (game history positionOf: playerTwo) currentBox equals: 6.
	self assert: (game history positionOf: playerTwo) currentLap equals: 0.
	game playTurn: playerOne.
	self assert: (game history positionOf: playerOne) currentBox equals: 4.
	self assert: (game history positionOf: playerOne) currentLap equals: 0.
	game playTurn: playerTwo.
	self assert: (game history positionOf: playerTwo) currentBox equals: 6.
	self assert: (game history positionOf: playerTwo) currentLap equals: 1.
	game playTurn: playerOne.
	self assert: (game history positionOf: playerOne) currentBox equals: 7.
	self assert: (game history positionOf: playerOne) currentLap equals: 0.
	game playTurn: playerTwo.
	self assert: (game history positionOf: playerTwo) currentBox equals: 1.
	self assert: (game history positionOf: playerTwo) currentLap equals: 2.
	self assert: game hasEnded.
	self assert: game winner equals: playerTwo