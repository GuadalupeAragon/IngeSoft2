accessing
nextCard
	
	"randomValue := Random new nextInt: 2.
	randomValue = 1
		ifTrue: [ card := InstantCard new ]
		ifFalse: [ card := PermanentCard new ]."
	cards := OrderedCollection new
		add: AnulationCard new;
		add: UndoCard new;
		add: AmortiguationCard new;
		add: OverloadCard new;
		add: SpeedCard new;
		yourself.
	^ cards atRandom