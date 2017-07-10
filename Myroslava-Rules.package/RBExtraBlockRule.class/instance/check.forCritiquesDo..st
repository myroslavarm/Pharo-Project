as yet unclassified
check: node forCritiquesDo: aCriticBlock
	(node isMessage
		and: [ node receiver isBlock
				and: [ node parent isCascade not
						and:
							[ #(#value #value: #value:value: #value:value:value: #valueWithArguments:)
								includes: node selector ] ] ])
		ifTrue: [ aCriticBlock cull: (self critiqueFor: node) ]