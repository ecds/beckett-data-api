# Entities API



## GET /entities/:id - Attendance

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

<pre>GET /entities/ec65a565-3fb1-4904-b6a3-f07fc778fc80</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;7c7f61d3c1fbb3f1292e3c8225f858ce&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 5104bd66-3923-4598-8d51-6a32ba27b2cd
X-Runtime: 0.926351
Vary: Origin
Content-Length: 2241</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/ec65a565-3fb1-4904-b6a3-f07fc778fc80",
  "type": "attendance",
  "label": "Theatre, Occupy <i>pickled pabst narwhal swag sriracha</i> lumbersexual.",
  "short_display": "<section><p><strong>Theatre</strong>, Occupy <i>pickled pabst narwhal swag sriracha</i> lumbersexual.</p>\n<p><strong>Attended with</strong> Donny and Majikthise</p>\n<p><strong>Place, Date</strong> Schambergerfort, 01 October 1957</p>\n<p><strong>Director</strong> Zarniwoop</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Occupy <i>pickled pabst narwhal swag sriracha</i> lumbersexual.</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternate Name(s)</th>\n<td>Pandora Boxx</td>\n</tr>\n<tr>\n<th scope=\"row\">Director</th>\n<td>Zarniwoop</td>\n</tr>\n<tr>\n<th scope=\"row\">Performed by</th>\n<td>Random Dent</td>\n</tr>\n<tr>\n<th scope=\"row\">Attended with</th>\n<td>Donny and Majikthise</td>\n</tr>\n<tr>\n<th scope=\"row\">Place, Date</th>\n<td>Schambergerfort, 01 October 1957</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>Only want to see you laughing in the purple rain.</td>\n</tr>\n</table>",
  "description": "Occupy <i>pickled pabst narwhal swag sriracha</i> lumbersexual.",
  "e_type": "attendance",
  "legacy_pk": 33223,
  "alternate_names": [
    "Pandora Boxx"
  ],
  "alternate_spellings": null,
  "attended_with": [
    "Donny",
    "Majikthise"
  ],
  "director": "Zarniwoop",
  "event_type": "theatre",
  "notes": "Only want to see you laughing in the purple rain.",
  "performed_by": [
    "Random Dent"
  ],
  "place_date": "Schambergerfort, 01 October 1957"
}</pre>
