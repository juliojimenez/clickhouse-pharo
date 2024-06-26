"
# BaselineOfClickHouse

Baselines allow us to manage dependencies and specify how the repository should be loaded.
"
Class {
	#name : 'BaselineOfClickHouse',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfClickHouse',
	#package : 'BaselineOfClickHouse'
}

{ #category : 'baselines' }
BaselineOfClickHouse >> baseline: spec [
	<baseline>
	spec for: #common do: [ 
		
		"Packages"
		spec
			package: 'ClickHouse';
			package: 'ClickHouse-Tests' with: [ spec requires: #('ClickHouse') ] ]
]
