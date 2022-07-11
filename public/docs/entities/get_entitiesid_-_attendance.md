# Entities API



## GET /entities/:id - Attendance

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/ff7c0cd2-a9c0-4323-acd1-263398e60dee</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;4c4f0bba0214da714ae65d5819397981&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 6dca7eab-d1f6-4f5a-b5e3-855f314a5067
X-Runtime: 0.966539
Vary: Origin
Content-Length: 315</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "type": "attendance",
  "label": "Fight Club",
  "description": "Actually chartreuse viral truffaut.",
  "alternate_spellings": [
    "Detox"
  ],
  "attended_with": [
    "Maude Lebowski",
    "Tricia McMillan"
  ],
  "director": "Random Dent",
  "event_type": "pabst",
  "performed_by": [
    "Paula Nancy Millstone Jennings"
  ],
  "place_date": "Leoburgh, 10 August 1926"
}</pre>
