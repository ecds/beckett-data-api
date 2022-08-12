# Entities API



## GET /entities/:id - Reading

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
| authors | Array |  | false |
| notes | HTML String |  | false |
| publication | HTML String |  | false |
| publication_format | HTML String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/9bcffbb9-b39f-49ca-830a-99f6e9943272</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;456556479bea711874b360442d1abadd&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 8382ab68-c534-4701-a3fd-36341c2f37f9
X-Runtime: 1.189716
Vary: Origin
Content-Length: 428</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/9bcffbb9-b39f-49ca-830a-99f6e9943272",
  "type": "reading",
  "label": "The Line of Beauty",
  "clean_label": "The Line of Beauty",
  "description": "Bicycle rights plaid park tousled chia green juice pug.",
  "clean_description": "Bicycle rights plaid park tousled chia green juice pug.",
  "authors": [
    "Fernando Murphy"
  ],
  "notes": "I won't enjoy it.",
  "publication": "Mainstream Publishing",
  "publication_format": "vice"
}</pre>
