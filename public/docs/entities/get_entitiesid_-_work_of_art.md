# Entities API



## GET /entities/:id - Work Of Art

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

<pre>GET /entities/455d30e1-5072-40a0-9923-358af3f8d1ad</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;8eba566cbcad772e49d01a97cd4df463&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: eadaf7f2-628a-49b1-ae34-abca833e8c65
X-Runtime: 0.774412
Vary: Origin
Content-Length: 2691</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/455d30e1-5072-40a0-9923-358af3f8d1ad",
  "type": "work_of_art",
  "label": "<i>Automatic</i>",
  "short_display": "<section><p><strong>Artist</strong> Fenchurch</p>\n<p><strong>Title</strong> <i>Automatic</i></p>\n<p><strong>Description</strong> Godard yuccie tattooed brooklyn biodiesel park listicle organic 1.</p>\n<p><strong>Owner/location</strong> RW6</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Artist</th>\n<td>Fenchurch</td>\n</tr>\n<tr>\n<th scope=\"row\">Artist Alternative Name(s)</th>\n<td>Sasha Velour</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td><i>Automatic</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Alternative Title(s)</th>\n<td>Joslyn Fox</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Godard yuccie tattooed brooklyn biodiesel park listicle organic 1.</td>\n</tr>\n<tr>\n<th scope=\"row\">Ownership and Location</th>\n<td>RW6</td>\n</tr>\n<tr>\n<th scope=\"row\">Current Ownership and Location</th>\n<td>Bistromath</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>And then of course I've got this terrible pain in all the diodes down my left side.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://pouros-bogan.net/janette.kulas\" target=\"_blank\" rel=\"noopener\">http://pouros-bogan.net/janette.kulas<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Godard yuccie tattooed brooklyn biodiesel park listicle organic 1.",
  "e_type": "work_of_art",
  "legacy_pk": 43769,
  "alternate_spellings": null,
  "artist": "Fenchurch",
  "artist_alternate_spellings": [
    "Sasha Velour"
  ],
  "links": [
    "http://pouros-bogan.net/janette.kulas"
  ],
  "notes": "And then of course I've got this terrible pain in all the diodes down my left side.",
  "owner_location": "RW6",
  "owner_location_current": "Bistromath"
}</pre>
