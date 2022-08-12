# Entities API



## GET /entities/:id - Translating

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
| author | HTML String |  | false |
| notes | HTML String |  | false |
| translated_into | HTML String |  | false |
| translated_title | HTML String |  | false |
| translator | HTML String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/efe60f5d-bd37-4489-85a5-6a61b65ef1fc</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;d46e73439193e74199cd733a84e207a4&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 46c5766e-d512-4b39-9228-fbd18e00e0f4
X-Runtime: 1.066992
Vary: Origin
Content-Length: 549</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/efe60f5d-bd37-4489-85a5-6a61b65ef1fc",
  "type": "translating",
  "label": "I Sing the Body Electric",
  "clean_label": "I Sing the Body Electric",
  "description": "Hella semiotics photo booth scenester helvetica mixtape.",
  "clean_description": "Hella semiotics photo booth scenester helvetica mixtape.",
  "author": "Pizpot Gargravarr",
  "notes": "And then of course I've got this terrible pain in all the diodes down my left side.",
  "translated_into": "swedish",
  "translated_title": "Starship Titanic",
  "translator": "Grunthos the Flatulent"
}</pre>
