move
movePlayersExcept: aPlayer backwards: aNumberOfBoxes
	| position numberOfBox numberOfLap |
	(1 to: players size)
		do: [ :i | 
			aPlayer = (players at: i)
				ifFalse: [ position := board positionOf: (players at: i).
					numberOfBox := position currentBox.
					numberOfLap := position currentLap.
					numberOfBox := numberOfBox - aNumberOfBoxes.
					(numberOfBox < 0 and: [ 0 < board lapLength ])
						ifTrue: [ numberOfBox := board lapLength + numberOfBox.
							numberOfLap := numberOfLap - 1 ].
					board updatePositionOf: (players at: i) withBox: numberOfBox withLap: numberOfLap ] ]