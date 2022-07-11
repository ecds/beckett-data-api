# Entities API



## GET /entities/:id - Place

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/34beecf0-1470-4ad2-b59c-aa311aae7bfc</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;d0006281f37c53a57eb920b8137f5857&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 7d313543-73c7-44ac-ad9f-dee856fa5073
X-Runtime: 0.924134
Vary: Origin
Content-Length: 218</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "type": "place",
  "label": "France",
  "description": "Fingerstache mumblecore literally banjo tilde trust fund photo booth umami wes anderson.",
  "alternate_spellings": [
    "Pandora Boxx"
  ],
  "links": [
    "http://ernser.biz/tamra_lang"
  ]
}</pre>
