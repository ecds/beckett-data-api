# Entities API



## GET /entities/:id - Person

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

<pre>GET /entities/49c1c842-bd06-49a4-800a-346df676f8e5</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;44402741d32dbd8eb9aa578de05677de&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: f52ef10e-d319-4f2f-b274-aebccfc6cd6d
X-Runtime: 1.149192
Vary: Origin
Content-Length: 1820</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/49c1c842-bd06-49a4-800a-346df676f8e5",
  "type": "person",
  "label": "Schmitt, Alfonso",
  "short_display": "<section><p><strong>Alfonso Schmitt, 1910-1984</strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td>Alfonso Schmitt</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternative Name(s)</th>\n<td>Bianca Del Rio</td>\n</tr>\n<tr>\n<th scope=\"row\">Life Dates</th>\n<td>1910-1984</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>I <i>think you ought to know I'm feeling very</i> depressed.</td>\n</tr>\n<tr>\n<th scope=\"row\">Profile</th>\n<td>42</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://ledner.biz/lindy\" target=\"_blank\" rel=\"noopener\">http://ledner.biz/lindy<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "I <i>think you ought to know I'm feeling very</i> depressed.",
  "e_type": "person",
  "legacy_pk": 38224,
  "alternate_names": [
    "Bianca Del Rio"
  ],
  "alternate_spellings": [
    "Monet X Change"
  ],
  "first_name": "Alfonso",
  "last_name": "Schmitt",
  "life_dates": "1910-1984",
  "links": [
    "http://ledner.biz/lindy"
  ],
  "profile": "42"
}
~~~

