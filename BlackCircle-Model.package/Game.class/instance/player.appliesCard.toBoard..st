as yet unclassified
player: aPlayer appliesCard: aCard toBoard: aBoard
    "Hardcodeado para undocard aBoard ni siquiera es necesario pero lo dejo para destacar este mensaje"

    | previousPosition previousEffect lastCard |
    previousPosition := aBoard previousPositionOf: aPlayer.
    previousEffect := aBoard effectOfBox: previousPosition currentBox.
    (previousEffect isMemberOf: AtomicBombEffect)
        ifTrue: [ players
                keysDo: [ :player | board updatePositionOf: player at: (board previousPositionOf: player) ] ].
    (previousEffect isMemberOf: GetACardEffect)
        ifTrue: [ lastCard := (self cardsOf: aPlayer) last.
            (self cardsOf: aPlayer) remove: lastCard ].
    (previousEffect isMemberOf: MoonWalkEffect)
        ifTrue: [ (players reject: [ :player | player = aPlayer ])
                keysDo: [ :player | board updatePositionOf: player at: (board previousPositionOf: player) ] ].
    (previousEffect isMemberOf: SpeedUpEffect)
        | (previousEffect isMemberOf: TimeMachineEffect)
        | (previousEffect isMemberOf: WormholeEffect)
        ifTrue: [ board updatePositionOf: aPlayer at: (board previousPositionOf: aPlayer) ]