"
# ClickHouse HTTP Class
"
Class {
	#name : 'ClickHouseHttp',
	#superclass : 'ClickHouse',
	#category : 'ClickHouse',
	#package : 'ClickHouse'
}

{ #category : 'as yet unclassified' }
ClickHouseHttp >> buildUrlWithEndpoint: anEndpoint [
	^ String streamContents: [ :stream |
		stream
			nextPutAll: (self ssl ifTrue: ['https'] ifFalse: ['http']);
			nextPutAll: '://';
			nextPutAll: self host;
			nextPut: $:;
			print: self port;
			nextPutAll: '/';
			nextPutAll: anEndpoint ]
]

{ #category : 'as yet unclassified' }
ClickHouseHttp >> ping [
	| client response |
	client := ZnClient new.
	client
		url: (self buildUrlWithEndpoint: 'ping');
		timeout: self timeout.
	response := client get.
	^ response
]

{ #category : 'accessing' }
ClickHouseHttp >> query: aSqlQuery [
    | client response base64Credentials |
    client := ZnClient new.
    base64Credentials := ZnBase64Encoder new encode: (self user, ':', self password) asByteArray.
    
    client
        url: (self buildUrlWithEndpoint: '');
        method: #POST;
        headerAt: 'Authorization' add: ('Basic ', base64Credentials);
        entity: (ZnStringEntity new
                    contentType: 'text/plain';
                    string: aSqlQuery);
        timeout: self timeout.

    response := client execute.
    ^ response 

"isSuccess ifTrue: [response content asString] ifFalse: ['Error: ', response status line reason]"
]

{ #category : 'as yet unclassified' }
ClickHouseHttp >> replicas [
	| client response |
	client := ZnClient new.
	client
		url: (self buildUrlWithEndpoint: 'replicas_status');
		timeout: self timeout.
	response := client get.
	^ response asString
]
