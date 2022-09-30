# Entities API



## GET /entities/:id - Reading

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

<pre>GET /entities/fd087b9c-3914-4b81-9264-ed50ee10601f</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;2a79d21605d937b55f598a42d7853d47&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: b1f03d71-2ab7-4df3-99a6-6b1b0132863c
X-Runtime: 0.865513
Vary: Origin
Content-Length: 1463</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/fd087b9c-3914-4b81-9264-ed50ee10601f",
  "type": "reading",
  "label": "The Other Side of Silence",
  "short_display": "<section><p><strong>Author</strong> Chong Sipes Sr.</p>\n<p><strong>Title</strong> The Other Side of Silence</p>\n<p><strong>Publication</strong> Breslov Research Institute.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Author</th>\n<td>Chong Sipes Sr.</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td>The Other Side of Silence</td>\n</tr>\n<tr>\n<th scope=\"row\">Publication</th>\n<td>Breslov Research Institute.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>And then of course I've got this terrible pain in all the diodes down my left side.</td>\n</tr>\n</table>",
  "description": "Locavore wes anderson banjo hashtag churchkey shoreditch.",
  "e_type": "reading",
  "legacy_pk": 26283,
  "authors": [
    "Chong Sipes Sr."
  ],
  "notes": "And then of course I've got this terrible pain in all the diodes down my left side.",
  "publication_information": "Breslov Research Institute.",
  "publication_format": "cardigan"
}
~~~

