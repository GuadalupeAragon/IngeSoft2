tests
testWhenAPlayerIsAtBoxWithAtomicBombEffect
	| board playerOne game playerTwo playerThree |
	playerOne := Player named: 'Guada'.
	playerTwo := Player named: 'Facu'.
	playerThree := Player named: 'Hijitus'.
	board := Board
		with: 20
		source:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					AtomicBombEffect new}).
	game := Game
		withBoard: board
		withLaps: 3
		involving:
			{playerOne.
			playerTwo.
			playerThree}
		withDices: {(Dice with: 6 source: (FixedSequence generating: #(1 3 4)))}.
	game playTurn: playerOne.
	self assert: (board positionOf: playerOne ) currentBox equals: 1.
	game playTurn: playerTwo .
	self assert: (board positionOf: playerTwo ) currentBox equals: 3.
	game playTurn: playerThree .
		self assert: (board positionOf: playerOne ) currentBox equals: 0.
			self assert: (board positionOf: playerTwo ) currentBox equals: 0.
				self assert: (board positionOf: playerThree  ) currentBox equals: 0
				