tests
testWhenAPlayerFallsInABoxWithAtomicBombEffectMakesAllPlayersGoToBoxAndLapZero
	| board playerOne game playerTwo playerThree decreasePositionCard |
	playerOne := self playerGuada.
	playerTwo := self playerFacu.
	playerThree := self playerHijitus.
	board := Board
		with: 20
		boxesGeneratingEffectsFrom:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					AtomicBombEffect new}).
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving:
			{playerOne.
			playerTwo.
			playerThree}
		generatingCardsFrom:
			(FixedCardSequence
				generating:
					{Snapshot new.
					(decreasePositionCard := DecreasePositionCard new)})
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(3 3 4)))}.
	game playTurn: playerOne.
	self assert: (board positionOf: playerOne) currentBox equals: 3.
	game playTurn: playerTwo.
	self assert: (board positionOf: playerTwo) currentBox equals: 3.
	game playTurn: playerThree.
	self assert: (board positionOf: playerThree) currentBox equals: 0.
	self assert: (board positionOf: playerOne) currentBox equals: 0.
	self assert: (board positionOf: playerTwo) currentBox equals: 0