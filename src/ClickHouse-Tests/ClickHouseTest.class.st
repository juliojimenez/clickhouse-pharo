Class {
	#name : 'ClickHouseTest',
	#superclass : 'TestCase',
	#category : 'ClickHouse-Tests',
	#package : 'ClickHouse-Tests'
}

{ #category : 'running' }
ClickHouseTest >> testCreateClickHouse [
	"Test if the creation of an object ClickHouse is done properly"
	|tmp|
	tmp := ClickHouse new.
	self assert: tmp isNotNil 
]
