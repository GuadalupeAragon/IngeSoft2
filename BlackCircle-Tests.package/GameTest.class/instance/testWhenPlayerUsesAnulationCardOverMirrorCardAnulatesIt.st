test-InstantCard
testWhenPlayerUsesAnulationCardOverMirrorCardAnulatesIt
	| playerGuada board game playerFacu mirrorCard deck anulationCard overloadCard speedCard playerHijitus |
	playerGuada := self playerGuada.
	playerFacu := self playerFacu.
	playerHijitus := self playerHijitus.
	board := Board
		with: 20
		boxesGeneratingEffectsFrom:
			(FixedEffectSequence
				generating:
					{NoEffect new.
					SpeedUpEffect new}).
	mirrorCard := self mirrorCard.
	anulationCard := self anulationCard.
	overloadCard := self overloadCard.
	speedCard := self speedCard.
	deck := Deck
		generatingCardsFrom:
			(FixedCardSequence
				generating:
					{mirrorCard.
					overloadCard.
					speedCard.
					anulationCard}).
	game := Game
		withBoard: board
		requiredLapsToWin: 3
		involving:
			{playerGuada.
			playerFacu.
			playerHijitus}
		generatingCardsFrom: deck
		withDices: {(Dice with: 6 facesGeneratingNumbersFrom: (FixedNumberSequence generating: #(2 1 4)))}.
	game apply: mirrorCard playedBy: playerGuada at: 4.
	game playTurn: playerGuada.
	self assert: (game context positionOf: playerGuada) currentBox equals: 6.
	self assert: (game context positionOf: playerGuada) currentLap equals: 0.
	game apply: anulationCard playedBy: playerFacu toPermanetCard: mirrorCard.
	game playTurn: playerFacu.
	self assert: (game context positionOf: playerFacu) currentBox equals: 1.
	self assert: (game context positionOf: playerFacu) currentLap equals: 0.
	game playTurn: playerHijitus.
	self assert: (game context positionOf: playerHijitus) currentBox equals: 8.
	self assert: (game context positionOf: playerHijitus) currentLap equals: 0.
		self assert: (game context positionOf: playerGuada) currentBox equals: 6.
	self assert: (game context positionOf: playerGuada) currentLap equals: 0.
		self assert: (game context positionOf: playerFacu) currentBox equals: 1.
	self assert: (game context positionOf: playerFacu) currentLap equals: 0.