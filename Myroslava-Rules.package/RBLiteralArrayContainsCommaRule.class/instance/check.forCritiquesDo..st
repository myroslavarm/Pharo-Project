running
check: aMethod forCritiquesDo: aCritiqueBlock 
	(aMethod allLiterals anySatisfy: [ :each | self doesLiteralArrayContainComma: each ])
	ifTrue: [ aCritiqueBlock cull: (self critiqueFor: aMethod) ]