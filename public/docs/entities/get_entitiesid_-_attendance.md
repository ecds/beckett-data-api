# Entities API



## GET /entities/:id - Attendance

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/124c0bcf-6ff5-4f4b-a90b-f3922c2d65bd</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;68278e2b13a4208ae29d957705fd2856&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: c0237199-803f-4368-858b-943e71b2198c
X-Runtime: 1.574004
Vary: Origin
Content-Length: 2805</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "124c0bcf-6ff5-4f4b-a90b-f3922c2d65bd",
  "type": "attendance",
  "label": "Radio Broadcast, Franzen <i>wes anderson actually poutine</i> cleanse.",
  "short_display": "<section><p><strong>Radio Broadcast</strong>, Franzen <i>wes anderson actually poutine</i> cleanse.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Arthur Dent</p>\n<p><strong>Place, Date</strong> Esperanzatown, 12 March 1932</p>\n<p><strong>Director</strong> Colin the Security Robot</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Franzen <i>wes anderson actually poutine</i> cleanse.</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternate Name(s)</th>\n<td>Ra'jah O'Hara</td>\n</tr>\n<tr>\n<th scope=\"row\">Director</th>\n<td>Colin the Security Robot</td>\n</tr>\n<tr>\n<th scope=\"row\">Performed by</th>\n<td>Arthur Dent</td>\n</tr>\n<tr>\n<th scope=\"row\">Attended with</th>\n<td>Bunny Lebowski and Arthur Dent</td>\n</tr>\n<tr>\n<th scope=\"row\">Place, Date</th>\n<td>Esperanzatown, 12 March 1932</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>How can you just leave me standing alone in a world so cold?</td>\n</tr>\n</table>",
  "description": "Franzen <i>wes anderson actually poutine</i> cleanse.",
  "e_type": "attendance",
  "legacy_pk": 95093,
  "alternate_names": [
    "Ra'jah O'Hara"
  ],
  "alternate_spellings": null,
  "attended_with": [
    "Bunny Lebowski",
    "Arthur Dent"
  ],
  "director": "Colin the Security Robot",
  "event_type": "radio_broadcast",
  "notes": "How can you just leave me standing alone in a world so cold?",
  "performed_by": [
    "Arthur Dent"
  ],
  "place_date": "Esperanzatown, 12 March 1932",
  "letters": {
    "mention": "http://example.org/entities/124c0bcf-6ff5-4f4b-a90b-f3922c2d65bd/letters?relation=mention",
    "recived": "http://example.org/entities/124c0bcf-6ff5-4f4b-a90b-f3922c2d65bd/letters?relation=recived",
    "sent": "http://example.org/entities/124c0bcf-6ff5-4f4b-a90b-f3922c2d65bd/letters?relation=sent",
    "desination": "http://example.org/entities/124c0bcf-6ff5-4f4b-a90b-f3922c2d65bd/letters?relation=destination",
    "origin": "http://example.org/entities/124c0bcf-6ff5-4f4b-a90b-f3922c2d65bd/letters?relation=origin"
  }
}
~~~

