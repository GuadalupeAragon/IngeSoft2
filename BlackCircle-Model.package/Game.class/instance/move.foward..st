move
move: aPlayer foward: aNumberOfBoxes
	| position numberOfBox numberOfLap |
	position := board positionOf: aPlayer.
	numberOfBox := position currentBox.
	numberOfLap := position currentLap.
	numberOfBox := numberOfBox + aNumberOfBoxes.
	board lapLength < numberOfBox
		ifTrue: [ numberOfLap := numberOfLap + (numberOfBox quo: board lapLength).
			numberOfBox := numberOfBox rem: board lapLength ].
	board updatePositionOf: aPlayer withBox: numberOfBox withLap: numberOfLap