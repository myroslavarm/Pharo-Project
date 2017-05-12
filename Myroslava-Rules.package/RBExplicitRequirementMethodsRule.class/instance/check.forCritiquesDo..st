running
check: aClass forCritiquesDo: aCritiqueBlock

	| explicitRequirementMethods |
	explicitRequirementMethods := Set new.
	
	aClass isTrait 
		ifTrue: [ ^ self ].
		
	aClass traitComposition allSelectors do: [ :selector | | method |
				method := aClass>>selector.
				 (method isRequired and: [ method isSubclassResponsibility not ]) 
						ifTrue: [ explicitRequirementMethods add: method ]].
	
	(explicitRequirementMethods anySatisfy: [ :method |
		aClass withAllSuperclasses 
			noneSatisfy: [ :superclass | superclass canPerform: method selector ] ]) ifTrue: [
        aCritiqueBlock cull: (self critiqueFor: aClass) ]