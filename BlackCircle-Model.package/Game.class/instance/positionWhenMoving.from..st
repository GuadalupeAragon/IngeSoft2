move
positionWhenMoving: aNumberOfBoxes from: position
	| numberOfBox numberOfLap |
	numberOfBox := position currentBox+ aNumberOfBoxes - 1.
	
	
	numberOfLap := position currentLap * board lapLength + numberOfBox quo: board lapLength.
	numberOfBox := numberOfBox rem: board lapLength.
	^ Position currentlyIn: numberOfLap at: numberOfBox + 1