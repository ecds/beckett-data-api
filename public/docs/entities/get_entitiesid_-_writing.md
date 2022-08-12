# Entities API



## GET /entities/:id - Writing

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
| date | HTML String |  | false |
| links | Array |  | false |
| notes | HTML String |  | false |
| porposal | HTML String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/517e27a2-a064-4763-99ff-194739add7b3</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;07edb6d186f8fcdb2a712aa409a2c4d6&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 8d2256e4-43f1-4d3c-924f-b64d0bd0d966
X-Runtime: 1.059885
Vary: Origin
Content-Length: 550</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/517e27a2-a064-4763-99ff-194739add7b3",
  "type": "writing",
  "label": "<i>A Time to Kill</i>",
  "clean_label": "A Time to Kill",
  "description": "Single-origin <i>coffee diy listicle yolo humblebrag schlitz</i> seitan.",
  "clean_description": "Single-origin coffee diy listicle yolo humblebrag schlitz seitan.",
  "date": "1928-05-22",
  "links": [
    "http://cummings.net/fay.kuhn"
  ],
  "notes": "There's only one life-form as intelligent as me within thirty parsecs of here and that's me.",
  "porposal": null
}</pre>
