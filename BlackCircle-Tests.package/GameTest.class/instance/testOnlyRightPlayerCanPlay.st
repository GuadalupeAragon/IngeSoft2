tests
testOnlyRightPlayerCanPlay
	| board game playerOne playerTwo |
	playerOne := self playerGuada.
	playerTwo := self playerHijitus.
	board := Board
		with: 10
		source: (FixedEffectSequence generating: {NoEffect new}).
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving:
			{playerOne.
			playerTwo}
		sourceOfCards:
			(FixedCardSequence
				generating:
					{Snapshot new.
					Snapshot new})
		withDices: {(Dice with: 6 source: Random new)}.
	game playTurn: playerOne with: nil.
	game playTurn: playerTwo with: nil.
	game playTurn: playerOne with: nil.
	self
		should: [ game playTurn: playerOne with: nil ]
		raise: PlayTurnException