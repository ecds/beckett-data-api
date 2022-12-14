# Entities API



## GET /entities/:id - Person

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/682c34d7-e654-49d4-b50c-ac20921b99d0</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;9006d6cd89e0fc96aace1d18a856a336&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: a31cc55a-c03e-4fcf-b6c4-5347f6d9339a
X-Runtime: 1.712924
Vary: Origin
Content-Length: 2762</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "682c34d7-e654-49d4-b50c-ac20921b99d0",
  "type": "person",
  "label": "Renner, Vern",
  "short_display": "<section><p><strong>Vern Renner, 1919-1990</strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td>Vern Renner</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternative Name(s)</th>\n<td>Sasha Velour</td>\n</tr>\n<tr>\n<th scope=\"row\">Life Dates</th>\n<td>1919-1990</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>I <i>think you ought to know I'm feeling very</i> depressed.</td>\n</tr>\n<tr>\n<th scope=\"row\">Profile</th>\n<td>It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://rice-pollich.io/chanel.spinka\" target=\"_blank\" rel=\"noopener\">http://rice-pollich.io/chanel.spinka<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "I <i>think you ought to know I'm feeling very</i> depressed.",
  "e_type": "person",
  "legacy_pk": 24125,
  "alternate_names": [
    "Sasha Velour"
  ],
  "alternate_spellings": [
    "Aja"
  ],
  "first_name": "Vern",
  "last_name": "Renner",
  "life_dates": "1919-1990",
  "links": [
    "http://rice-pollich.io/chanel.spinka"
  ],
  "profile": "It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.",
  "letters": {
    "mention": "http://example.org/entities/682c34d7-e654-49d4-b50c-ac20921b99d0/letters?relation=mention",
    "received": "http://example.org/entities/682c34d7-e654-49d4-b50c-ac20921b99d0/letters?relation=received",
    "sent": "http://example.org/entities/682c34d7-e654-49d4-b50c-ac20921b99d0/letters?relation=sent",
    "destination": "http://example.org/entities/682c34d7-e654-49d4-b50c-ac20921b99d0/letters?relation=destination",
    "origin": "http://example.org/entities/682c34d7-e654-49d4-b50c-ac20921b99d0/letters?relation=origin"
  }
}
~~~

