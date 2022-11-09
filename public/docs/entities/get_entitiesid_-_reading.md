# Entities API



## GET /entities/:id - Reading

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/59833fb4-d94f-4160-b75b-674b04e0e338</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;d87edfd6e94a13e92d41228c09802432&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 15eb0fad-3b5f-46b4-bbf9-9e9cb9741e1b
X-Runtime: 1.552593
Vary: Origin
Content-Length: 2282</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "59833fb4-d94f-4160-b75b-674b04e0e338",
  "type": "reading",
  "label": "This Side of Paradise",
  "short_display": "<section><p><strong>Author</strong> Miss Pasquale Miller</p>\n<p><strong>Title</strong> This Side of Paradise</p>\n<p><strong>Publication</strong> Leaf Books.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Author</th>\n<td>Miss Pasquale Miller</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td>This Side of Paradise</td>\n</tr>\n<tr>\n<th scope=\"row\">Publication</th>\n<td>Leaf Books.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</td>\n</tr>\n</table>",
  "description": "Keytar mumblecore sriracha ugh selfies.",
  "e_type": "reading",
  "legacy_pk": 49570,
  "authors": [
    "Miss Pasquale Miller"
  ],
  "notes": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
  "publication_information": "Leaf Books.",
  "publication_format": "sartorial",
  "letters": {
    "mention": "http://example.org/entities/59833fb4-d94f-4160-b75b-674b04e0e338/letters?relation=mention",
    "recived": "http://example.org/entities/59833fb4-d94f-4160-b75b-674b04e0e338/letters?relation=recived",
    "sent": "http://example.org/entities/59833fb4-d94f-4160-b75b-674b04e0e338/letters?relation=sent",
    "desination": "http://example.org/entities/59833fb4-d94f-4160-b75b-674b04e0e338/letters?relation=destination",
    "origin": "http://example.org/entities/59833fb4-d94f-4160-b75b-674b04e0e338/letters?relation=origin"
  }
}
~~~

