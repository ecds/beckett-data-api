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
| display_header | HTML String |  | true |
| label | HTML String |  | false |
| description | HTML String |  | false |
| alternate_spellings | Array |  | false |
| artist | HTML String |  | false |
| artist_alternate_spellings | Array |  | false |
| notes | HTML String |  | false |
| owner_location_accession_number_current | HTML String |  | false |
| owner_location_accession_number_contemporaneous | HTML String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/8c8233fa-d1cd-4bb7-92c5-c72aee1d0a18</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;c2ae13aadb47bc7fae5a46cd1b116a45&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 73b862bc-ba4e-4b00-b6ee-48c564147ca9
X-Runtime: 1.234987
Vary: Origin
Content-Length: 919</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/8c8233fa-d1cd-4bb7-92c5-c72aee1d0a18",
  "type": "work_of_art",
  "label": "<i>I Would Die 4 U</i>",
  "clean_label": "I Would Die 4 U",
  "description": "Chambray <i>dreamcatcher chartreuse cornhole mixtape tattooed cronut sartorial</i> biodiesel.",
  "clean_description": "Chambray dreamcatcher chartreuse cornhole mixtape tattooed cronut sartorial biodiesel.",
  "alternate_spellings": [
    "Vanessa Vanjie Mateo"
  ],
  "artist": "Roosta",
  "artist_alternate_spellings": [
    "Trinity Taylor"
  ],
  "notes": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
  "owner_location_accession_number_current": 415,
  "owner_location_accession_number_contemporaneous": 277
}</pre>
