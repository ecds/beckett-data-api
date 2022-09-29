# Entities API



## GET /entities/:id - Place

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

<pre>GET /entities/b1e87be5-647c-4f59-a28d-67e977e09259</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;6c48a7d17945c28998180565a6753f7d&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 3ee21789-7881-4522-9338-e3dc249f54da
X-Runtime: 0.781529
Vary: Origin
Content-Length: 1200</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/b1e87be5-647c-4f59-a28d-67e977e09259",
  "type": "place",
  "label": "Cathedral of Chalesm",
  "short_display": "<section><p><strong>Cathedral of Chalesm</strong></p>\n<p>Meh vegan food truck kogi migas.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td>Cathedral of Chalesm</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Meh vegan food truck kogi migas.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://rogahn-heaney.net/alfonzo\" target=\"_blank\" rel=\"noopener\">http://rogahn-heaney.net/alfonzo<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Meh vegan food truck kogi migas.",
  "e_type": "place",
  "legacy_pk": 21879,
  "alternate_spellings": [
    "Vanessa Vanjie Mateo"
  ],
  "links": [
    "http://rogahn-heaney.net/alfonzo"
  ]
}</pre>
