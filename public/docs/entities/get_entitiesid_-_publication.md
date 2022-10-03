# Entities API



## GET /entities/:id - Publication

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

<pre>GET /entities/3e835e46-b7fa-4d3e-9ff7-231d8ebd09ee</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;e8b85f36588d98ee4faa2b6b10dc9d19&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: f04ab701-2007-4c55-b026-ad6b6d42717d
X-Runtime: 0.953488
Vary: Origin
Content-Length: 1891</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/3e835e46-b7fa-4d3e-9ff7-231d8ebd09ee",
  "type": "publication",
  "label": "Pen and Sword Books",
  "short_display": "<section><p><strong>Author</strong> Brandt</p>\n<p><strong>Title</strong> Pen and Sword Books</p>\n<p><strong>Translator</strong> Loonquawl</p>\n<p><strong>Publication</strong> Salvia yolo sartorial cleanse authentic echo tousled occupy.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Author</th>\n<td>Brandt</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td>Pen and Sword Books</td>\n</tr>\n<tr>\n<th scope=\"row\">Translator</th>\n<td>Loonquawl</td>\n</tr>\n<tr>\n<th scope=\"row\">Publication</th>\n<td>Salvia yolo sartorial cleanse authentic echo tousled occupy.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</td>\n</tr>\n</table>",
  "description": "Singleorigin <i>coffee mixtape biodiesel offal you probably havent heard of them vhs quinoa 90s</i> park.",
  "e_type": "publication",
  "legacy_pk": 95872,
  "authors": [
    "Brandt"
  ],
  "notes": "Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.",
  "publication_information": "Salvia yolo sartorial cleanse authentic echo tousled occupy.",
  "translators": [
    "Loonquawl"
  ]
}
~~~

