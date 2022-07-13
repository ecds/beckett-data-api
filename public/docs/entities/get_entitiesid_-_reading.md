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
| short_display | HTML String |  | true |
| authors | Array |  | true |
| comment | String |  | false |
| publication | String |  | false |
| publication_format | String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/55460f56-b2dc-4f1f-9711-9d83f9fc29ee</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;c71bafa49474b462d752d657e764374e&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 60a8bde5-3469-47c3-ba23-d9073f8fde9d
X-Runtime: 1.232794
Vary: Origin
Content-Length: 382</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "type": "reading",
  "label": "East of Eden",
  "clean_label": "East of Eden",
  "description": "Pop-up <i>asymmetrical green juice fashion</i> axe.",
  "clean_description": "Pop-up asymmetrical green juice fashion axe.",
  "authors": [
    "Curtis Pacocha"
  ],
  "comment": "I think you ought to know I'm feeling very depressed.",
  "publication": "Marshall Cavendish",
  "publication_format": "VHS"
}</pre>
