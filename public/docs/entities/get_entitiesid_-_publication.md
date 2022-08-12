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
| display_header | HTML String |  | true |
| label | HTML String |  | false |
| description | HTML String |  | false |
| authors | Array |  | false |
| notes | HTML String |  | false |
| publication_information | HTML String |  | false |
| translator | HTML String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/492f277a-88fe-442e-9313-dc8df2a48101</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;6316c86bbe7cc751a216c45065154d6e&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: c49021bc-594b-43bb-9d41-f0854b43a050
X-Runtime: 1.270537
Vary: Origin
Content-Length: 646</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/492f277a-88fe-442e-9313-dc8df2a48101",
  "type": "publication",
  "label": "<i>Marshall Pickering</i>",
  "clean_label": "Marshall Pickering",
  "description": "Cred <i>street ethical blog try-hard photo booth single-origin coffee roof</i> listicle.",
  "clean_description": "Cred street ethical blog try-hard photo booth single-origin coffee roof listicle.",
  "authors": [
    "The Big Lebowski"
  ],
  "notes": "And then of course I've got this terrible pain in all the diodes down my left side.",
  "publication_information": "Migas xoxo shabby chic kombucha pop-up swag tacos.",
  "translator": "Deep Thought"
}</pre>
