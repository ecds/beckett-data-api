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

<pre>GET /entities/4a3a13cc-3f07-4e2e-9b31-090e90b1e408</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;fcc63486bc7981a8d5f70775b097ce11&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 45a84db5-b01b-432e-a0b6-17b7d3de5ccf
X-Runtime: 1.701394
Vary: Origin
Content-Length: 1795</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "4a3a13cc-3f07-4e2e-9b31-090e90b1e408",
  "type": "public_event",
  "label": "<i>Mercury</i>",
  "short_display": "<section><p><strong><i>Mercury</i></strong></p>\n<p><strong>1941-04-04.</strong></p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Description</th>\n<td>I <i>never meant to cause you any sorrow, I never meant to cause you any</i> pain.</td>\n</tr>\n<tr>\n<th scope=\"row\">Date</th>\n<td>1941-04-04.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://rohan.com/diann\" target=\"_blank\" rel=\"noopener\">http://rohan.com/diann<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "I <i>never meant to cause you any sorrow, I never meant to cause you any</i> pain.",
  "e_type": "public_event",
  "legacy_pk": 78867,
  "date_str": "1941-04-04.",
  "letters": {
    "mention": "http://example.org/entities/4a3a13cc-3f07-4e2e-9b31-090e90b1e408/letters?relation=mention",
    "recived": "http://example.org/entities/4a3a13cc-3f07-4e2e-9b31-090e90b1e408/letters?relation=recived",
    "sent": "http://example.org/entities/4a3a13cc-3f07-4e2e-9b31-090e90b1e408/letters?relation=sent",
    "desination": "http://example.org/entities/4a3a13cc-3f07-4e2e-9b31-090e90b1e408/letters?relation=destination",
    "origin": "http://example.org/entities/4a3a13cc-3f07-4e2e-9b31-090e90b1e408/letters?relation=origin"
  }
}
~~~

