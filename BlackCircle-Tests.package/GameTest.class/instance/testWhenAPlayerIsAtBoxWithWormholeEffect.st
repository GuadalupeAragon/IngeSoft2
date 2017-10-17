tests
testWhenAPlayerIsAtBoxWithWormholeEffect
	| board playerOne game playerTwo |
	playerOne := self playerGuada.
	playerTwo := self playerFacu.
	board := Board
		with: 20
		source:
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
		sourceOfCards:
			(FixedCardSequence
				generating:
					{Permanent new.
					Snapshot new})
		withDices: {(Dice with: 6 source: (FixedNumberSequence generating: #(1 2)))}.
	game playTurn: playerOne with: nil.
	self assert: (board positionOf: playerOne) currentBox equals: 1.
	self assert: (board positionOf: playerOne) currentLap equals: 0.
	game playTurn: playerTwo with: nil.
	self assert: (board positionOf: playerTwo) currentBox equals: -2.
	self assert: (board positionOf: playerTwo) currentLap equals: 0.
	game playTurn: playerOne with: nil.
	self assert: (board positionOf: playerOne) currentBox equals: -2.
	self assert: (board positionOf: playerOne) currentLap equals: 0.
	game playTurn: playerTwo with: nil.
	self assert: (board positionOf: playerTwo) currentBox equals: 0.
	self assert: (board positionOf: playerTwo) currentLap equals: 0