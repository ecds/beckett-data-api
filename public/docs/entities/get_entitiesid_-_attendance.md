# Entities API



## GET /entities/:id - Attendance

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
| alternate_names | Array |  | false |
| alternate_spellings | Array |  | false |
| attended_with | Array |  | false |
| director | HTML String |  | false |
| event_type | HTML String |  | false |
| notes | HTML String |  | false |
| performed_by | Array |  | false |
| place_date | HTML String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/73e8a612-71df-4520-9dc5-72bd259de16d</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;08d1c00d4220d6458f05de7a2a30aaeb&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 14879ed3-32d7-4bc8-97ab-a86ef4e04e6c
X-Runtime: 1.106578
Vary: Origin
Content-Length: 2163</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/73e8a612-71df-4520-9dc5-72bd259de16d",
  "type": "attendance",
  "label": "Reading, Neutra cred schlitz lofi.",
  "clean_label": "Reading, Neutra cred schlitz lofi.",
  "description": "Neutra cred schlitz lofi.",
  "clean_description": "Neutra cred schlitz lofi.",
  "short_display": "<section><p><strong>Reading</strong>, Neutra cred schlitz lofi.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Genghis Khan</p>\n<p><strong>Place, Date</strong> Ritchieville, 21 November 1959</p>\n<p><strong>Director</strong> Trillian</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Neutra cred schlitz lofi.</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternate Name(s)</th>\n<td>Kennedy Davenport</td>\n</tr>\n<tr>\n<th scope=\"row\">Director</th>\n<td>Trillian</td>\n</tr>\n<tr>\n<th scope=\"row\">Performed by</th>\n<td>Loonquawl</td>\n</tr>\n<tr>\n<th scope=\"row\">Attended with</th>\n<td>Jackie Treehorn and Genghis Khan</td>\n</tr>\n<tr>\n<th scope=\"row\">Place, Date</th>\n<td>Ritchieville, 21 November 1959</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>How can you just leave me standing alone in a world so cold?</td>\n</tr>\n</table>",
  "e_type": "attendance",
  "legacy_pk": 2359,
  "alternate_names": [
    "Kennedy Davenport"
  ],
  "alternate_spellings": null,
  "attended_with": [
    "Jackie Treehorn",
    "Genghis Khan"
  ],
  "director": "Trillian",
  "event_type": "_reading",
  "notes": "How can you just leave me standing alone in a world so cold?",
  "performed_by": [
    "Loonquawl"
  ],
  "place_date": "Ritchieville, 21 November 1959"
}</pre>
