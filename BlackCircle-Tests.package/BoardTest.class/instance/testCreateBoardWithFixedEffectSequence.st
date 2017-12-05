tests
testCreateBoardWithFixedEffectSequence
	| board noEffect atomicBombEffect wormholeEffect |
	board := Board
		with: 5
		boxesGeneratingEffectsFrom:
			(FixedEffectSequence
				generating:
					{(noEffect := NoEffect new).
					(atomicBombEffect := AtomicBombEffect new).
					(wormholeEffect := WormholeEffect new)}).
	self assert: board lapLength equals: 5.
	self assert: (board effectOfBox: 1) equals: noEffect.
	self assert: (board effectOfBox: 2) equals: atomicBombEffect.
	self assert: (board effectOfBox: 3) equals: wormholeEffect.
	self assert: (board effectOfBox: 4) equals: noEffect.
	self assert: (board effectOfBox: 5) equals: atomicBombEffect.