# Entities API



## GET /entities/:id - Place

### GET /entities/:id

### Response Fields

| Name | Default | Description | Not Null |
|------|---------|-------------|----------|
| label | HTML String |  | true |
| clean_label | String |  | true |
| description | HTML String |  | true |
| clean_description | String |  | true |
| display_header | HTML String |  | true |
| label | HTML String |  | false |
| description | HTML String |  | false |
| alternate_spellings | Array |  | false |
| links | Array |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/4b003960-fdc5-492c-97e3-099125b294e1</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;cef19c712c6098736de479381b0123c2&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 946a22d1-d333-428d-8b79-5a8de72d2565
X-Runtime: 1.324685
Vary: Origin
Content-Length: 417</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/4b003960-fdc5-492c-97e3-099125b294e1",
  "type": "place",
  "label": "<i>Belgium</i>",
  "clean_label": "Belgium",
  "description": "Cleanse <i>etsy you probably haven't heard of them</i> mixtape.",
  "clean_description": "Cleanse etsy you probably haven't heard of them mixtape.",
  "alternate_spellings": [
    "Jiggly Caliente"
  ],
  "links": [
    "http://hayes.co/jame.emard"
  ]
}</pre>
