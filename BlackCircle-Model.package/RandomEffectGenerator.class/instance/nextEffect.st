as yet unclassified
nextEffect
	| gotRandomValue |
	gotRandomValue := (Random new) nextInt: 100.
	gotRandomValue>0 & gotRandomValue<=40
	ifTrue:[^NoEffect new ].
	
	gotRandomValue>40 & gotRandomValue<=42
	ifTrue:[^AtomicBombEffect new].
	
	gotRandomValue>42 & gotRandomValue<=57
	ifTrue:[^WormholeEffect  new].
	
	gotRandomValue>57 & gotRandomValue<=62
	ifTrue:[^MoonWalkEffect   new].
	
	gotRandomValue>62 & gotRandomValue<=77
	ifTrue:[^SpeedUpEffect    new].
	
	gotRandomValue>77 & gotRandomValue<=100
	ifTrue:[^TimeMachineEffect     new].
	