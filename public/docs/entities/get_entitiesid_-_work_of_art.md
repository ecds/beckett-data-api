# Entities API



## GET /entities/:id - Work Of Art

### GET /entities/:id

### Response Fields

| Name | Default | Description | Not Null |
|------|---------|-------------|----------|
| label | HTML String |  | true |
| clean_label | String |  | true |
| description | HTML String |  | true |
| clean_description | String |  | true |
| display_header | HTML String |  | true |
| label | HTML String |  | false |
| description | HTML String |  | false |
| e_type | HTML String |  | false |
| legacy_pk | HTML String |  | false |
| alternate_spellings | Array |  | false |
| artist | HTML String |  | false |
| artist_alternate_spellings | Array |  | false |
| links | Array |  | false |
| notes | HTML String |  | false |
| owner_location | HTML String |  | false |
| owner_location_current | HTML String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/877c43ee-d7a1-4cfc-9885-364f25df3559</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;1f330b064b80290897c8884dffda9f54&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 7e66b842-eedc-4e13-bea6-de6089001d78
X-Runtime: 0.962935
Vary: Origin
Content-Length: 2757</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/877c43ee-d7a1-4cfc-9885-364f25df3559",
  "type": "work_of_art",
  "label": "My Name Is Prince",
  "clean_label": "My Name Is Prince",
  "description": "Fashion axe actually occupy tacos 90s vinegar thundercats kitsch.",
  "clean_description": "Fashion axe actually occupy tacos 90s vinegar thundercats kitsch.",
  "short_display": "<section><p><strong>Artist</strong> Galaxia Woonbeam</p>\n<p><strong>Title</strong> My Name Is Prince</p>\n<p><strong>Description</strong> Fashion axe actually occupy tacos 90s vinegar thundercats kitsch.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Artist</th>\n<td>Galaxia Woonbeam</td>\n</tr>\n<tr>\n<th scope=\"row\">Artist Alternative Name(s)</th>\n<td>Pandora Boxx</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td>My Name Is Prince</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternative Title(s)</th>\n<td>Aja</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Fashion axe actually occupy tacos 90s vinegar thundercats kitsch.</td>\n</tr>\n<tr>\n<th scope=\"row\">Ownership and Location</th>\n<td>Bistromath</td>\n</tr>\n<tr>\n<th scope=\"row\">Current Ownership and Location</th>\n<td>Krikkit One</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>And then of course I've got this terrible pain in all the diodes down my left side.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://stanton.io/roderick\" target=\"_blank\" rel=\"noopener\">http://stanton.io/roderick<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "e_type": "work_of_art",
  "legacy_pk": 55026,
  "alternate_spellings": null,
  "artist": "Galaxia Woonbeam",
  "artist_alternate_spellings": [
    "Pandora Boxx"
  ],
  "links": [
    "http://stanton.io/roderick"
  ],
  "notes": "And then of course I've got this terrible pain in all the diodes down my left side.",
  "owner_location": "Bistromath",
  "owner_location_current": "Krikkit One"
}</pre>
