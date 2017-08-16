running
check: aMethod forCritiquesDo: aCriticBlock

	(aMethod overiddenMethods anySatisfy: #isDeprecated) ifTrue: [ 
		aCriticBlock cull: (self critiqueFor: aMethod) ]