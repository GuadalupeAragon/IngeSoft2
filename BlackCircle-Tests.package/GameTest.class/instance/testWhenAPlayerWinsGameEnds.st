tests
testWhenAPlayerWinsGameEnds
	| player board game decreasePositonCard |
	player := self playerFacu.
	board := self boardWith4BoxesAndNoEffect.
	game := Game
		withBoard: board
		requiredLapsToWin: 1
		involving: {player}
		sourceOfCards:
			(FixedCardSequence
				generating:
					{Snapshot new.
					(decreasePositonCard := DecreasePositionCard new)})
		withDices: {(Dice with: 6 source: (FixedNumberSequence generating: #(5 6)))}.
	game playTurn: player with: decreasePositonCard.
	self assert: (board positionOf: player) currentBox equals: -1.
	self assert: (board positionOf: player) currentLap equals: 0.
	game playTurn: player with: nil.
	self assert: (board positionOf: player) currentBox equals: 1.
	self assert: (board positionOf: player) currentLap equals: 1.
	self assert: game winner equals: player.
	self assert: game hasEnded