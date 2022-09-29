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

<pre>GET /entities/a9ad30ac-e0b2-46b8-87d7-b87db79c0993</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;067a15e0717a132c338c06e87b246815&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: bb1015cb-6e64-4d63-93d8-e33a89abfda9
X-Runtime: 0.826686
Vary: Origin
Content-Length: 1235</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/a9ad30ac-e0b2-46b8-87d7-b87db79c0993",
  "type": "public_event",
  "label": "<i>Gemini</i>",
  "short_display": "<section><p><strong><i>Gemini</i></strong></p>\n<p><strong>1943-08-31.</strong></p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Description</th>\n<td>You <i>can relax now, the max is in</i> control.</td>\n</tr>\n<tr>\n<th scope=\"row\">Date</th>\n<td>1943-08-31.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://kihn.io/genevieve\" target=\"_blank\" rel=\"noopener\">http://kihn.io/genevieve<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "You <i>can relax now, the max is in</i> control.",
  "e_type": "public_event",
  "legacy_pk": 5950,
  "date_str": "1943-08-31."
}</pre>
