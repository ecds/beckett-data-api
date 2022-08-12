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
| display_header | HTML String |  | true |
| label | HTML String |  | false |
| description | HTML String |  | false |
| alternate_names | Array |  | false |
| alternate_spellings | Array |  | false |
| first_name | HTML String |  | false |
| last_name | HTML String |  | false |
| life_dates | HTML String |  | false |
| links | Array |  | false |
| profile | HTML String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/2a4a4da8-ce47-4742-9225-9fc73f8a0e0d</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;12098a2224e80cf975ddbfda01fc530e&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 8c6ef1a9-bd02-40b1-aa81-02238ebce92e
X-Runtime: 1.069236
Vary: Origin
Content-Length: 965</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/2a4a4da8-ce47-4742-9225-9fc73f8a0e0d",
  "type": "person",
  "label": "Windler, Tobias",
  "clean_label": "Windler, Tobias",
  "description": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
  "clean_description": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
  "alternate_names": [
    "Alexis Michelle"
  ],
  "alternate_spellings": [
    "Ra'jah O'Hara"
  ],
  "first_name": "Tobias",
  "last_name": "Windler",
  "life_dates": "1922-1971",
  "links": [
    "http://braun-lebsack.info/wes"
  ],
  "profile": "Earth: Mostly Harmless"
}</pre>
