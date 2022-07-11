# Entities API



## GET /entities/:id - Reading

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/0613bd20-0531-4e27-9bdf-9f02c5814cc6</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;27217af457205285b91cb74ce0ae895b&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: dfb029e1-8945-48fc-8408-0e4b6d40e2fc
X-Runtime: 1.019083
Vary: Origin
Content-Length: 324</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "type": "reading",
  "label": "<i>Shall not Perish</i>",
  "description": "Polaroid bespoke ugh vice.",
  "authors": [
    "Gustavo Bartoletti"
  ],
  "comment": "There's only one life-form as intelligent as me within thirty parsecs of here and that's me.",
  "publication": "Charles Scribner's Sons",
  "publication_format": "hashtag"
}</pre>
