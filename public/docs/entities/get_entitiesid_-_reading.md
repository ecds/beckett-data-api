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

<pre>GET /entities/e11eb8be-f7bb-47c4-920b-4d3b00fb92a9</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;586851583964741668d8970ce880202e&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: c6ed679d-3097-4b74-8be0-55f40ead18f9
X-Runtime: 1.756602
Vary: Origin
Content-Length: 1866</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "e11eb8be-f7bb-47c4-920b-4d3b00fb92a9",
  "type": "reading",
  "label": "<i>Pale Kings and Princes</i>",
  "short_display": "<section><p><strong>Author</strong> Rickie Borer</p>\n<p><strong>Title</strong> <i>Pale Kings and Princes</i></p>\n<p><strong>Publication</strong> Godwit Press.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Author</th>\n<td>Rickie Borer</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td><i>Pale Kings and Princes</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Publication</th>\n<td>Godwit Press.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>I won't enjoy it.</td>\n</tr>\n</table>",
  "description": "Helvetica <i>cardigan popup xoxo chambray fashion</i> axe.",
  "e_type": "reading",
  "legacy_pk": 95048,
  "authors": [
    "Rickie Borer"
  ],
  "notes": "I won't enjoy it.",
  "publication_information": "Godwit Press.",
  "publication_format": "migas",
  "letters": {
    "mention": "http://example.org/entities/e11eb8be-f7bb-47c4-920b-4d3b00fb92a9/letters?relation=mention",
    "received": "http://example.org/entities/e11eb8be-f7bb-47c4-920b-4d3b00fb92a9/letters?relation=received",
    "sent": "http://example.org/entities/e11eb8be-f7bb-47c4-920b-4d3b00fb92a9/letters?relation=sent",
    "destination": "http://example.org/entities/e11eb8be-f7bb-47c4-920b-4d3b00fb92a9/letters?relation=destination",
    "origin": "http://example.org/entities/e11eb8be-f7bb-47c4-920b-4d3b00fb92a9/letters?relation=origin"
  }
}
~~~

