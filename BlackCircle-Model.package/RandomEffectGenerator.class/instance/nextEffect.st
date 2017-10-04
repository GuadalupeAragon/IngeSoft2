initialization
nextEffect
	| randomValue |
	randomValue := Random new nextInt: 100.
(	randomValue > 0 and:[ (randomValue <= 40)])
		ifTrue: [ ^ NoEffect new ].
	(randomValue > 40 and: [randomValue <= 42])
		ifTrue: [ ^ AtomicBombEffect new ].
	(randomValue > 42 and: [randomValue <= 57])
		ifTrue: [ ^ WormholeEffect new ].
	(randomValue > 57 and: [randomValue <= 62])
		ifTrue: [ ^ MoonWalkEffect source: Random new ].
	(randomValue > 62 and: [randomValue <= 77])
		ifTrue: [ ^ SpeedUpEffect new ].
	(randomValue > 77 and: [randomValue <= 100])
		ifTrue: [ ^ TimeMachineEffect new ]