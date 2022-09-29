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

<pre>GET /entities/669c60a4-e908-40e5-b51f-151710da0493</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;db28f51d197ad3b1802ddecc85b89bd3&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 621bde69-ffbf-4a9a-a569-ae348f07269b
X-Runtime: 0.757063
Vary: Origin
Content-Length: 1853</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/669c60a4-e908-40e5-b51f-151710da0493",
  "type": "reading",
  "label": "A Scanner Darkly",
  "short_display": "<section><p><strong>Author</strong> Gabriel Breitenberg</p>\n<p><strong>Title</strong> A Scanner Darkly</p>\n<p><strong>Publication</strong> Koren Publishers Jerusalem.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Author</th>\n<td>Gabriel Breitenberg</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td>A Scanner Darkly</td>\n</tr>\n<tr>\n<th scope=\"row\">Publication</th>\n<td>Koren Publishers Jerusalem.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</td>\n</tr>\n</table>",
  "description": "Meggings <i>vinyl normcore trust fund food</i> truck.",
  "e_type": "reading",
  "legacy_pk": 48789,
  "authors": [
    "Gabriel Breitenberg"
  ],
  "notes": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
  "publication_information": "Koren Publishers Jerusalem.",
  "publication_format": "slow-carb"
}</pre>
