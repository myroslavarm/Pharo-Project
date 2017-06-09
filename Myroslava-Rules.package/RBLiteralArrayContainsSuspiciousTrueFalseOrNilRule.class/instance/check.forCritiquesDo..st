running
check: aMethod forCritiquesDo: aCritiqueBlock 
	| compiledLits |
	compiledLits := aMethod allLiterals
		inject: OrderedCollection new
		into: [ :collection :literal |
			collection
				addAll: (self literalTrueFalseOrNilSymbolsIn: literal);
				yourself ].
	compiledLits size strictlyPositive ifTrue: [
        aCritiqueBlock cull: (self critiqueFor: aMethod) ].
	
	^ self