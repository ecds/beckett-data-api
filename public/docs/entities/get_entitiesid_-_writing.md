# Entities API



## GET /entities/:id - Writing

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

<pre>GET /entities/6505d492-d480-4144-877f-0af10e228241</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;3e0c45d61f5311e5f0e009f7a4525019&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: d3bb6248-1eef-4223-8eb3-216d02a4ed01
X-Runtime: 0.898062
Vary: Origin
Content-Length: 2208</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/6505d492-d480-4144-877f-0af10e228241",
  "type": "writing",
  "label": "<i>In a Glass Darkly</i>",
  "short_display": "<section><p><strong>Title</strong> <i>In a Glass Darkly</i></p>\n<p><strong>Proposal/Response</strong> If they don’t keep exercising their lips, he thought, their brains start working.</p>\n<p><strong>Translator</strong> Marvin</p>\n<p><strong>Date</strong> 1938-09-13.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Title</th>\n<td><i>In a Glass Darkly</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Proposal/Response</th>\n<td>If they don’t keep exercising their lips, he thought, their brains start working.</td>\n</tr>\n<tr>\n<th scope=\"row\">Date</th>\n<td>1938-09-13.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>I won't enjoy it.</td>\n</tr>\n<tr>\n<th scope=\"row\">Archival Information</th>\n<td>Del Rey Books.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://damore-turcotte.info/asuncion\" target=\"_blank\" rel=\"noopener\">http://damore-turcotte.info/asuncion<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Knausgaard ramps polaroid 8bit selvage fixie helvetica sartorial bespoke.",
  "e_type": "writing",
  "legacy_pk": 61836,
  "date_str": "1938-09-13.",
  "links": [
    "http://damore-turcotte.info/asuncion"
  ],
  "notes": "I won't enjoy it.",
  "proposal": "If they don’t keep exercising their lips, he thought, their brains start working.",
  "publication_information": "Del Rey Books."
}</pre>
