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

<pre>GET /entities/c3565700-7fcb-4a5b-94e0-017d9504a478</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;aa39721eb09d53e1ba857a183146a05a&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 57f7dd4d-9e5c-443a-bb3e-ef33cc78b8fc
X-Runtime: 1.679751
Vary: Origin
Content-Length: 2046</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "c3565700-7fcb-4a5b-94e0-017d9504a478",
  "type": "translating",
  "label": "Vile Bodies",
  "short_display": "<section><p><strong>Author</strong> Genghis Khan, <strong>Original Title</strong> Vile Bodies</p>\n<p><strong>Translated into</strong> Hebrew by Hactar</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Original Title</th>\n<td>Vile Bodies</td>\n</tr>\n<tr>\n<th scope=\"row\">Author</th>\n<td>Genghis Khan</td>\n</tr>\n<tr>\n<th scope=\"row\">Translated into</th>\n<td>Hebrew by Hactar</td>\n</tr>\n<tr>\n<th scope=\"row\">Translated Title</th>\n<td>Billion Year Bunker.</td>\n</tr>\n<tr>\n<th scope=\"row\">Publication/Production</th>\n<td>I won't enjoy it.</td>\n</tr>\n</table>",
  "description": "Pug <i>schlitz typewriter ethical pickled</i> disrupt.",
  "e_type": "translating",
  "legacy_pk": 35443,
  "authors": [
    "Genghis Khan"
  ],
  "notes": "I won't enjoy it.",
  "translated_into": "hebrew",
  "translated_title": "Billion Year Bunker.",
  "translators": [
    "Hactar"
  ],
  "letters": {
    "mention": "http://example.org/entities/c3565700-7fcb-4a5b-94e0-017d9504a478/letters?relation=mention",
    "recived": "http://example.org/entities/c3565700-7fcb-4a5b-94e0-017d9504a478/letters?relation=recived",
    "sent": "http://example.org/entities/c3565700-7fcb-4a5b-94e0-017d9504a478/letters?relation=sent",
    "desination": "http://example.org/entities/c3565700-7fcb-4a5b-94e0-017d9504a478/letters?relation=destination",
    "origin": "http://example.org/entities/c3565700-7fcb-4a5b-94e0-017d9504a478/letters?relation=origin"
  }
}
~~~

