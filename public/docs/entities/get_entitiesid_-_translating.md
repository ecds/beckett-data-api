# Entities API



## GET /entities/:id - Translating

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

<pre>GET /entities/c3ed1615-6161-4daa-9686-565dd006be97</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;62203bea3ff1fff566f9e61b679d1dff&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 848f85e4-7169-42dd-8d23-3b48bea7d9cd
X-Runtime: 0.705927
Vary: Origin
Content-Length: 1824</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/c3ed1615-6161-4daa-9686-565dd006be97",
  "type": "translating",
  "label": "<i>Those Barren Leaves, Thrones, Dominations</i>",
  "short_display": "<section><p><strong>Author</strong> Hactar, <strong>Original Title</strong> <i>Those Barren Leaves, Thrones, Dominations</i></p>\n<p><strong>Translated into</strong> Italian by Genghis Khan</p>\n<p><strong>Translated title</strong> Krikkit One.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Original Title</th>\n<td><i>Those Barren Leaves, Thrones, Dominations</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Author</th>\n<td>Hactar</td>\n</tr>\n<tr>\n<th scope=\"row\">Translated into</th>\n<td>Italian by Genghis Khan</td>\n</tr>\n<tr>\n<th scope=\"row\">Translated Title</th>\n<td>Krikkit One.</td>\n</tr>\n<tr>\n<th scope=\"row\">Publication/Production</th>\n<td>I think you ought to know I'm feeling very depressed.</td>\n</tr>\n</table>",
  "description": "Small batch vice you probably havent heard of them before they sold out meggings schlitz jean shorts drinking asymmetrical.",
  "e_type": "translating",
  "legacy_pk": 51981,
  "authors": [
    "Hactar"
  ],
  "notes": "I think you ought to know I'm feeling very depressed.",
  "translated_into": "italian",
  "translated_title": "Krikkit One.",
  "translators": [
    "Genghis Khan"
  ]
}
~~~

