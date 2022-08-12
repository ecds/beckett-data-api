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
| display_header | HTML String |  | true |
| label | HTML String |  | false |
| description | HTML String |  | false |
| alternate_spellings | Array |  | false |
| composer | HTML String |  | false |
| links | Array |  | false |
| notes | HTML String |  | false |
| performed_by | Array |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/d7830cb7-8c48-4714-a390-036e20d56cdf</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;7689001f93fb051e70d186f97babf3c9&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: a509b2c2-0fe4-4464-8125-3feb63d55d2a
X-Runtime: 1.236032
Vary: Origin
Content-Length: 474</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/d7830cb7-8c48-4714-a390-036e20d56cdf",
  "type": "music",
  "label": "Still Waiting",
  "clean_label": "Still Waiting",
  "description": "Chicharrones meggings hammock distillery.",
  "clean_description": "Chicharrones meggings hammock distillery.",
  "alternate_spellings": [
    "Willam"
  ],
  "composer": "Loonquawl and Phouchg",
  "links": null,
  "notes": "You're gonna have to fight your own damn war, cause we don't want to fight no more.",
  "performed_by": [
    "Jackie Treehorn"
  ]
}</pre>
