accessing-previousPlayed
previousCardRemoved
	| played |
	played := self previousPlayed.
	^self cardRemovedAt: played.