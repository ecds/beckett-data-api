# Entities API



## GET /entities/:id - Work Of Art

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/3f22156f-e109-4849-9f3d-e4e50f9efb67</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;56214f576503289c54660a509e137215&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 09d0148e-4c8f-4f3b-9295-51d6ab7f72cb
X-Runtime: 1.569693
Vary: Origin
Content-Length: 3614</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "3f22156f-e109-4849-9f3d-e4e50f9efb67",
  "type": "work_of_art",
  "label": "Joy In Repetition",
  "short_display": "<section><p><strong>Artist</strong> Phouchg</p>\n<p><strong>Title</strong> Joy In Repetition</p>\n<p><strong>Description</strong> Tumblr <i>taxidermy crucifix pabst shabby chic viral swag listicle next</i> level.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Artist</th>\n<td>Phouchg</td>\n</tr>\n<tr>\n<th scope=\"row\">Artist Alternative Name(s)</th>\n<td>Eureka</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td>Joy In Repetition</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternative Title(s)</th>\n<td>Ivy Winters</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Tumblr <i>taxidermy crucifix pabst shabby chic viral swag listicle next</i> level.</td>\n</tr>\n<tr>\n<th scope=\"row\">Ownership and Location</th>\n<td>Bistromath</td>\n</tr>\n<tr>\n<th scope=\"row\">Current Ownership and Location</th>\n<td>Tanngrisnir</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://spinka.org/barrett\" target=\"_blank\" rel=\"noopener\">http://spinka.org/barrett<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Tumblr <i>taxidermy crucifix pabst shabby chic viral swag listicle next</i> level.",
  "e_type": "work_of_art",
  "legacy_pk": 24089,
  "alternate_spellings": null,
  "artist": "Phouchg",
  "artist_alternate_spellings": [
    "Eureka"
  ],
  "links": [
    "http://spinka.org/barrett"
  ],
  "notes": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
  "owner_location": "Bistromath",
  "owner_location_current": "Tanngrisnir",
  "letters": {
    "mentioned_in": [
      {
        "id": "6da0d07a-a07d-4ecc-af9e-8edaf87c7ea8",
        "label": "05 October 1986 - McCullough, Carlton"
      }
    ],
    "recived": [
      {
        "id": "a2f4b39b-43b4-40a7-a248-03175ed5e032",
        "label": "14 February 1971 - Joy In Repetition, Heaney, Naida"
      }
    ],
    "sent": [
      {
        "id": "9fb7f43d-c5ec-4a7f-9611-73a70531d67f",
        "label": "04 January 1951 - Feeney, Ervin"
      }
    ],
    "sent_to": [
      {
        "id": "58ea9339-f51d-49e6-958e-4dcd6099e3a2",
        "label": "05 December 1963 - Feeney, Pedro"
      }
    ],
    "sent_from": [
      {
        "id": "d75cbb7c-c010-4bc9-a2ef-230bac23958b",
        "label": "15 December 1968 - Green, Chet"
      }
    ]
  }
}
~~~

