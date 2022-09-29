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

<pre>GET /entities/2a63ca0e-0cd0-4c43-97f0-365d61977ed2</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;69f2a886fcfae30510dcfcbe14f79be0&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: a0f1254b-848d-4e02-9ed2-d3e9f3818496
X-Runtime: 0.683921
Vary: Origin
Content-Length: 2293</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/2a63ca0e-0cd0-4c43-97f0-365d61977ed2",
  "type": "translating",
  "label": "<i>I Sing the Body Electric</i>",
  "short_display": "<section><p><strong>Author</strong> Pizpot Gargravarr, <strong>Original Title</strong> <i>I Sing the Body Electric</i></p>\n<p><strong>Translated into</strong> Marathi by Paula Nancy Millstone Jennings</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Original Title</th>\n<td><i>I Sing the Body Electric</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Author</th>\n<td>Pizpot Gargravarr</td>\n</tr>\n<tr>\n<th scope=\"row\">Translated into</th>\n<td>Marathi by Paula Nancy Millstone Jennings</td>\n</tr>\n<tr>\n<th scope=\"row\">Translated Title</th>\n<td>Starship Titanic.</td>\n</tr>\n<tr>\n<th scope=\"row\">Publication/Production</th>\n<td>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</td>\n</tr>\n</table>",
  "description": "Flannel <i>bespoke normcore typewriter schlitz postironic</i> shoreditch.",
  "e_type": "translating",
  "legacy_pk": 29721,
  "authors": [
    "Pizpot Gargravarr"
  ],
  "notes": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
  "translated_into": "marathi",
  "translated_title": "Starship Titanic.",
  "translators": [
    "Paula Nancy Millstone Jennings"
  ]
}</pre>
