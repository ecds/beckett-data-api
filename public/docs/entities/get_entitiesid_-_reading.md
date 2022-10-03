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

<pre>GET /entities/39d496bb-a77b-421e-9db8-8a7284c6ee9b</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;1d7ff64e9233021bf64b693573c2c513&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 8ed8c6c7-d382-47d6-b7ed-81d55791bb13
X-Runtime: 0.823448
Vary: Origin
Content-Length: 1523</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/39d496bb-a77b-421e-9db8-8a7284c6ee9b",
  "type": "reading",
  "label": "Bury My Heart at Wounded Knee",
  "short_display": "<section><p><strong>Author</strong> Roberto Ortiz</p>\n<p><strong>Title</strong> Bury My Heart at Wounded Knee</p>\n<p><strong>Publication</strong> Harvill Press at Random House.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Author</th>\n<td>Roberto Ortiz</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td>Bury My Heart at Wounded Knee</td>\n</tr>\n<tr>\n<th scope=\"row\">Publication</th>\n<td>Harvill Press at Random House.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>And then of course I've got this terrible pain in all the diodes down my left side.</td>\n</tr>\n</table>",
  "description": "Meggings <i>selfies tumblr blog butcher normcore etsy bicycle rights</i> celiac.",
  "e_type": "reading",
  "legacy_pk": 69881,
  "authors": [
    "Roberto Ortiz"
  ],
  "notes": "And then of course I've got this terrible pain in all the diodes down my left side.",
  "publication_information": "Harvill Press at Random House.",
  "publication_format": "mumblecore"
}
~~~

