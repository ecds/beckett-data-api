# Entities API



## GET /entities/:id - Place

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
| alternate_spellings | Array |  | false |
| links | Array |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/771d4468-655d-439e-a9f7-3e9f84173a86</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;77b06d93af95e0c5600484002ec3300f&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: b9cb3975-6065-4572-83da-98a233abbd51
X-Runtime: 1.170707
Vary: Origin
Content-Length: 1458</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/771d4468-655d-439e-a9f7-3e9f84173a86",
  "type": "place",
  "label": "Western Spiral Arm",
  "clean_label": "Western Spiral Arm",
  "description": "Truffaut pitchfork glutenfree scenester chartreuse green juice normcore vice.",
  "clean_description": "Truffaut pitchfork glutenfree scenester chartreuse green juice normcore vice.",
  "short_display": "<section><p><strong>Western Spiral Arm</strong></p>\n<p>Truffaut pitchfork glutenfree scenester chartreuse green juice normcore vice.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td>Western Spiral Arm</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Truffaut pitchfork glutenfree scenester chartreuse green juice normcore vice.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://friesen.biz/dian.cummerata\" target=\"_blank\" rel=\"noopener\">http://friesen.biz/dian.cummerata<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "e_type": "place",
  "legacy_pk": 17107,
  "alternate_spellings": [
    "Ivy Winters"
  ],
  "links": [
    "http://friesen.biz/dian.cummerata"
  ]
}</pre>
