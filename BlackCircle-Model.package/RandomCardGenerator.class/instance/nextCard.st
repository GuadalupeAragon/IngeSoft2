accessing
nextCard

	cards := OrderedCollection new
		add: AnulationCard new;
		add: UndoCard new;
		add: AmortiguationCard new;
		add: OverloadCard new;
		add: SpeedCard new;
		yourself.
	^ cards atRandom