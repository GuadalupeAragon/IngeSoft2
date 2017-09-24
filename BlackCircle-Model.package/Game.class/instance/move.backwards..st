move
move: aPlayer backwards: aNumberOfBoxes
	| position numberOfBox numberOfLap |
	position := board positionOf: aPlayer.
	numberOfBox := position currentBox.
	numberOfLap := position currentLap.
	numberOfBox := numberOfBox - aNumberOfBoxes.
	(numberOfBox < 0 and: [ 0 < numberOfLap ])
		ifTrue: [ numberOfBox := board lapLength + numberOfBox.
			numberOfLap := numberOfLap - 1 ].
	board updatePositionOf: aPlayer withBox: numberOfBox withLap: numberOfLap