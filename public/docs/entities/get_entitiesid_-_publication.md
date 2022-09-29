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

<pre>GET /entities/2a8fa183-1919-438e-8b7a-6da0cd0ddfaa</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;a42c165f2241a107cf0319d596a56d2f&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: f2473875-3553-4673-ba13-5ae6a0e98d53
X-Runtime: 0.778531
Vary: Origin
Content-Length: 1744</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/2a8fa183-1919-438e-8b7a-6da0cd0ddfaa",
  "type": "publication",
  "label": "George Routledge & Sons",
  "short_display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> George Routledge &amp; Sons</p>\n<p><strong>Translator</strong> Galaxia Woonbeam</p>\n<p><strong>Publication</strong> Chicharrones synth small batch letterpress goth vice.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Author</th>\n<td>Jackie Treehorn</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td>George Routledge &amp; Sons</td>\n</tr>\n<tr>\n<th scope=\"row\">Translator</th>\n<td>Galaxia Woonbeam</td>\n</tr>\n<tr>\n<th scope=\"row\">Publication</th>\n<td>Chicharrones synth small batch letterpress goth vice.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>I think you ought to know I'm feeling very depressed.</td>\n</tr>\n</table>",
  "description": "Pbrb <i>carry sriracha bespoke</i> portland.",
  "e_type": "publication",
  "legacy_pk": 14534,
  "authors": [
    "Jackie Treehorn"
  ],
  "notes": "I think you ought to know I'm feeling very depressed.",
  "publication_information": "Chicharrones synth small batch letterpress goth vice.",
  "translators": [
    "Galaxia Woonbeam"
  ]
}</pre>
