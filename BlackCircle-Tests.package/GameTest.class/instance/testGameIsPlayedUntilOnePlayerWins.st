tests
testGameIsPlayedUntilOnePlayerWins
	| playerOne playerTwo board game |
	playerOne := Player named: 'Facu'.
	playerTwo := Player named: 'Guada'.
	board := Board
		with: 10
		source:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					AtomicBombEffect new.
					NoEffect new.
					TimeMachineEffect new.
					WormholeEffect new.
					NoEffect new.
					SpeedUpEffect new.
					MoonWalkEffect new.
					NoEffect new}).
	game := Game
		withBoard: board
		requiredLapsToWin: 2
		involving:
			{playerOne.
			playerTwo}
		withDices: {(Dice with: 6 source: (FixedSequence generating: #(1 3 6 8)))}.
	self assert: game winner equals: nil.
	self deny: game hasEnded.
	self assert: (board positionOf: playerOne) currentBox equals: 0.
	self assert: (board positionOf: playerOne) currentLap equals: 0.
	self assert: (board positionOf: playerTwo) currentBox equals: 0.
	self assert: (board positionOf: playerTwo) currentLap equals: 0.
	self deny: game hasEnded.
	game playTurn: playerOne.
	self assert: (board positionOf: playerOne) currentBox equals: 1.
	self assert: (board positionOf: playerOne) currentLap equals: 0.
	game playTurn: playerTwo.
	self assert: (board positionOf: playerTwo) currentBox equals: 3.
	self assert: (board positionOf: playerTwo) currentLap equals: 0.
	game playTurn: playerOne.
	self assert: (board positionOf: playerOne) currentBox equals: 1.
	self assert: (board positionOf: playerOne) currentLap equals: 1.
	game playTurn: playerTwo.
	self assert: (board positionOf: playerTwo) currentBox equals: 1.
	self assert: (board positionOf: playerTwo) currentLap equals: 0.
	game playTurn: playerOne
	"self assert: (board positionOf: playerOne) currentBox equals: 8.
	self assert: (board positionOf: playerOne) currentLap equals: 0.
	game playTurn: playerTwo.
	self assert: (board positionOf: playerTwo) currentBox equals: 8.
	self assert: (board positionOf: playerTwo) currentLap equals: 0.
	game playTurn: playerOne.
	self assert: (board positionOf: playerOne) currentBox equals: 4.
	self assert: (board positionOf: playerOne) currentLap equals: 1.
	game playTurn: playerTwo.
	self assert: (board positionOf: playerTwo) currentBox equals: 10.
	self assert: (board positionOf: playerTwo) currentLap equals: 0.
	game playTurn: playerOne.
	self assert: (board positionOf: playerOne) currentBox equals: 5.
	self assert: (board positionOf: playerOne) currentLap equals: 1.
	game playTurn: playerTwo.
	self assert: (board positionOf: playerTwo) currentBox equals: 3.
	self assert: (board positionOf: playerTwo) currentLap equals: 1.
	game playTurn: playerOne.
	self assert: (board positionOf: playerOne) currentBox equals: 1.
	self assert: (board positionOf: playerOne) currentLap equals: 2.
	self assert: game hasEnded.
	self assert: game winner equals: playerOne"