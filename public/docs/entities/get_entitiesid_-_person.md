# Entities API



## GET /entities/:id - Person

### GET /entities/:id

### Response Fields

| Name | Default | Description | Not Null |
|------|---------|-------------|----------|
| label | HTML String |  | true |
| short_display | HTML String |  | true |
| full_display | HTML String |  | true |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/2305735f-9199-4536-a4bd-a953a0ad656b</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;ac80d23a479e09e12cde4c603ede9504&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 4daa1d44-da2b-4f87-8f52-ad0f57e25073
X-Runtime: 0.810559
Vary: Origin
Content-Length: 2038</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/2305735f-9199-4536-a4bd-a953a0ad656b",
  "type": "person",
  "label": "Kozey, Yelena",
  "short_display": "<section><p><strong>Yelena Kozey, 1927-1991</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td>Yelena Kozey</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternative Name(s)</th>\n<td>Eureka</td>\n</tr>\n<tr>\n<th scope=\"row\">Life Dates</th>\n<td>1927-1991</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Life? <i>Don't talk to me about</i> life.</td>\n</tr>\n<tr>\n<th scope=\"row\">Profile</th>\n<td>It’s only half completed, I’m afraid – we haven’t even finished burying the artificial dinosaur skeletons in the crust yet.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://strosin-simonis.co/roman_lehner\" target=\"_blank\" rel=\"noopener\">http://strosin-simonis.co/roman_lehner<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Life? <i>Don't talk to me about</i> life.",
  "e_type": "person",
  "legacy_pk": 95063,
  "alternate_names": [
    "Eureka"
  ],
  "alternate_spellings": [
    "Roxxxy Andrews"
  ],
  "first_name": "Yelena",
  "last_name": "Kozey",
  "life_dates": "1927-1991",
  "links": [
    "http://strosin-simonis.co/roman_lehner"
  ],
  "profile": "It’s only half completed, I’m afraid – we haven’t even finished burying the artificial dinosaur skeletons in the crust yet."
}</pre>
