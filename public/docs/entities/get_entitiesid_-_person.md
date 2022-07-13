# Entities API



## GET /entities/:id - Person

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
| finding_aids | Array |  | true |
| first_name | String |  | false |
| last_name | String |  | false |
| life_dates | String |  | false |
| links | Array |  | true |
| profile | HTML String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/49c3aa6c-de67-4c6a-8d1b-661f3d3fcc4d</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;fd707fccb56ba97ecc0ce1f4bdc8ec4b&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 6a371f9d-3bf5-438b-ad78-154305bd54e7
X-Runtime: 1.261688
Vary: Origin
Content-Length: 473</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "type": "person",
  "label": "Bunny Lebowski",
  "clean_label": "Bunny Lebowski",
  "description": "Leggings <i>knausgaard pbr&b xoxo</i> seitan.",
  "clean_description": "Leggings knausgaard pbr&amp;b xoxo seitan.",
  "alternate_spellings": [
    "Cynthia Lee Fontaine"
  ],
  "finding_aids": [
    "http://bins.net/jules"
  ],
  "first_name": "Lovetta",
  "last_name": "Braun",
  "life_dates": "(1918-1977)",
  "links": [
    "http://bashirian.net/stephany"
  ],
  "profile": "Obviously, you're not a golfer"
}</pre>
