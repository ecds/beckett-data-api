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
| short_display | HTML String |  | true |
| author | String |  | false |
| comments | String |  | false |
| translated_into | String |  | false |
| translated_title | String |  | false |
| translator | String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/99b816ef-6d1b-4c40-93f4-0dd7f3f0d5cf</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;22fd010e5388290f746c45f310d4669a&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: dce2e7f5-fc84-4852-9371-3cdd69781177
X-Runtime: 1.254147
Vary: Origin
Content-Length: 472</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "type": "translating",
  "label": "The Heart Is Deceitful Above All Things",
  "clean_label": "The Heart Is Deceitful Above All Things",
  "description": "Forage <i>fingerstache lo-fi direct trade ramps</i> irony.",
  "clean_description": "Forage fingerstache lo-fi direct trade ramps irony.",
  "author": "Gag Halfrunt",
  "comments": "I think you ought to know I'm feeling very depressed.",
  "translated_into": "Frogstar World A",
  "translated_title": "RW6",
  "translator": "Roosta"
}</pre>
