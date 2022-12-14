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

<pre>GET /entities/76ee6a7c-ce18-4420-9f0b-bce00d998925</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;843ef31631f5b5f9eb39dfae7360f001&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 3d479d5c-51a2-428d-a98d-5c54219ebd1d
X-Runtime: 1.630331
Vary: Origin
Content-Length: 1872</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "76ee6a7c-ce18-4420-9f0b-bce00d998925",
  "type": "place",
  "label": "<i>Rupert</i>",
  "short_display": "<section><p><strong><i>Rupert</i></strong></p>\n<p>Salvia <i>cardigan fanny pack organic helvetica narwhal</i> cornhole.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td><i>Rupert</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Salvia <i>cardigan fanny pack organic helvetica narwhal</i> cornhole.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://botsford.biz/wilton\" target=\"_blank\" rel=\"noopener\">http://botsford.biz/wilton<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Salvia <i>cardigan fanny pack organic helvetica narwhal</i> cornhole.",
  "e_type": "place",
  "legacy_pk": 1632,
  "alternate_spellings": [
    "Detox"
  ],
  "links": [
    "http://botsford.biz/wilton"
  ],
  "letters": {
    "mention": "http://example.org/entities/76ee6a7c-ce18-4420-9f0b-bce00d998925/letters?relation=mention",
    "received": "http://example.org/entities/76ee6a7c-ce18-4420-9f0b-bce00d998925/letters?relation=received",
    "sent": "http://example.org/entities/76ee6a7c-ce18-4420-9f0b-bce00d998925/letters?relation=sent",
    "destination": "http://example.org/entities/76ee6a7c-ce18-4420-9f0b-bce00d998925/letters?relation=destination",
    "origin": "http://example.org/entities/76ee6a7c-ce18-4420-9f0b-bce00d998925/letters?relation=origin"
  }
}
~~~

