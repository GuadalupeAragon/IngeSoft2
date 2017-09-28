move
movePlayersExcept: aPlayer backwards: aNumberOfBoxes
	| position numberOfBox numberOfLap |
	(1 to: players size)
		do: [ :i | 
			aPlayer = (players at: i)
				ifFalse: [ board move: (players at:i) backwards: aNumberOfBoxes ] ]
			