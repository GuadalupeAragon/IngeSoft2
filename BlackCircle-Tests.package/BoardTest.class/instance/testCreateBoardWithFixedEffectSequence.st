tests
testCreateBoardWithFixedEffectSequence
	| board |
	board := Board
		with: 20
		source:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					AtomicBombEffect new.
					WormholeEffect new}).
	self assert: board lapLength equals: 20