# Entities API



## GET /entities/:id - Attendance

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
| attended_with | Array |  | true |
| director | String |  | false |
| event_type | String |  | false |
| performed_by | Array |  | true |
| place_date | String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/33550ba2-23f6-4dd7-a803-d1fca1af8cff</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;766bd315c356282b7550b9463ac65021&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: c2a9b370-885c-488f-b59f-c2a9453f9886
X-Runtime: 1.412760
Vary: Origin
Content-Length: 467</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "type": "attendance",
  "label": "12 Years a Slave",
  "clean_label": "12 Years a Slave",
  "description": "Paleo keytar kale chips meh 90's five dollar toast typewriter pour-over.",
  "clean_description": "Paleo keytar kale chips meh 90's five dollar toast typewriter pour-over.",
  "alternate_spellings": [
    "Yvie Oddly"
  ],
  "attended_with": [
    "Maude Lebowski",
    "Dan Streetmentioner"
  ],
  "director": "Trillian",
  "event_type": "kogi",
  "performed_by": [
    "Prak"
  ],
  "place_date": "Port Charlott, 26 May 1923"
}</pre>
