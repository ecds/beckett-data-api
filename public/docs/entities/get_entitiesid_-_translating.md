# Entities API



## GET /entities/:id - Translating

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/6348286a-2043-4c39-923e-1b61a8da8307</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;8e00a570f04560afd7a6a119570797be&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 4480c279-a5fa-484c-9276-520ac5d33180
X-Runtime: 1.562940
Vary: Origin
Content-Length: 2334</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "6348286a-2043-4c39-923e-1b61a8da8307",
  "type": "translating",
  "label": "<i>To Your Scattered Bodies Go</i>",
  "short_display": "<section><p><strong>Author</strong> Zaphod Beeblebrox, <strong>Original Title</strong> <i>To Your Scattered Bodies Go</i></p>\n<p><strong>Translated into</strong> German by Prostetnic Vogon Jeltz</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Original Title</th>\n<td><i>To Your Scattered Bodies Go</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Author</th>\n<td>Zaphod Beeblebrox</td>\n</tr>\n<tr>\n<th scope=\"row\">Translated into</th>\n<td>German by Prostetnic Vogon Jeltz</td>\n</tr>\n<tr>\n<th scope=\"row\">Translated Title</th>\n<td>Vogon Constructor Fleet.</td>\n</tr>\n<tr>\n<th scope=\"row\">Publication/Production</th>\n<td>I think you ought to know I'm feeling very depressed.</td>\n</tr>\n</table>",
  "description": "Food truck yolo fingerstache drinking skateboard muggle magic pug diy chicharrones.",
  "e_type": "translating",
  "legacy_pk": 26478,
  "authors": [
    "Zaphod Beeblebrox"
  ],
  "notes": "I think you ought to know I'm feeling very depressed.",
  "translated_into": "german",
  "translated_title": "Vogon Constructor Fleet.",
  "translators": [
    "Prostetnic Vogon Jeltz"
  ],
  "letters": {
    "mention": "http://example.org/entities/6348286a-2043-4c39-923e-1b61a8da8307/letters?relation=mention",
    "received": "http://example.org/entities/6348286a-2043-4c39-923e-1b61a8da8307/letters?relation=received",
    "sent": "http://example.org/entities/6348286a-2043-4c39-923e-1b61a8da8307/letters?relation=sent",
    "destination": "http://example.org/entities/6348286a-2043-4c39-923e-1b61a8da8307/letters?relation=destination",
    "origin": "http://example.org/entities/6348286a-2043-4c39-923e-1b61a8da8307/letters?relation=origin"
  }
}
~~~

