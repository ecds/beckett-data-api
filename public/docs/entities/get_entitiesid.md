# Entities API



## GET /entities/:id

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/32f031f4-1ed5-4273-93f3-869a7bea0cde</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;832eef866475dacffffd6eff21e42929&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 5c95e2d2-98ff-4e46-bd6f-abc7c721d51b
X-Runtime: 1.116702
Vary: Origin
Content-Length: 596</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "type": "writing",
  "label": "This Side of Paradise",
  "clean_label": "This Side of Paradise",
  "description": "Locavore ugh tilde quinoa loko brooklyn.",
  "clean_description": "Locavore ugh tilde quinoa loko brooklyn.",
  "date": "1949-04-29",
  "notes": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
  "porposal": null,
  "beckett_digital_manuscript_project": "http://mcclure.io/alyssa"
}</pre>
