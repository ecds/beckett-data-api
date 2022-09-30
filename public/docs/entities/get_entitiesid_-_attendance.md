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

<pre>GET /entities/b2ed02a0-4844-4975-acdf-8e653709db4f</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;9bdda823e7d106d2d0b57cc1576caba7&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 183540da-6e14-44dd-9318-99cbf5b256aa
X-Runtime: 0.966458
Vary: Origin
Content-Length: 2276</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/b2ed02a0-4844-4975-acdf-8e653709db4f",
  "type": "attendance",
  "label": "Rehearsal, Pitchfork postironic plaid quinoa normcore echo semiotics ethical cleanse.",
  "short_display": "<section><p><strong>Rehearsal</strong>, Pitchfork postironic plaid quinoa normcore echo semiotics ethical cleanse.</p>\n<p><strong>Attended with</strong> The Dude and Hotblack Desiato</p>\n<p><strong>Place, Date</strong> Mattiebury, 10 February 1934</p>\n<p><strong>Director</strong> Trin Tragula</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Pitchfork postironic plaid quinoa normcore echo semiotics ethical cleanse.</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternate Name(s)</th>\n<td>Mimi Imfurst</td>\n</tr>\n<tr>\n<th scope=\"row\">Director</th>\n<td>Trin Tragula</td>\n</tr>\n<tr>\n<th scope=\"row\">Performed by</th>\n<td>Loonquawl and Phouchg</td>\n</tr>\n<tr>\n<th scope=\"row\">Attended with</th>\n<td>The Dude and Hotblack Desiato</td>\n</tr>\n<tr>\n<th scope=\"row\">Place, Date</th>\n<td>Mattiebury, 10 February 1934</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>How can you just leave me standing alone in a world so cold?</td>\n</tr>\n</table>",
  "description": "Pitchfork postironic plaid quinoa normcore echo semiotics ethical cleanse.",
  "e_type": "attendance",
  "legacy_pk": 4044,
  "alternate_names": [
    "Mimi Imfurst"
  ],
  "alternate_spellings": null,
  "attended_with": [
    "The Dude",
    "Hotblack Desiato"
  ],
  "director": "Trin Tragula",
  "event_type": "rehearsal",
  "notes": "How can you just leave me standing alone in a world so cold?",
  "performed_by": [
    "Loonquawl and Phouchg"
  ],
  "place_date": "Mattiebury, 10 February 1934"
}
~~~

