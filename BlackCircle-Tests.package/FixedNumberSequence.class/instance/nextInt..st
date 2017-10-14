accessing
nextInt: maxNumber
	| nextNumber |
	nextNumber := source at: index.
	source size = index
		ifTrue: [ index := 1 ]
		ifFalse: [ index := index + 1 ].
	maxNumber < nextNumber
		ifTrue: [ ^ nextNumber rem: maxNumber ]
		ifFalse: [ ^ nextNumber ]