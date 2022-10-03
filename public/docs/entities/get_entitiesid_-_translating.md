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

<pre>GET /entities/e0fb1d10-b9ed-402f-94cb-45c29a6a5603</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;42b5afb229784569ae99be5b7bb14868&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: c078a5a9-f64d-49c2-9353-8b93c682975c
X-Runtime: 0.869816
Vary: Origin
Content-Length: 1878</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/e0fb1d10-b9ed-402f-94cb-45c29a6a5603",
  "type": "translating",
  "label": "<i>The Torment of Others</i>",
  "short_display": "<section><p><strong>Author</strong> Fenchurch, <strong>Original Title</strong> <i>The Torment of Others</i></p>\n<p><strong>Translated into</strong> Serbo Croatian by Lunkwill and Fook</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Original Title</th>\n<td><i>The Torment of Others</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Author</th>\n<td>Fenchurch</td>\n</tr>\n<tr>\n<th scope=\"row\">Translated into</th>\n<td>Serbo Croatian by Lunkwill and Fook</td>\n</tr>\n<tr>\n<th scope=\"row\">Translated Title</th>\n<td>Heart of Gold.</td>\n</tr>\n<tr>\n<th scope=\"row\">Publication/Production</th>\n<td>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</td>\n</tr>\n</table>",
  "description": "Ennui semiotics cliche intelligentsia.",
  "e_type": "translating",
  "legacy_pk": 69817,
  "authors": [
    "Fenchurch"
  ],
  "notes": "Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.",
  "translated_into": "serbo_croatian",
  "translated_title": "Heart of Gold.",
  "translators": [
    "Lunkwill and Fook"
  ]
}
~~~

