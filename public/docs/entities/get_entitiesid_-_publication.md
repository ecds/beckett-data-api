# Entities API



## GET /entities/:id - Publication

### GET /entities/:id

### Response Fields

| Name | Default | Description | Not Null |
|------|---------|-------------|----------|
| label | HTML String |  | true |
| clean_label | String |  | true |
| description | HTML String |  | true |
| clean_description | String |  | true |
| short_display | HTML String |  | true |
| author | String |  | false |
| notes | String |  | false |
| publication_information | String |  | false |
| translator | String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/e20e2e0f-905c-478e-9059-83c9ca0c1eea</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;baf379006ffd1ae896ed7ee09a92c3e4&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 538f104c-56ba-4484-bef4-8f33a8481edd
X-Runtime: 1.285482
Vary: Origin
Content-Length: 419</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "type": "publication",
  "label": "Oglethorpe",
  "clean_label": "Oglethorpe",
  "description": "Scenester umami five dollar toast gluten-free distillery.",
  "clean_description": "Scenester umami five dollar toast gluten-free distillery.",
  "author": "Jackie Treehorn",
  "notes": "I won't enjoy it.",
  "publication_information": "Direct trade selvage tacos skateboard hashtag health williamsburg small batch.",
  "translator": "Lunkwill and Fook"
}</pre>
