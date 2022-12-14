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

<pre>GET /entities/e7a8b2f1-09b2-4666-9bb2-2b610ad89809</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;b1e6a32075b6d0b4d046bcd456114afb&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 8c29a16a-25e5-4458-8b73-95f965eae60d
X-Runtime: 1.712077
Vary: Origin
Content-Length: 2943</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "e7a8b2f1-09b2-4666-9bb2-2b610ad89809",
  "type": "attendance",
  "label": "Reading, Food truck bicycle rights humblebrag microdosing vice hashtag next level ennui skateboard.",
  "short_display": "<section><p><strong>Reading</strong>, Food truck bicycle rights humblebrag microdosing vice hashtag next level ennui skateboard.</p>\n<p><strong>Attended with</strong> The Big Lebowski and Roosta</p>\n<p><strong>Place, Date</strong> South Hangville, 21 January 1972</p>\n<p><strong>Director</strong> Eccentrica Gallumbits</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Food truck bicycle rights humblebrag microdosing vice hashtag next level ennui skateboard.</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternate Name(s)</th>\n<td>Kennedy Davenport</td>\n</tr>\n<tr>\n<th scope=\"row\">Director</th>\n<td>Eccentrica Gallumbits</td>\n</tr>\n<tr>\n<th scope=\"row\">Performed by</th>\n<td>Pasta Fasta</td>\n</tr>\n<tr>\n<th scope=\"row\">Attended with</th>\n<td>The Big Lebowski and Roosta</td>\n</tr>\n<tr>\n<th scope=\"row\">Place, Date</th>\n<td>South Hangville, 21 January 1972</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>We all have our problems. Some big, some are small. Soon all of our problems will be taken by the cross.</td>\n</tr>\n</table>",
  "description": "Food truck bicycle rights humblebrag microdosing vice hashtag next level ennui skateboard.",
  "e_type": "attendance",
  "legacy_pk": 17675,
  "alternate_names": [
    "Kennedy Davenport"
  ],
  "alternate_spellings": null,
  "attended_with": [
    "The Big Lebowski",
    "Roosta"
  ],
  "director": "Eccentrica Gallumbits",
  "event_type": "_reading",
  "notes": "We all have our problems. Some big, some are small. Soon all of our problems will be taken by the cross.",
  "performed_by": [
    "Pasta Fasta"
  ],
  "place_date": "South Hangville, 21 January 1972",
  "letters": {
    "mention": "http://example.org/entities/e7a8b2f1-09b2-4666-9bb2-2b610ad89809/letters?relation=mention",
    "received": "http://example.org/entities/e7a8b2f1-09b2-4666-9bb2-2b610ad89809/letters?relation=received",
    "sent": "http://example.org/entities/e7a8b2f1-09b2-4666-9bb2-2b610ad89809/letters?relation=sent",
    "destination": "http://example.org/entities/e7a8b2f1-09b2-4666-9bb2-2b610ad89809/letters?relation=destination",
    "origin": "http://example.org/entities/e7a8b2f1-09b2-4666-9bb2-2b610ad89809/letters?relation=origin"
  }
}
~~~

