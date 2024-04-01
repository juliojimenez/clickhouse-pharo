"
# ClickHouse Pharo Client
"
Class {
	#name : 'ClickHouse',
	#superclass : 'Object',
	#instVars : [
		'host',
		'port',
		'ssl',
		'database',
		'user',
		'password'
	],
	#category : 'ClickHouse',
	#package : 'ClickHouse'
}

{ #category : 'accessing' }
ClickHouse >> host [
	^ host
]

{ #category : 'accessing' }
ClickHouse >> host: aHost [
	host := aHost.
]
