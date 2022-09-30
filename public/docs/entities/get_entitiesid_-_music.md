# Entities API



## GET /entities/:id - Music

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

<pre>GET /entities/79e72009-8e77-4425-b3bf-f9b9de7621fa</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;5d5ae68715241b9700108cd2a25f46c2&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 3a5cbc21-ac33-47a2-828a-cb4e9815fb53
X-Runtime: 0.902038
Vary: Origin
Content-Length: 2156</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/79e72009-8e77-4425-b3bf-f9b9de7621fa",
  "type": "music",
  "label": "Something in the Water (Does Not Compute)",
  "short_display": "<section><p><strong>Composer</strong> Elvis</p>\n<p><strong>Title</strong> Something in the Water (Does Not Compute)</p>\n<p><strong>Description</strong> Truffaut chillwave master ugh carry offal helvetica humblebrag.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Composer</th>\n<td>Elvis</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td>Something in the Water (Does Not Compute)</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternate Title(s)</th>\n<td>Miz Cracker</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Truffaut chillwave master ugh carry offal helvetica humblebrag.</td>\n</tr>\n<tr>\n<th scope=\"row\">Performed by</th>\n<td>Karl Hungus</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>My name is Prince, the one and only.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://nolan-feeney.org/ranee.fisher\" target=\"_blank\" rel=\"noopener\">http://nolan-feeney.org/ranee.fisher<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Truffaut chillwave master ugh carry offal helvetica humblebrag.",
  "e_type": "music",
  "legacy_pk": 8352,
  "alternate_names": [
    "Miz Cracker"
  ],
  "alternate_spellings": null,
  "composer": "Elvis",
  "links": [
    "http://nolan-feeney.org/ranee.fisher"
  ],
  "notes": "My name is Prince, the one and only.",
  "performed_by": [
    "Karl Hungus"
  ]
}
~~~

