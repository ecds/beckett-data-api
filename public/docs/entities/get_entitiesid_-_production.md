# Entities API



## GET /entities/:id - Production

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
| cast | Array |  | true |
| city | String |  | false |
| date | String |  | false |
| director | String |  | false |
| links | Array |  | true |
| notes | String |  | false |
| personnel | Array |  | true |
| proposal | String |  | false |
| response | String |  | false |
| reason | String |  | false |
| staging_beckett | String |  | false |
| theater | String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/b81c4d6d-c39d-4231-8480-83ae7af28d39</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;1fa98933ab32a7634a23f83bb2b9b165&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 14c4d6fb-de37-4012-889c-8dd4b875a164
X-Runtime: 1.149179
Vary: Origin
Content-Length: 868</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "type": "production",
  "label": "<i>The Help</i>",
  "clean_label": "The Help",
  "description": "Kale <i>chips raw denim meggings blog tote bag listicle art party</i> polaroid.",
  "clean_description": "Kale chips raw denim meggings blog tote bag listicle art party polaroid.",
  "alternate_spellings": [
    "Thorgy Thor"
  ],
  "cast": [
    "Zarquon",
    "Jackie Treehorn"
  ],
  "city": "Haleyfort",
  "date": "1970-03-24",
  "director": "The Dude",
  "links": [
    "http://wehner.biz/mollie.stroman"
  ],
  "notes": "Vinegar keffiyeh vice pop-up echo organic.",
  "personnel": [
    "Loonquawl"
  ],
  "proposal": "Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.",
  "response": "Yeah, well, that's just, like, your opinion, man.",
  "reason": null,
  "staging_beckett": "http://graham.org/stacy",
  "theater": "Golgafrinchan Ark Fleet Ship B"
}</pre>
