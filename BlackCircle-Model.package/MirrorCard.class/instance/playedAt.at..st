accessing
playedAt: aBox at: aGame
	effect := aGame board effectOfBox: aBox.
	numberOfBox := aBox.
(	aGame board) decorateEffectAt: aBox with: self