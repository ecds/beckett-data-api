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

<pre>GET /entities/89f54e1b-9f60-40e9-8c4a-1fc172f7880b</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;b323a4ab1cadd3edb94e82b5485dda21&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: b3beb413-e101-4414-9ccc-9d46fb492590
X-Runtime: 2.054733
Vary: Origin
Content-Length: 2768</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "89f54e1b-9f60-40e9-8c4a-1fc172f7880b",
  "type": "attendance",
  "label": "Reading, Health <i>listicle bespoke migas</i> sustainable.",
  "short_display": "<section><p><strong>Reading</strong>, Health <i>listicle bespoke migas</i> sustainable.</p>\n<p><strong>Attended with</strong> The Dude and Questular Rontok</p>\n<p><strong>Place, Date</strong> Mrazshire, 13 May 1957</p>\n<p><strong>Director</strong> Galaxia Woonbeam</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Health <i>listicle bespoke migas</i> sustainable.</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternate Name(s)</th>\n<td>Shea Coulee</td>\n</tr>\n<tr>\n<th scope=\"row\">Director</th>\n<td>Galaxia Woonbeam</td>\n</tr>\n<tr>\n<th scope=\"row\">Performed by</th>\n<td>Galaxia Woonbeam</td>\n</tr>\n<tr>\n<th scope=\"row\">Attended with</th>\n<td>The Dude and Questular Rontok</td>\n</tr>\n<tr>\n<th scope=\"row\">Place, Date</th>\n<td>Mrazshire, 13 May 1957</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>You didn't have the decency to change the sheets.</td>\n</tr>\n</table>",
  "description": "Health <i>listicle bespoke migas</i> sustainable.",
  "e_type": "attendance",
  "legacy_pk": 8905,
  "alternate_names": [
    "Shea Coulee"
  ],
  "alternate_spellings": null,
  "attended_with": [
    "The Dude",
    "Questular Rontok"
  ],
  "director": "Galaxia Woonbeam",
  "event_type": "_reading",
  "notes": "You didn't have the decency to change the sheets.",
  "performed_by": [
    "Galaxia Woonbeam"
  ],
  "place_date": "Mrazshire, 13 May 1957",
  "letters": {
    "mentioned_in": [
      {
        "id": "3ed8e22e-b275-420a-b223-6471b37d5f59",
        "label": "11 June 1983 - Ryan, Mindi"
      }
    ],
    "recived": [
      {
        "id": "58ff9d1b-ecc8-4760-abc6-64d877ee939d",
        "label": "12 January 1951 - Dooley, Isaura, Reading, Health <i>listicle bespoke migas</i> sustainable."
      }
    ],
    "sent": [
      {
        "id": "25bd13e1-7581-42c0-8ddd-7b354066ec63",
        "label": "11 August 1970 - Watsica, Deandre"
      }
    ],
    "sent_to": [
      {
        "id": "75ab0dcb-8296-4b9e-9756-50675682d812",
        "label": "17 December 1985 - Hoeger, Don"
      }
    ],
    "sent_from": [
      {
        "id": "c2711cc7-256e-44ea-9933-00298bfbb3fa",
        "label": "22 July 1964 - Koss, Su"
      }
    ]
  }
}
~~~

