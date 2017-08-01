hooks
afterCheck: aNode mappings: mappingDict
	^ (mappingDict at: '`@.Stmts')
		statements anySatisfy: #containsReturn