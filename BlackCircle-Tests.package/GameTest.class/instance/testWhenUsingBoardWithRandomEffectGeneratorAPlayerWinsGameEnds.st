tests
testWhenUsingBoardWithRandomEffectGeneratorAPlayerWinsGameEnds
	| player board game |
	player := self playerFacu.
	board := Board with: 20 source: RandomEffectGenerator new.
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving: {player}
		sourceOfCards:
			(FixedCardSequence
				generating:
					{Snapshot new.
					Permanent new})
		withDices: {(Dice with: 6 source: Random new)}.
	[ game hasEnded = false ]
		whileTrue: [ game playTurn: player with: nil ].
	self assert: game winner equals: player