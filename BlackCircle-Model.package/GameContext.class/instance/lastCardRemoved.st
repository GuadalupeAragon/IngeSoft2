accessing-lastPlayed
lastCardRemoved
	| played |
	played := self lastPlayed.
	^ self cardRemovedAt: played