# Entities API



## GET /entities/:id - Person

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/6398b133-cbcf-4e76-9a44-6a4fc7ba10fc</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;fc00e839368d282b76547e4a20a41193&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 1f8fb9e2-77e2-496c-a3ce-11814bb37eae
X-Runtime: 0.930158
Vary: Origin
Content-Length: 492</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "type": "person",
  "label": "Ned Gerblansky",
  "description": "Dreamcatcher <i>williamsburg tilde gastropub cleanse</i> viral.",
  "alternate_spellings": [
    "Shangela Wadley"
  ],
  "finding_aids": [
    "http://crona-mccullough.name/jesica"
  ],
  "first_name": "Lang",
  "last_name": "Hahn",
  "life_dates": "(1918-1989)",
  "links": [
    "http://brown.io/alyce"
  ],
  "profile": "I'm the dude, so that's what you call me. That or, uh His Dudeness, or uh Duder, or El Duderino, if you're not into the whole brevity thing."
}</pre>
