initialization
nextEffect
	| nextEffect |
	nextEffect := source at: index.
	source size = index
		ifTrue: [ index := 1 ]
		ifFalse: [ index := index + 1 ].
		^ nextEffect