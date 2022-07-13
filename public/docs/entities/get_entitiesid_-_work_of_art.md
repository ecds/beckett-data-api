# Entities API



## GET /entities/:id - Work Of Art

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
| artist | String |  | false |
| artist_alternate_spellings | Array |  | true |
| notes | String |  | false |
| owner_location_accession_number_current | String |  | false |
| owner_location_accession_number_contemporaneous | String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/2ebb5fb3-083a-4c8e-9edf-6fd080d70520</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;f778946810e576905607dfa3b1919b2d&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: e908e6c0-ac84-4f69-97be-4a15d51567bc
X-Runtime: 1.233438
Vary: Origin
Content-Length: 524</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "type": "work_of_art",
  "label": "Uptown",
  "clean_label": "Uptown",
  "description": "Pork belly humblebrag actually schlitz.",
  "clean_description": "Pork belly humblebrag actually schlitz.",
  "alternate_spellings": [
    "Stacy Layne Matthews"
  ],
  "artist": "Barry Manilow",
  "artist_alternate_spellings": [
    "Ariel Versace"
  ],
  "notes": "Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.",
  "owner_location_accession_number_current": 859,
  "owner_location_accession_number_contemporaneous": 818
}</pre>
