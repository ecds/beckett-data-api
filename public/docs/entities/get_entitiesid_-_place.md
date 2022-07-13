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
| short_display | HTML String |  | true |
| alternate_spellings | Array |  | true |
| links | Array |  | true |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/951fa656-9b19-4b1b-9320-3b23d8cc4f7a</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;d1bcdd9a1c7cc72b11eabba19a4a0060&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: dd5deae3-a7ec-4601-8abc-5d2d6a885f73
X-Runtime: 1.370353
Vary: Origin
Content-Length: 321</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "type": "place",
  "label": "The Domain of The King",
  "clean_label": "The Domain of The King",
  "description": "Vinyl gentrify green juice lumbersexual vice heirloom.",
  "clean_description": "Vinyl gentrify green juice lumbersexual vice heirloom.",
  "alternate_spellings": [
    "Kameron Michaels"
  ],
  "links": [
    "http://gusikowski.net/syreeta"
  ]
}</pre>
