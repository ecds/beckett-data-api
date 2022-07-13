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
| short_display | HTML String |  | true |
| date | String |  | false |
| notes | String |  | false |
| porposal | String |  | false |
| beckett_digital_manuscript_project | String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/9e54da9b-96f7-42ed-8552-2131861ecac9</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;2702f778d36399e1be5dc412dc967337&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 3f9e1303-8c74-4b2e-94ff-6a51c57396ca
X-Runtime: 1.203153
Vary: Origin
Content-Length: 478</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "type": "writing",
  "label": "<i>Quo Vadis</i>",
  "clean_label": "Quo Vadis",
  "description": "Fanny pack flexitarian meh migas mumblecore ugh.",
  "clean_description": "Fanny pack flexitarian meh migas mumblecore ugh.",
  "date": "1924-02-26",
  "notes": "Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.",
  "porposal": null,
  "beckett_digital_manuscript_project": "http://deckow-johns.biz/mariam_blanda"
}</pre>
