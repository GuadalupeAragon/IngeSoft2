test-InstantCard
testWhenPlayerUsesPotentationCardReapplysLastEffectWhichWasSpeedUp
	| playerGuada board game playerFacu overloadCard undoCard deck overloadCardOne potentationCardOne |
	playerGuada := self playerGuada.
	playerFacu := self playerFacu.
	board := Board
		with: 20
		boxesGeneratingEffectsFrom:
			(FixedEffectSequence
				generating:
					{
					SpeedUpEffect new.NoEffect new.}).
	overloadCard := self overloadCard.
	undoCard := self undoCard.
	overloadCardOne := self overloadCard.
	potentationCardOne := self potentationCard.
	deck := Deck
		generatingCardsFrom:
			(FixedCardSequence
				generating:
					{overloadCard.
					undoCard.
					overloadCardOne.
					potentationCardOne}).
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving:
			{playerGuada.
			playerFacu}
		generatingCardsFrom: deck
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(3 1 2 1 1)))}.
	game playTurn: playerGuada.
	self assert: (board positionOf: playerGuada) currentBox equals: 7.
	self assert: (board positionOf: playerGuada) currentLap equals: 0.
	game apply: potentationCardOne playedBy: playerFacu.
	self assert: (board positionOf: playerGuada) currentBox equals: 11.
	self assert: (board positionOf: playerGuada) currentLap equals: 0