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

<pre>GET /entities/40ebd860-64f8-4ad3-bd30-473c213c6904</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;dfdae5fabc957577c48df80893b2fa33&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 333e1d85-6e66-4e2b-92fa-f5939631794d
X-Runtime: 1.063119
Vary: Origin
Content-Length: 1344</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/40ebd860-64f8-4ad3-bd30-473c213c6904",
  "type": "public_event",
  "label": "<i>Discovery</i>",
  "clean_label": "Discovery",
  "description": "Baby, baby when I look at you, I get a warm feeling inside.",
  "clean_description": "Baby, baby when I look at you, I get a warm feeling inside.",
  "short_display": "<section><p><strong><i>Discovery</i></strong></p>\n<p><strong>1943-09-18.</strong></p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Baby, baby when I look at you, I get a warm feeling inside.</td>\n</tr>\n<tr>\n<th scope=\"row\">Date</th>\n<td>1943-09-18.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://zemlak.co/gerard.muller\" target=\"_blank\" rel=\"noopener\">http://zemlak.co/gerard.muller<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "e_type": "public_event",
  "legacy_pk": 60371,
  "date_str": "1943-09-18."
}</pre>
