removing
removeOf: aGame
	aGame changeAmortiguationTo: (aGame currentAmortiguation quo: 2)
	"No utliza el mensaje de super porque las AmortiguationCard son tratadas de forma distinas a las OverloadCard y SpeedCard.
	 Las ultimas son cartas aplicables a un jugador especifico. AmortiguationCard no se aplica a alguien especifico sino a todos."