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

<pre>GET /entities/39a1b35c-6259-44c4-9e09-210264688b68</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;114d7daf23da15b98e612f7521c581df&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 319dad5f-00c5-4d79-810f-526640bd88a6
X-Runtime: 1.635657
Vary: Origin
Content-Length: 2733</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "39a1b35c-6259-44c4-9e09-210264688b68",
  "type": "music",
  "label": "<i>Head</i>",
  "short_display": "<section><p><strong>Composer</strong> Colin the Security Robot</p>\n<p><strong>Title</strong> <i>Head</i></p>\n<p><strong>Description</strong> Listicle <i>kogi cred semiotics vhs phlogiston cray fashion axe</i> brunch.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Composer</th>\n<td>Colin the Security Robot</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td><i>Head</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Alternate Title(s)</th>\n<td>Darienne Lake</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Listicle <i>kogi cred semiotics vhs phlogiston cray fashion axe</i> brunch.</td>\n</tr>\n<tr>\n<th scope=\"row\">Performed by</th>\n<td>The Dude</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>You ask me if I love you, it's automatic.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://schoen.io/ty\" target=\"_blank\" rel=\"noopener\">http://schoen.io/ty<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Listicle <i>kogi cred semiotics vhs phlogiston cray fashion axe</i> brunch.",
  "e_type": "music",
  "legacy_pk": 52007,
  "alternate_names": [
    "Darienne Lake"
  ],
  "alternate_spellings": null,
  "composer": "Colin the Security Robot",
  "links": [
    "http://schoen.io/ty"
  ],
  "notes": "You ask me if I love you, it's automatic.",
  "performed_by": [
    "The Dude"
  ],
  "letters": {
    "mention": "http://example.org/entities/39a1b35c-6259-44c4-9e09-210264688b68/letters?relation=mention",
    "received": "http://example.org/entities/39a1b35c-6259-44c4-9e09-210264688b68/letters?relation=received",
    "sent": "http://example.org/entities/39a1b35c-6259-44c4-9e09-210264688b68/letters?relation=sent",
    "destination": "http://example.org/entities/39a1b35c-6259-44c4-9e09-210264688b68/letters?relation=destination",
    "origin": "http://example.org/entities/39a1b35c-6259-44c4-9e09-210264688b68/letters?relation=origin"
  }
}
~~~

