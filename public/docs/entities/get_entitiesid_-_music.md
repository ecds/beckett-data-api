# Entities API



## GET /entities/:id - Music

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/62067765-9b52-449a-8638-475fd7aab2de</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;27e276c3bb105f160b4e54d8bc4d0b00&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: fab4f1f7-6927-4666-aa5f-7e92c77426d6
X-Runtime: 1.740627
Vary: Origin
Content-Length: 2710</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "62067765-9b52-449a-8638-475fd7aab2de",
  "type": "music",
  "label": "Crimson and Clover",
  "short_display": "<section><p><strong>Composer</strong> Garkbit</p>\n<p><strong>Title</strong> Crimson and Clover</p>\n<p><strong>Description</strong> Meggings <i>shoreditch fanny pack whatever tacos cronut irony neutra</i> brooklyn.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Composer</th>\n<td>Garkbit</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td>Crimson and Clover</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternate Title(s)</th>\n<td>Carmen Carrera</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Meggings <i>shoreditch fanny pack whatever tacos cronut irony neutra</i> brooklyn.</td>\n</tr>\n<tr>\n<th scope=\"row\">Performed by</th>\n<td>Brandt</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>I'm hot and I don't care who knows it, I got a job to do.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://denesik.io/floyd\" target=\"_blank\" rel=\"noopener\">http://denesik.io/floyd<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Meggings <i>shoreditch fanny pack whatever tacos cronut irony neutra</i> brooklyn.",
  "e_type": "music",
  "legacy_pk": 50176,
  "alternate_names": [
    "Carmen Carrera"
  ],
  "alternate_spellings": null,
  "composer": "Garkbit",
  "links": [
    "http://denesik.io/floyd"
  ],
  "notes": "I'm hot and I don't care who knows it, I got a job to do.",
  "performed_by": [
    "Brandt"
  ],
  "letters": {
    "mentioned_in": [
      {
        "id": "357eaece-dc29-4e82-b65a-7e03a006e1a7",
        "label": "14 June 1950 - Towne, Jeramy"
      }
    ],
    "recived": [
      {
        "id": "a28bd102-e79d-4270-83b1-100b75140d46",
        "label": "22 July 1954 - Crimson and Clover, Harber, Pearl"
      }
    ],
    "sent": [
      {
        "id": "41f5f994-d25e-4351-b7d8-1185d1e116db",
        "label": "30 June 1959 - Dare, Lynwood"
      }
    ],
    "sent_to": [
      {
        "id": "fb4dd828-4b6f-4116-a45f-3a021343f77d",
        "label": "24 October 1969 - Larkin, Marissa"
      }
    ],
    "sent_from": [
      {
        "id": "7c117d0d-51d3-482f-ac9b-bc909e8019f9",
        "label": "08 November 1965 - Moen, Dulce"
      }
    ]
  }
}
~~~

