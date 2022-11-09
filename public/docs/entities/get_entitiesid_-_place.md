# Entities API



## GET /entities/:id - Place

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/5b5555ec-ebd4-47e7-aa89-03bebb706309</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;86de98ad78ffc78aca04ec1c1e637d5b&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: dfd033d7-bba5-4c76-9f15-2ca427b49ddc
X-Runtime: 1.565674
Vary: Origin
Content-Length: 1839</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "5b5555ec-ebd4-47e7-aa89-03bebb706309",
  "type": "place",
  "label": "<i>Sector XXXZ5QZX</i>",
  "short_display": "<section><p><strong><i>Sector XXXZ5QZX</i></strong></p>\n<p>Mumblecore mlkshk chicharrones street skateboard small batch echo.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td><i>Sector XXXZ5QZX</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Mumblecore mlkshk chicharrones street skateboard small batch echo.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://metz.io/leda_muller\" target=\"_blank\" rel=\"noopener\">http://metz.io/leda_muller<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Mumblecore mlkshk chicharrones street skateboard small batch echo.",
  "e_type": "place",
  "legacy_pk": 94877,
  "alternate_spellings": [
    "Brook Lynn Hytes"
  ],
  "links": [
    "http://metz.io/leda_muller"
  ],
  "letters": {
    "mention": "http://example.org/entities/5b5555ec-ebd4-47e7-aa89-03bebb706309/letters?relation=mention",
    "recived": "http://example.org/entities/5b5555ec-ebd4-47e7-aa89-03bebb706309/letters?relation=recived",
    "sent": "http://example.org/entities/5b5555ec-ebd4-47e7-aa89-03bebb706309/letters?relation=sent",
    "desination": "http://example.org/entities/5b5555ec-ebd4-47e7-aa89-03bebb706309/letters?relation=destination",
    "origin": "http://example.org/entities/5b5555ec-ebd4-47e7-aa89-03bebb706309/letters?relation=origin"
  }
}
~~~

