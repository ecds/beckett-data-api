# Entities API



## GET /entities/:id - Place

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

<pre>GET /entities/8b5d5594-42e2-4786-90b3-7f8ce6ddea84</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;9f554b546773b10dbcb956864dd4b703&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 02a91de2-fc80-4ab7-bf32-75cf5ee83a60
X-Runtime: 0.849398
Vary: Origin
Content-Length: 1276</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/8b5d5594-42e2-4786-90b3-7f8ce6ddea84",
  "type": "place",
  "label": "France",
  "short_display": "<section><p><strong>France</strong></p>\n<p>Gentrify <i>bitters chillwave plaid</i> letterpress.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td>France</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Gentrify <i>bitters chillwave plaid</i> letterpress.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://kutch-hammes.org/johnie.huel\" target=\"_blank\" rel=\"noopener\">http://kutch-hammes.org/johnie.huel<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Gentrify <i>bitters chillwave plaid</i> letterpress.",
  "e_type": "place",
  "legacy_pk": 24469,
  "alternate_spellings": [
    "The Vixen"
  ],
  "links": [
    "http://kutch-hammes.org/johnie.huel"
  ]
}
~~~

