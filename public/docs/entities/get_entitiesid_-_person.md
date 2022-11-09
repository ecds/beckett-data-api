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

<pre>GET /entities/accbce93-ea13-4d97-9249-ca46d269a524</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;f3802a311156d9610ba8bee527cf3a47&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 58498f35-1231-4bd6-a9f1-634e2d2d6002
X-Runtime: 1.585177
Vary: Origin
Content-Length: 2632</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "accbce93-ea13-4d97-9249-ca46d269a524",
  "type": "person",
  "label": "Leannon, Clint",
  "short_display": "<section><p><strong>Clint Leannon, 1903-1975</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td>Clint Leannon</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternative Name(s)</th>\n<td>Phi Phi O'Hara</td>\n</tr>\n<tr>\n<th scope=\"row\">Life Dates</th>\n<td>1903-1975</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>And then of course I've got this terrible pain in all the diodes down my left side.</td>\n</tr>\n<tr>\n<th scope=\"row\">Profile</th>\n<td>It’s only half completed, I’m afraid – we haven’t even finished burying the artificial dinosaur skeletons in the crust yet.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://feeney-fahey.name/gonzalo_halvorson\" target=\"_blank\" rel=\"noopener\">http://feeney-fahey.name/gonzalo_halvorson<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "And then of course I've got this terrible pain in all the diodes down my left side.",
  "e_type": "person",
  "legacy_pk": 41244,
  "alternate_names": [
    "Phi Phi O'Hara"
  ],
  "alternate_spellings": [
    "Kennedy Davenport"
  ],
  "first_name": "Clint",
  "last_name": "Leannon",
  "life_dates": "1903-1975",
  "links": [
    "http://feeney-fahey.name/gonzalo_halvorson"
  ],
  "profile": "It’s only half completed, I’m afraid – we haven’t even finished burying the artificial dinosaur skeletons in the crust yet.",
  "letters": {
    "mention": "http://example.org/entities/accbce93-ea13-4d97-9249-ca46d269a524/letters?relation=mention",
    "recived": "http://example.org/entities/accbce93-ea13-4d97-9249-ca46d269a524/letters?relation=recived",
    "sent": "http://example.org/entities/accbce93-ea13-4d97-9249-ca46d269a524/letters?relation=sent",
    "desination": "http://example.org/entities/accbce93-ea13-4d97-9249-ca46d269a524/letters?relation=destination",
    "origin": "http://example.org/entities/accbce93-ea13-4d97-9249-ca46d269a524/letters?relation=origin"
  }
}
~~~

