# Entities API



## GET /entities/:id - Public Event

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/e703c5a1-ef60-4a00-91b3-85f182f9d2cd</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;731447ff53f7734403a2e090c433beac&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 1c344300-299f-4940-a12e-17d3d7a059f4
X-Runtime: 2.528010
Vary: Origin
Content-Length: 1798</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "e703c5a1-ef60-4a00-91b3-85f182f9d2cd",
  "type": "public_event",
  "label": "<i>Orion</i>",
  "short_display": "<section><p><strong><i>Orion</i></strong></p>\n<p><strong>1954-06-16.</strong></p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Description</th>\n<td>The <i>girl on the seesaw is laughing, for love is the color this place</i> imparts.</td>\n</tr>\n<tr>\n<th scope=\"row\">Date</th>\n<td>1954-06-16.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://little.com/dion\" target=\"_blank\" rel=\"noopener\">http://little.com/dion<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "The <i>girl on the seesaw is laughing, for love is the color this place</i> imparts.",
  "e_type": "public_event",
  "legacy_pk": 68920,
  "date_str": "1954-06-16.",
  "letters": {
    "mention": "http://example.org/entities/e703c5a1-ef60-4a00-91b3-85f182f9d2cd/letters?relation=mention",
    "received": "http://example.org/entities/e703c5a1-ef60-4a00-91b3-85f182f9d2cd/letters?relation=received",
    "sent": "http://example.org/entities/e703c5a1-ef60-4a00-91b3-85f182f9d2cd/letters?relation=sent",
    "destination": "http://example.org/entities/e703c5a1-ef60-4a00-91b3-85f182f9d2cd/letters?relation=destination",
    "origin": "http://example.org/entities/e703c5a1-ef60-4a00-91b3-85f182f9d2cd/letters?relation=origin"
  }
}
~~~

