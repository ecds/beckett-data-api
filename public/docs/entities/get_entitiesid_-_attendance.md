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

<pre>GET /entities/f7353d87-7d6f-472f-8085-c1537962da5e</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;47c932213abaac472f5cb2200cd596a0&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 80acdfe1-db9c-4243-a593-99420a3e1f08
X-Runtime: 0.943110
Vary: Origin
Content-Length: 2448</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/f7353d87-7d6f-472f-8085-c1537962da5e",
  "type": "attendance",
  "label": "Rehearsal, 8bit <i>raw denim drinking pinterest park postironic</i> vinyl.",
  "short_display": "<section><p><strong>Rehearsal</strong>, 8bit <i>raw denim drinking pinterest park postironic</i> vinyl.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Fenchurch</p>\n<p><strong>Place, Date</strong> Pfannerstilltown, 13 April 1957</p>\n<p><strong>Director</strong> Emily Saunders</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Description</th>\n<td>8bit <i>raw denim drinking pinterest park postironic</i> vinyl.</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternate Name(s)</th>\n<td>Raja</td>\n</tr>\n<tr>\n<th scope=\"row\">Director</th>\n<td>Emily Saunders</td>\n</tr>\n<tr>\n<th scope=\"row\">Performed by</th>\n<td>Prostetnic Vogon Kwaltz</td>\n</tr>\n<tr>\n<th scope=\"row\">Attended with</th>\n<td>Jackie Treehorn and Fenchurch</td>\n</tr>\n<tr>\n<th scope=\"row\">Place, Date</th>\n<td>Pfannerstilltown, 13 April 1957</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>Paint a perfect picture, bring to life a vision in one's mind. The beautiful ones always smash the picture. Always. Everytime.</td>\n</tr>\n</table>",
  "description": "8bit <i>raw denim drinking pinterest park postironic</i> vinyl.",
  "e_type": "attendance",
  "legacy_pk": 30216,
  "alternate_names": [
    "Raja"
  ],
  "alternate_spellings": null,
  "attended_with": [
    "Jackie Treehorn",
    "Fenchurch"
  ],
  "director": "Emily Saunders",
  "event_type": "rehearsal",
  "notes": "Paint a perfect picture, bring to life a vision in one's mind. The beautiful ones always smash the picture. Always. Everytime.",
  "performed_by": [
    "Prostetnic Vogon Kwaltz"
  ],
  "place_date": "Pfannerstilltown, 13 April 1957"
}
~~~

