# Entities API



## GET /entities/:id - Music

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/f04f5939-6c01-494a-95d3-6229ecde48da</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;fec453eb2f939cd17945385300df1c79&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 31ad7a00-bc4f-44e0-9351-df17050493bd
X-Runtime: 1.553493
Vary: Origin
Content-Length: 2654</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "f04f5939-6c01-494a-95d3-6229ecde48da",
  "type": "music",
  "label": "The Most Beautiful Girl In The World",
  "short_display": "<section><p><strong>Composer</strong> Fenchurch</p>\n<p><strong>Title</strong> The Most Beautiful Girl In The World</p>\n<p><strong>Description</strong> Art party freegan before they sold out xoxo whatever ennui offal.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Composer</th>\n<td>Fenchurch</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td>The Most Beautiful Girl In The World</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternate Title(s)</th>\n<td>Trinity Taylor</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Art party freegan before they sold out xoxo whatever ennui offal.</td>\n</tr>\n<tr>\n<th scope=\"row\">Performed by</th>\n<td>The Dude</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>If I was your girlfriend, would you let me dress you?</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://hirthe.io/courtney\" target=\"_blank\" rel=\"noopener\">http://hirthe.io/courtney<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Art party freegan before they sold out xoxo whatever ennui offal.",
  "e_type": "music",
  "legacy_pk": 73481,
  "alternate_names": [
    "Trinity Taylor"
  ],
  "alternate_spellings": null,
  "composer": "Fenchurch",
  "links": [
    "http://hirthe.io/courtney"
  ],
  "notes": "If I was your girlfriend, would you let me dress you?",
  "performed_by": [
    "The Dude"
  ],
  "letters": {
    "mention": "http://example.org/entities/f04f5939-6c01-494a-95d3-6229ecde48da/letters?relation=mention",
    "recived": "http://example.org/entities/f04f5939-6c01-494a-95d3-6229ecde48da/letters?relation=recived",
    "sent": "http://example.org/entities/f04f5939-6c01-494a-95d3-6229ecde48da/letters?relation=sent",
    "desination": "http://example.org/entities/f04f5939-6c01-494a-95d3-6229ecde48da/letters?relation=destination",
    "origin": "http://example.org/entities/f04f5939-6c01-494a-95d3-6229ecde48da/letters?relation=origin"
  }
}
~~~

