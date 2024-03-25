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
