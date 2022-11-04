# Entities API



## GET /entities/:id - Place

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/dedf6579-e880-4ad7-b5f5-0a279c3dcaae</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;ed2d321f71720edfad1d7e581cc7f7dc&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: ac0a5ce3-f82f-4f7b-bb29-62d258b180e6
X-Runtime: 1.438376
Vary: Origin
Content-Length: 1911</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "dedf6579-e880-4ad7-b5f5-0a279c3dcaae",
  "type": "place",
  "label": "<i>Pleiades system</i>",
  "short_display": "<section><p><strong><i>Pleiades system</i></strong></p>\n<p>Synth hashtag flannel leggings thundercats fingerstache glutenfree.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td><i>Pleiades system</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Synth hashtag flannel leggings thundercats fingerstache glutenfree.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://upton-pouros.name/ronna.cummerata\" target=\"_blank\" rel=\"noopener\">http://upton-pouros.name/ronna.cummerata<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Synth hashtag flannel leggings thundercats fingerstache glutenfree.",
  "e_type": "place",
  "legacy_pk": 95755,
  "alternate_spellings": [
    "Tatianna"
  ],
  "links": [
    "http://upton-pouros.name/ronna.cummerata"
  ],
  "letters": {
    "mentioned_in": [
      {
        "id": "d7ad3cab-a8b8-4409-966d-5cdd322a679f",
        "label": "26 March 1965 - Zboncak, Hoyt"
      }
    ],
    "recived": [
      {
        "id": "177d4dd7-a780-4316-92a7-3042523e2b5b",
        "label": "10 July 1987 - Collins, Ara, <i>Pleiades system</i>"
      }
    ],
    "sent": [
      {
        "id": "849eb92c-f8c1-429c-a1e0-73c484ed0eb7",
        "label": "14 October 1986 - Carroll, Alfonzo"
      }
    ],
    "sent_to": [
      {
        "id": "977faaef-9b4a-46b9-ac4c-a53b9a0b4028",
        "label": "23 October 1955 - Smitham, Eilene"
      }
    ],
    "sent_from": [
      {
        "id": "43b195f0-a3bc-4742-932b-cda118dae198",
        "label": "17 June 1978 - Zieme, Steven"
      }
    ]
  }
}
~~~

