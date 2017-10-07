initialization
nextEffect
	| randomValue effect |
	randomValue := Random new nextInt: 100.
	(randomValue > 0 and: [ randomValue <= 40 ])
		ifTrue: [ effect := NoEffect new ].
	(randomValue > 40 and: [ randomValue <= 42 ])
		ifTrue: [ effect := AtomicBombEffect new ].
	(randomValue > 42 and: [ randomValue <= 57 ])
		ifTrue: [ effect := WormholeEffect new ].
	(randomValue > 57 and: [ randomValue <= 62 ])
		ifTrue: [ effect := MoonWalkEffect source: Random new ].
	(randomValue > 62 and: [ randomValue <= 77 ])
		ifTrue: [ effect := SpeedUpEffect new ].
	(randomValue > 77 and: [ randomValue <= 100 ])
		ifTrue: [ effect := TimeMachineEffect new ].
	^ effect