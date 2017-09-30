move
movePlayersExcept: aPlayer backward: aNumberOfBoxes
	| playersCopy |
	playersCopy  := players reject: [ :player | player = aPlayer ].
	playersCopy  do: [ :player | self move: player forward: 0 - aNumberOfBoxes ]