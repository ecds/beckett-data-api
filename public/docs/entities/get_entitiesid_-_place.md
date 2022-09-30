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

<pre>GET /entities/99964ccc-a5c6-4d94-a4bf-8640bf1476f9</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;355f8bf9199cb861f5146c4a523657cb&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 8824c106-a101-485f-9208-c1f8fc6dd9d3
X-Runtime: 1.034688
Vary: Origin
Content-Length: 1296</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/99964ccc-a5c6-4d94-a4bf-8640bf1476f9",
  "type": "place",
  "label": "<i>Croydon</i>",
  "short_display": "<section><p><strong><i>Croydon</i></strong></p>\n<p>Trust <i>fund pbrb vice</i> 90s.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td><i>Croydon</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Trust <i>fund pbrb vice</i> 90s.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://hahn-shanahan.org/virgilio\" target=\"_blank\" rel=\"noopener\">http://hahn-shanahan.org/virgilio<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Trust <i>fund pbrb vice</i> 90s.",
  "e_type": "place",
  "legacy_pk": 31597,
  "alternate_spellings": [
    "Farrah Moan"
  ],
  "links": [
    "http://hahn-shanahan.org/virgilio"
  ]
}
~~~

