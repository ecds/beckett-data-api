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

<pre>GET /entities/1f0d5aaa-7296-4517-bbf5-24661af392c4</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;6a75e57540961403e71b8930512f12cf&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 6a497bd1-4f54-4c04-ba11-b1d053a9c861
X-Runtime: 0.775458
Vary: Origin
Content-Length: 2662</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/1f0d5aaa-7296-4517-bbf5-24661af392c4",
  "type": "work_of_art",
  "label": "<i>Guitar</i>",
  "short_display": "<section><p><strong>Artist</strong> Lunkwill and Fook</p>\n<p><strong>Title</strong> <i>Guitar</i></p>\n<p><strong>Description</strong> Tilde meh intelligentsia celiac.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Artist</th>\n<td>Lunkwill and Fook</td>\n</tr>\n<tr>\n<th scope=\"row\">Artist Alternative Name(s)</th>\n<td>Morgan McMichaels</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td><i>Guitar</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Alternative Title(s)</th>\n<td>Alexis Michelle</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Tilde meh intelligentsia celiac.</td>\n</tr>\n<tr>\n<th scope=\"row\">Ownership and Location</th>\n<td>Bistromath</td>\n</tr>\n<tr>\n<th scope=\"row\">Current Ownership and Location</th>\n<td>Bistromath</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://nikolaus-wiza.co/vicente_treutel\" target=\"_blank\" rel=\"noopener\">http://nikolaus-wiza.co/vicente_treutel<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Tilde meh intelligentsia celiac.",
  "e_type": "work_of_art",
  "legacy_pk": 25947,
  "alternate_spellings": null,
  "artist": "Lunkwill and Fook",
  "artist_alternate_spellings": [
    "Morgan McMichaels"
  ],
  "links": [
    "http://nikolaus-wiza.co/vicente_treutel"
  ],
  "notes": "I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.",
  "owner_location": "Bistromath",
  "owner_location_current": "Bistromath"
}
~~~

