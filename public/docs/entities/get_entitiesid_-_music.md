# Entities API



## GET /entities/:id - Music

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
| composer | String |  | false |
| links | Array |  | true |
| notes | String |  | false |
| performed_by | Array |  | true |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/37adf507-4baf-460a-bfbd-512f5b28c90d</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;86060adf3db2ac0880ba2c9a0f996e53&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 97381204-3f82-4bb0-8156-8a6e281b5b3d
X-Runtime: 1.079341
Vary: Origin
Content-Length: 343</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "type": "music",
  "label": "<i>Sexy MF</i>",
  "clean_label": "Sexy MF",
  "description": "Next level beard drinking leggings.",
  "clean_description": "Next level beard drinking leggings.",
  "alternate_spellings": [
    "Ivy Winters"
  ],
  "composer": "Reg Nullify",
  "links": [

  ],
  "notes": "Until the end of time, I'll be there for you.",
  "performed_by": [

  ]
}</pre>
