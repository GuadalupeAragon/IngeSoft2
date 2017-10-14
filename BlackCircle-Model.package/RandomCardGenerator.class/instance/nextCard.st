accessing
nextCard
	| randomValue card |
	randomValue := Random new nextInt: 2.
	randomValue = 1
		ifTrue: [ card := Snapshot new ]
		ifFalse: [ card := Permanent new ].
	^ card