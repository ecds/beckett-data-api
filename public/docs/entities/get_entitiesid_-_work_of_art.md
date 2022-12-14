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

<pre>GET /entities/9042289b-d343-4767-a5a5-b7f525c1c1f8</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;6f08d81ec879955ff26bc3e835b66796&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 623df551-2e69-4c41-a1cb-e6b857abb757
X-Runtime: 1.519603
Vary: Origin
Content-Length: 3325</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "9042289b-d343-4767-a5a5-b7f525c1c1f8",
  "type": "work_of_art",
  "label": "<i>I Wanna Be Your Lover</i>",
  "short_display": "<section><p><strong>Artist</strong> Elvis</p>\n<p><strong>Title</strong> <i>I Wanna Be Your Lover</i></p>\n<p><strong>Description</strong> Drinking letterpress twee postironic cleanse fashion axe pitchfork distillery.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Artist</th>\n<td>Elvis</td>\n</tr>\n<tr>\n<th scope=\"row\">Artist Alternative Name(s)</th>\n<td>Alyssa Edwards</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td><i>I Wanna Be Your Lover</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Alternative Title(s)</th>\n<td>Valentina</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Drinking letterpress twee postironic cleanse fashion axe pitchfork distillery.</td>\n</tr>\n<tr>\n<th scope=\"row\">Ownership and Location</th>\n<td>Golgafrinchan Ark Fleet Ship B</td>\n</tr>\n<tr>\n<th scope=\"row\">Current Ownership and Location</th>\n<td>Bistromath</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://watsica.org/shawn_yost\" target=\"_blank\" rel=\"noopener\">http://watsica.org/shawn_yost<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Drinking letterpress twee postironic cleanse fashion axe pitchfork distillery.",
  "e_type": "work_of_art",
  "legacy_pk": 29515,
  "alternate_spellings": null,
  "artist": "Elvis",
  "artist_alternate_spellings": [
    "Alyssa Edwards"
  ],
  "links": [
    "http://watsica.org/shawn_yost"
  ],
  "notes": "There's only one life-form as intelligent as me within thirty parsecs of here and that's me.",
  "owner_location": "Golgafrinchan Ark Fleet Ship B",
  "owner_location_current": "Bistromath",
  "letters": {
    "mention": "http://example.org/entities/9042289b-d343-4767-a5a5-b7f525c1c1f8/letters?relation=mention",
    "received": "http://example.org/entities/9042289b-d343-4767-a5a5-b7f525c1c1f8/letters?relation=received",
    "sent": "http://example.org/entities/9042289b-d343-4767-a5a5-b7f525c1c1f8/letters?relation=sent",
    "destination": "http://example.org/entities/9042289b-d343-4767-a5a5-b7f525c1c1f8/letters?relation=destination",
    "origin": "http://example.org/entities/9042289b-d343-4767-a5a5-b7f525c1c1f8/letters?relation=origin"
  }
}
~~~

