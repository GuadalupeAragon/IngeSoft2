accessing-positions
previousPositionOf: aPlayer
	| history |
	history := self historyOf: aPlayer.
	^ (history last: (2 min: history size)) first