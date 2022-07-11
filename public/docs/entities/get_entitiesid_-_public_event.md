# Entities API



## GET /entities/:id - Public Event

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/0668c195-74ae-4413-baba-16bc09d9c1f6</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;912dec4878b99a4d5faba37562e83331&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 66502cd7-0b4e-41cd-ae0b-7abd3ae31b46
X-Runtime: 1.087178
Vary: Origin
Content-Length: 153</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "type": "public_event",
  "label": "<i>Apollo</i>",
  "description": "Kombucha helvetica waistcoat fanny pack keffiyeh.",
  "date": "1933-01-08"
}</pre>
