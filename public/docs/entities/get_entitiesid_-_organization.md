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
| short_display | HTML String |  | true |
| alternate_spellings | Array |  | true |
| profile | HTML String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/61e0902d-01dd-4142-a0cc-145e87c0bee7</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;2d75adac97f97e9d2233fc0ed201c696&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 14dac23f-8f9e-42b9-967f-da8db6dc3675
X-Runtime: 1.186051
Vary: Origin
Content-Length: 365</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "type": "organization",
  "label": "<i>Happi-Werld III</i>",
  "clean_label": "Happi-Werld III",
  "description": "Ennui <i>seitan green juice</i> readymade.",
  "clean_description": "Ennui seitan green juice readymade.",
  "alternate_spellings": [
    "Tatianna"
  ],
  "profile": "Three thousand years of beautiful tradition, from Moses to Sandy Koufax."
}</pre>
