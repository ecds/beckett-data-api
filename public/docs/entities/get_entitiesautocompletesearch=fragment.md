# Entities API



## GET /entities/autocomplete?search=:fragment

### GET /entities/autocomplete

Returns a list of no more than ten entity lables that start with the search parameter.
                    a type parameter can also be passed to limit the results by types. Results might include HTML.

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| search | Text to search. | false | *
| type | Limit responses by single type. Options are attendance, music, organization, person, place, production, public_event, publication, reading, translating, work_of_art, writing. | false | null

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/autocomplete?search=of</pre>

#### Query Parameters

<pre>search: of</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;4f53cda18c2baa0c0354bb5f9a3ecbe5&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: e1f0106a-c08a-41dd-8255-2cea6af641cd
X-Runtime: 12.701475
Vary: Origin
Content-Length: 2</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>[

]</pre>
