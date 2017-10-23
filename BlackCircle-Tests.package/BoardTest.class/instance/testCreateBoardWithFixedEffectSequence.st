tests
testCreateBoardWithFixedEffectSequence
	| board |
	board := Board
		with: 20
		boxesGeneratingEffectsFrom:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					AtomicBombEffect new.
					WormholeEffect new}).
	self assert: board lapLength equals: 20