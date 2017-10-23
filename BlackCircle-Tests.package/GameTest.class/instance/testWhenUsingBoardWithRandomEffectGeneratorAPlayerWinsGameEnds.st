tests
testWhenUsingBoardWithRandomEffectGeneratorAPlayerWinsGameEnds
	| player board game |
	player := self playerFacu.
	board := Board with: 20 boxesGeneratingEffectsFrom: RandomEffectGenerator new.
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving: {player}
		generatingCardsFrom:
			(FixedCardSequence
				generating:
					{Snapshot new.
					Permanent new})
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: Random new)}.
	[ game hasEnded = false ] whileTrue: [ game playTurn: player ].
	self assert: game winner equals: player