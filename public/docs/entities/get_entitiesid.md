# Entities API



## GET /entities/:id

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/531d3933-709d-4cfb-9fa2-c56206215331</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;ea7b7c2290a14bb3777f549556a1ba64&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 445849fe-0cd8-4624-96d4-270e8f5d41fb
X-Runtime: 1.131998
Vary: Origin
Content-Length: 647</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/531d3933-709d-4cfb-9fa2-c56206215331",
  "type": "translating",
  "label": "The World, the Flesh and the Devil",
  "clean_label": "The World, the Flesh and the Devil",
  "description": "Chicharrones <i>blue bottle hoodie salvia paleo normcore banjo</i> authentic.",
  "clean_description": "Chicharrones blue bottle hoodie salvia paleo normcore banjo authentic.",
  "author": "Agrajag",
  "notes": "Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.",
  "translated_into": "arabic",
  "translated_title": "Bistromath",
  "translator": "Eddie the Computer"
}</pre>
