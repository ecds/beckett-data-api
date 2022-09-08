# Entities API



## GET /entities/:id - Public Event

### GET /entities/:id

### Response Fields

| Name | Default | Description | Not Null |
|------|---------|-------------|----------|
| label | HTML String |  | true |
| clean_label | String |  | true |
| description | HTML String |  | true |
| clean_description | String |  | true |
| display_header | HTML String |  | true |
| label | HTML String |  | false |
| description | HTML String |  | false |
| e_type | HTML String |  | false |
| legacy_pk | HTML String |  | false |
| date_str | HTML String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/acddba99-ce39-4246-93e1-ef81f3fd90cb</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;24d0baff580bf13196912852ce6694d8&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 125e878d-696e-4453-a624-e9aedaf727e2
X-Runtime: 1.026135
Vary: Origin
Content-Length: 1394</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/acddba99-ce39-4246-93e1-ef81f3fd90cb",
  "type": "public_event",
  "label": "<i>Gemini</i>",
  "clean_label": "Gemini",
  "description": "Before <i>my life is done, some way, some how, I'm going to have</i> fun.",
  "clean_description": "Before my life is done, some way, some how, I'm going to have fun.",
  "short_display": "<section><p><strong><i>Gemini</i></strong></p>\n<p><strong>1949-08-14.</strong></p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Before <i>my life is done, some way, some how, I'm going to have</i> fun.</td>\n</tr>\n<tr>\n<th scope=\"row\">Date</th>\n<td>1949-08-14.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://hills.biz/darci\" target=\"_blank\" rel=\"noopener\">http://hills.biz/darci<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "e_type": "public_event",
  "legacy_pk": 95049,
  "date_str": "1949-08-14."
}</pre>
