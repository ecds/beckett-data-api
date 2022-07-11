# Entities API



## GET /entities/:id - Work Of Art

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/8a9c0216-05d9-4876-bc94-ea09189db428</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;b61e763456309f1acee0bf6333975d20&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 9938133c-cba0-4c61-8a69-cf4e92c7a76b
X-Runtime: 1.004261
Vary: Origin
Content-Length: 443</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "type": "work_of_art",
  "label": "<i>Partyman</i>",
  "description": "Tofu <i>blue bottle before they sold out chartreuse cray</i> franzen.",
  "alternate_spellings": [
    "Morgan McMichaels"
  ],
  "artist": "Eccentrica Gallumbits",
  "artist_alternate_spellings": [
    "Ra'jah O'Hara"
  ],
  "notes": "Life? Don't talk to me about life.",
  "owner_location_accession_number_current": 744,
  "owner_location_accession_number_contemporaneous": 602
}</pre>
