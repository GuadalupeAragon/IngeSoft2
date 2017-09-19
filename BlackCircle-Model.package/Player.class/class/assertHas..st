initialize
assertHas: aName
	aName = ''
		ifTrue: [ InstanceCreationException signal: 'Invalid Player instance' ]