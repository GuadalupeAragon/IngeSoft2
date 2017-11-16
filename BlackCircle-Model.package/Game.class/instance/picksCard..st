playing
picksCard: aPlayer
	| card |
	card  := deck playerPickACard.
	(self cardsOf: aPlayer) add: card.