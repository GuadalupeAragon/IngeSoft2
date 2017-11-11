applying
applyTo: aPlayer at: game atPosition: position
	| card |
	card  := (game deck) playerPickACard.
	(game cardsOf: aPlayer) add: card.
	game board updatePositionOf: aPlayer at: position