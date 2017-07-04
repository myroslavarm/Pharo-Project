initialization
initialize
	super initialize.
	self matchesAny: #(
			'`{ :node | node isLiteralNode and: [ node value isFloat ] } = `@expr'
			'`{ :node | node isLiteralNode and: [ node value isFloat ] } ~= `@expr'
			'`@expr = `{ :node | node isLiteralNode and: [ node value isFloat ] }'
			'`@expr ~= `{ :node | node isLiteralNode and: [ node value isFloat ] }' )