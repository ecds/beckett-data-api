# Entities API



## GET /entities/:id - Organization

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

<pre>GET /entities/b1c71cae-d4cd-4287-96b2-c98cc6b79364</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;50dd8ddc70e8c10e099dbe065d403e00&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: c1348b3c-b3e4-45b0-827a-697c0679c16c
X-Runtime: 0.885263
Vary: Origin
Content-Length: 1648</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/b1c71cae-d4cd-4287-96b2-c98cc6b79364",
  "type": "organization",
  "label": "Frogstar World C",
  "short_display": "<section><p><strong>Frogstar World C</strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td>Frogstar World C</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternate Name(s)</th>\n<td>Phi Phi O'Hara</td>\n</tr>\n<tr>\n<th scope=\"row\">Profile</th>\n<td>If they don’t keep exercising their lips, he thought, their brains start working.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>If it ain't Chuck D, or Jam Master Jay, know what? They're losin', cause we got a PhD in advanced body movin'.</td>\n</tr>\n</table>",
  "description": "I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.",
  "e_type": "organization",
  "legacy_pk": 15724,
  "alternate_names": [
    "Phi Phi O'Hara"
  ],
  "alternate_spellings": null,
  "profile": "If they don’t keep exercising their lips, he thought, their brains start working."
}</pre>
