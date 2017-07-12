enumerating
check: node forCritiquesDo: aCriticBlock
   node isMessage ifFalse: [ ^ self ].
   node receiver isBlock ifFalse: [ ^ self ].
	[ #(#value #value: #value:value: #value:value:value: #valueWithArguments:)
								includes: node selector ] ifFalse: [^ self ]
   		ifTrue: [ aCriticBlock cull: (self critiqueFor: node) ]