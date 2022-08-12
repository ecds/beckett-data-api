# Entities API



## GET /entities/:id - Organization

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
| alternate_names | Array |  | false |
| alternate_spellings | Array |  | false |
| profile | HTML String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/5fda001a-42c2-4b17-8399-22d8d9a808e3</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;175cb6c68f12206dd68e1bf3ecff9d70&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: b154bfda-5ecb-4f4d-b2f5-b201a328fc53
X-Runtime: 1.221776
Vary: Origin
Content-Length: 474</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/5fda001a-42c2-4b17-8399-22d8d9a808e3",
  "type": "organization",
  "label": "Sesefras Magna",
  "clean_label": "Sesefras Magna",
  "description": "Occupy <i>narwhal meh yr neutra normcore</i> cornhole.",
  "clean_description": "Occupy narwhal meh yr neutra normcore cornhole.",
  "alternate_names": null,
  "alternate_spellings": [
    "Brook Lynn Hytes"
  ],
  "profile": "If they don’t keep exercising their lips, he thought, their brains start working."
}</pre>
