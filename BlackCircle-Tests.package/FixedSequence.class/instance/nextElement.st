accessing
nextElement
	| nextElement |
	nextElement := source at: currentElementIndex.
	source size = currentElementIndex
		ifTrue: [ currentElementIndex := 1 ]
		ifFalse: [ currentElementIndex := currentElementIndex + 1 ].
	^ nextElement
	