# Entities API



## GET /entities/:id - Public Event

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

<pre>GET /entities/bd6ee630-7fd9-4374-9e50-f9781d043df1</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;f105d4b1cc78f4200104d6e2e128414c&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: d4f1f0b7-09ca-466d-86c5-5cf3ff720a8e
X-Runtime: 0.795926
Vary: Origin
Content-Length: 1176</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/bd6ee630-7fd9-4374-9e50-f9781d043df1",
  "type": "public_event",
  "label": "Endeavour",
  "short_display": "<section><p><strong>Endeavour</strong></p>\n<p><strong>1964-01-18.</strong></p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Description</th>\n<td>You <i>sho'nuf do be cookin' in my</i> book!</td>\n</tr>\n<tr>\n<th scope=\"row\">Date</th>\n<td>1964-01-18.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://kassulke.io/jed\" target=\"_blank\" rel=\"noopener\">http://kassulke.io/jed<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "You <i>sho'nuf do be cookin' in my</i> book!",
  "e_type": "public_event",
  "legacy_pk": 54629,
  "date_str": "1964-01-18."
}
~~~

