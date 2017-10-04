initialization
nextEffect
	| randomValue |
	randomValue := Random new nextInt: 100.
	(randomValue > 0 & randomValue) <= 40
		ifTrue: [ ^ NoEffect new ].
	(randomValue > 40 & randomValue) <= 42
		ifTrue: [ ^ AtomicBombEffect new ].
	(randomValue > 42 & randomValue) <= 57
		ifTrue: [ ^ WormholeEffect new ].
	(randomValue > 57 & randomValue) <= 62
		ifTrue: [ ^ MoonWalkEffect source: Random new ].
	(randomValue > 62 & randomValue) <= 77
		ifTrue: [ ^ SpeedUpEffect new ].
	(randomValue > 77 & randomValue) <= 100
		ifTrue: [ ^ TimeMachineEffect new ]