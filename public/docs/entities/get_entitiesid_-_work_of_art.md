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

<pre>GET /entities/65aedbf8-23b8-4299-a22c-c2a071b44945</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;2e7077a26c1cc5ac160376d9f436e498&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 29d16970-3f54-4d2a-9fc1-56d8e2d2514c
X-Runtime: 0.807785
Vary: Origin
Content-Length: 2847</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/65aedbf8-23b8-4299-a22c-c2a071b44945",
  "type": "work_of_art",
  "label": "It's Gonna Be A Beautiful Night",
  "short_display": "<section><p><strong>Artist</strong> Arthur Philip Deodat</p>\n<p><strong>Title</strong> It's Gonna Be A Beautiful Night</p>\n<p><strong>Description</strong> Chia <i>chicharrones flannel keytar sriracha microdosing readymade meh</i> paleo.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Artist</th>\n<td>Arthur Philip Deodat</td>\n</tr>\n<tr>\n<th scope=\"row\">Artist Alternative Name(s)</th>\n<td>Jinkx Monsoon</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td>It's Gonna Be A Beautiful Night</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternative Title(s)</th>\n<td>Ivy Winters</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Chia <i>chicharrones flannel keytar sriracha microdosing readymade meh</i> paleo.</td>\n</tr>\n<tr>\n<th scope=\"row\">Ownership and Location</th>\n<td>Tanngrisnir</td>\n</tr>\n<tr>\n<th scope=\"row\">Current Ownership and Location</th>\n<td>Bistromath</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://oconner-collins.net/ronald\" target=\"_blank\" rel=\"noopener\">http://oconner-collins.net/ronald<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Chia <i>chicharrones flannel keytar sriracha microdosing readymade meh</i> paleo.",
  "e_type": "work_of_art",
  "legacy_pk": 70207,
  "alternate_spellings": null,
  "artist": "Arthur Philip Deodat",
  "artist_alternate_spellings": [
    "Jinkx Monsoon"
  ],
  "links": [
    "http://oconner-collins.net/ronald"
  ],
  "notes": "There's only one life-form as intelligent as me within thirty parsecs of here and that's me.",
  "owner_location": "Tanngrisnir",
  "owner_location_current": "Bistromath"
}
~~~

