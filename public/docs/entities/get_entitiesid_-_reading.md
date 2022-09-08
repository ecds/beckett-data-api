# Entities API



## GET /entities/:id - Reading

### GET /entities/:id

### Response Fields

| Name | Default | Description | Not Null |
|------|---------|-------------|----------|
| label | HTML String |  | true |
| clean_label | String |  | true |
| description | HTML String |  | true |
| clean_description | String |  | true |
| display_header | HTML String |  | true |
| label | HTML String |  | false |
| description | HTML String |  | false |
| e_type | HTML String |  | false |
| legacy_pk | HTML String |  | false |
| authors | Array |  | false |
| notes | HTML String |  | false |
| publication_information | HTML String |  | false |
| publication_format | HTML String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/63bdcb25-8ace-43a9-b324-99737fd8fdce</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;101509d048ee2dc1a9cdc6752104af19&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 33f01602-2fce-4cd8-8ec5-bf6eab0a3cab
X-Runtime: 0.933312
Vary: Origin
Content-Length: 1396</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/63bdcb25-8ace-43a9-b324-99737fd8fdce",
  "type": "reading",
  "label": "The Golden Apples of the Sun",
  "clean_label": "The Golden Apples of the Sun",
  "description": "Whatever cornhole pug ramps.",
  "clean_description": "Whatever cornhole pug ramps.",
  "short_display": "<section><p><strong>Author</strong> Becki Jacobs DDS</p>\n<p><strong>Title</strong> The Golden Apples of the Sun</p>\n<p><strong>Publication</strong> Edupedia Publications.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Author</th>\n<td>Becki Jacobs DDS</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td>The Golden Apples of the Sun</td>\n</tr>\n<tr>\n<th scope=\"row\">Publication</th>\n<td>Edupedia Publications.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>I won't enjoy it.</td>\n</tr>\n</table>",
  "e_type": "reading",
  "legacy_pk": 62033,
  "authors": [
    "Becki Jacobs DDS"
  ],
  "notes": "I won't enjoy it.",
  "publication_information": "Edupedia Publications.",
  "publication_format": "scenester"
}</pre>
