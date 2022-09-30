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

<pre>GET /entities/a72a9581-4304-4599-b574-1045227e16f5</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;ec56eafc2c45bebed905be87a094317d&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 3c0b7ab8-8e6d-4112-b1e2-f4e89aa7423d
X-Runtime: 1.149592
Vary: Origin
Content-Length: 1249</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/a72a9581-4304-4599-b574-1045227e16f5",
  "type": "public_event",
  "label": "<i>Columbia</i>",
  "short_display": "<section><p><strong><i>Columbia</i></strong></p>\n<p><strong>1969-07-04.</strong></p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Description</th>\n<td>I was dreamin' when I wrote this, forgive me if I go astray.</td>\n</tr>\n<tr>\n<th scope=\"row\">Date</th>\n<td>1969-07-04.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://bradtke.info/earnestine.cassin\" target=\"_blank\" rel=\"noopener\">http://bradtke.info/earnestine.cassin<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "I was dreamin' when I wrote this, forgive me if I go astray.",
  "e_type": "public_event",
  "legacy_pk": 3384,
  "date_str": "1969-07-04."
}
~~~

