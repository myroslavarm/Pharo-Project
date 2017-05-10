enumerating
check: aClass forCritiquesDo: aCritiqueBlock
	(self basicCheck: aClass)
		ifTrue: [ aCritiqueBlock cull: (
			ReMissingMethodCritique
				for: aClass
				by: self
				class: aClass
				selector: #basicCheck:)
				beShouldBeImplemented ]