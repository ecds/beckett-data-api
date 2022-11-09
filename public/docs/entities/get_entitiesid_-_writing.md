# Entities API



## GET /entities/:id - Writing

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/3f4003ac-f231-4edb-b05f-5503b35e6d30</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;03f7cdbe18bfe02f9a0c961f752c4699&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: ea53dc19-8163-4a41-8929-f09634c8a556
X-Runtime: 2.127563
Vary: Origin
Content-Length: 2876</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "3f4003ac-f231-4edb-b05f-5503b35e6d30",
  "type": "writing",
  "label": "<i>Françoise Sagan</i>",
  "short_display": "<section><p><strong>Title</strong> <i>Françoise Sagan</i></p>\n<p><strong>Proposal/Response</strong> Nothing travels faster than the speed of light with the possible exception of bad news, which obeys its own special laws.</p>\n<p><strong>Translator</strong> Slartibartfast</p>\n<p><strong>Date</strong> 1934-07-28.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Title</th>\n<td><i>Françoise Sagan</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Proposal/Response</th>\n<td>Nothing travels faster than the speed of light with the possible exception of bad news, which obeys its own special laws.</td>\n</tr>\n<tr>\n<th scope=\"row\">Date</th>\n<td>1934-07-28.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>Life? Don't talk to me about life.</td>\n</tr>\n<tr>\n<th scope=\"row\">Archival Information</th>\n<td>Shambhala Publications.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://heaney-carroll.org/cathi_dickinson\" target=\"_blank\" rel=\"noopener\">http://heaney-carroll.org/cathi_dickinson<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Aesthetic lomo yolo tattooed ennui brunch thundercats butcher.",
  "e_type": "writing",
  "legacy_pk": 48425,
  "date_str": "1934-07-28.",
  "links": [
    "http://heaney-carroll.org/cathi_dickinson"
  ],
  "notes": "Life? Don't talk to me about life.",
  "proposal": "Nothing travels faster than the speed of light with the possible exception of bad news, which obeys its own special laws.",
  "publication_information": "Shambhala Publications.",
  "letters": {
    "mention": "http://example.org/entities/3f4003ac-f231-4edb-b05f-5503b35e6d30/letters?relation=mention",
    "recived": "http://example.org/entities/3f4003ac-f231-4edb-b05f-5503b35e6d30/letters?relation=recived",
    "sent": "http://example.org/entities/3f4003ac-f231-4edb-b05f-5503b35e6d30/letters?relation=sent",
    "desination": "http://example.org/entities/3f4003ac-f231-4edb-b05f-5503b35e6d30/letters?relation=destination",
    "origin": "http://example.org/entities/3f4003ac-f231-4edb-b05f-5503b35e6d30/letters?relation=origin"
  }
}
~~~

