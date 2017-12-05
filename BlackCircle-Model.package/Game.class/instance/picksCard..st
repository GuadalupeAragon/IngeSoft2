playing
picksCard: aPlayer
	| card |
	card  := deck nextCard.
	(self cardsOf: aPlayer) add: card.