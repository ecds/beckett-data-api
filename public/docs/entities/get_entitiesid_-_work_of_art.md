# Entities API



## GET /entities/:id - Work Of Art

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/68f43ac6-0302-4731-8eb2-c64f504cd0b4</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;c8adb359080b4303da6b42f29f692a0f&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 6aa65e41-ddc7-4482-a53d-2aa59eef422a
X-Runtime: 1.724448
Vary: Origin
Content-Length: 3678</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "68f43ac6-0302-4731-8eb2-c64f504cd0b4",
  "type": "work_of_art",
  "label": "<i>Guitar</i>",
  "short_display": "<section><p><strong>Artist</strong> Hactar</p>\n<p><strong>Title</strong> <i>Guitar</i></p>\n<p><strong>Description</strong> Banh <i>mi thundercats shabby chic kogi knausgaard</i> listicle.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Artist</th>\n<td>Hactar</td>\n</tr>\n<tr>\n<th scope=\"row\">Artist Alternative Name(s)</th>\n<td>Miss Fame</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td><i>Guitar</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Alternative Title(s)</th>\n<td>Phi Phi O'Hara</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Banh <i>mi thundercats shabby chic kogi knausgaard</i> listicle.</td>\n</tr>\n<tr>\n<th scope=\"row\">Ownership and Location</th>\n<td>Golgafrinchan Ark Fleet Ship B</td>\n</tr>\n<tr>\n<th scope=\"row\">Current Ownership and Location</th>\n<td>Bistromath</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://batz-smith.com/edwin.nienow\" target=\"_blank\" rel=\"noopener\">http://batz-smith.com/edwin.nienow<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Banh <i>mi thundercats shabby chic kogi knausgaard</i> listicle.",
  "e_type": "work_of_art",
  "legacy_pk": 69693,
  "alternate_spellings": null,
  "artist": "Hactar",
  "artist_alternate_spellings": [
    "Miss Fame"
  ],
  "links": [
    "http://batz-smith.com/edwin.nienow"
  ],
  "notes": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
  "owner_location": "Golgafrinchan Ark Fleet Ship B",
  "owner_location_current": "Bistromath",
  "letters": {
    "mention": "http://example.org/entities/68f43ac6-0302-4731-8eb2-c64f504cd0b4/letters?relation=mention",
    "recived": "http://example.org/entities/68f43ac6-0302-4731-8eb2-c64f504cd0b4/letters?relation=recived",
    "sent": "http://example.org/entities/68f43ac6-0302-4731-8eb2-c64f504cd0b4/letters?relation=sent",
    "desination": "http://example.org/entities/68f43ac6-0302-4731-8eb2-c64f504cd0b4/letters?relation=destination",
    "origin": "http://example.org/entities/68f43ac6-0302-4731-8eb2-c64f504cd0b4/letters?relation=origin"
  }
}
~~~

