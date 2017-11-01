accessing
nextInt: maxNumber
	| nextNumber |
	nextNumber := source at: currentElementIndex.
	source size = currentElementIndex
		ifTrue: [ currentElementIndex := 1 ]
		ifFalse: [ currentElementIndex := currentElementIndex + 1 ].
	maxNumber < nextNumber
		ifTrue: [ ^ nextNumber rem: maxNumber ]
		ifFalse: [ ^ nextNumber ]