# Entities API



## GET /entities/autocomplete?search=:fragment

### GET /entities/autocomplete

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| search | Text to search. | false | *
| type | Limit responses by single type. Options are attendance, music, organization, person, place, production, public_event, publication, reading, translating, work_of_art, writing. | false | null

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/autocomplete?search=di</pre>

#### Query Parameters

<pre>search: di</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;0da93731045701eace2281e664d5f69b&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 5067bdd4-c88a-4fcc-9668-53002d0030b3
X-Runtime: 11.867266
Vary: Origin
Content-Length: 106</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>[
  "<i>Discovery</i>",
  "Discovery",
  "I Would Die 4 U",
  "After Many a Summer Dies the Swan"
]</pre>
