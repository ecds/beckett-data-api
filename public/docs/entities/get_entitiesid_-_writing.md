# Entities API



## GET /entities/:id - Writing

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

<pre>GET /entities/928d4b9c-51ee-43ad-b233-426d8480eae6</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;eb648ecae4874dfafe906edf41148284&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: beb96222-197c-44e3-bbad-bfff1d7d4517
X-Runtime: 0.744839
Vary: Origin
Content-Length: 2297</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/928d4b9c-51ee-43ad-b233-426d8480eae6",
  "type": "writing",
  "label": "The Doors of Perception",
  "short_display": "<section><p><strong>Title</strong> The Doors of Perception</p>\n<p><strong>Proposal/Response</strong> I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Translator</strong> Frankie and Benjy</p>\n<p><strong>Date</strong> 1943-11-28.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Title</th>\n<td>The Doors of Perception</td>\n</tr>\n<tr>\n<th scope=\"row\">Proposal/Response</th>\n<td>I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</td>\n</tr>\n<tr>\n<th scope=\"row\">Date</th>\n<td>1943-11-28.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</td>\n</tr>\n<tr>\n<th scope=\"row\">Archival Information</th>\n<td>Lion Hudson.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://leannon-feil.co/maxie.lubowitz\" target=\"_blank\" rel=\"noopener\">http://leannon-feil.co/maxie.lubowitz<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Mlkshk xoxo pinterest blog brunch.",
  "e_type": "writing",
  "legacy_pk": 44347,
  "date_str": "1943-11-28.",
  "links": [
    "http://leannon-feil.co/maxie.lubowitz"
  ],
  "notes": "I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.",
  "proposal": "I've just had an unhappy love affair, so I don't see why anybody else should have a good time.",
  "publication_information": "Lion Hudson."
}
~~~

