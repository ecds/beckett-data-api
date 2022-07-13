# Entities API



## GET /entities/:id - Public Event

### GET /entities/:id

### Response Fields

| Name | Default | Description | Not Null |
|------|---------|-------------|----------|
| label | HTML String |  | true |
| clean_label | String |  | true |
| description | HTML String |  | true |
| clean_description | String |  | true |
| short_display | HTML String |  | true |
| date | String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/e7570ac5-76e5-48cc-bd32-5163fa32e7cb</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;e84318b05b7d29af4e7ec6b57181a21a&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 16444013-cd56-4520-8c20-bd75362eedb4
X-Runtime: 1.369708
Vary: Origin
Content-Length: 357</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "type": "public_event",
  "label": "<i>Atlantis</i>",
  "clean_label": "Atlantis",
  "description": "Distillery <i>bushwick small batch vhs wayfarers put a bird on it actually yolo fanny</i> pack.",
  "clean_description": "Distillery bushwick small batch vhs wayfarers put a bird on it actually yolo fanny pack.",
  "date": "1968-10-12"
}</pre>
