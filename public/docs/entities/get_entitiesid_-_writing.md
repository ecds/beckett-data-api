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

<pre>GET /entities/2eeb8fe2-c1f3-450f-b257-a5a5aae3cf76</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;8aaa3b681c63f6d0300edbeaa68cefca&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: dd54adbe-1759-46e5-a9db-927da5cfa1de
X-Runtime: 1.668343
Vary: Origin
Content-Length: 2815</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "2eeb8fe2-c1f3-450f-b257-a5a5aae3cf76",
  "type": "writing",
  "label": "Behold the Man",
  "short_display": "<section><p><strong>Title</strong> Behold the Man</p>\n<p><strong>Proposal/Response</strong> Whatever your tastes, Magrathea can cater for you. We are not proud.</p>\n<p><strong>Translator</strong> Oolon Colluphid</p>\n<p><strong>Date</strong> 1952-11-27.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Title</th>\n<td>Behold the Man</td>\n</tr>\n<tr>\n<th scope=\"row\">Proposal/Response</th>\n<td>Whatever your tastes, Magrathea can cater for you. We are not proud.</td>\n</tr>\n<tr>\n<th scope=\"row\">Date</th>\n<td>1952-11-27.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</td>\n</tr>\n<tr>\n<th scope=\"row\">Archival Information</th>\n<td>Medknow Publications.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://simonis-wisozk.name/azalee.dibbert\" target=\"_blank\" rel=\"noopener\">http://simonis-wisozk.name/azalee.dibbert<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Shoreditch humblebrag typewriter bushwick bespoke vegan ramps.",
  "e_type": "writing",
  "legacy_pk": 9865,
  "date_str": "1952-11-27.",
  "links": [
    "http://simonis-wisozk.name/azalee.dibbert"
  ],
  "notes": "Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.",
  "proposal": "Whatever your tastes, Magrathea can cater for you. We are not proud.",
  "publication_information": "Medknow Publications.",
  "letters": {
    "mention": "http://example.org/entities/2eeb8fe2-c1f3-450f-b257-a5a5aae3cf76/letters?relation=mention",
    "received": "http://example.org/entities/2eeb8fe2-c1f3-450f-b257-a5a5aae3cf76/letters?relation=received",
    "sent": "http://example.org/entities/2eeb8fe2-c1f3-450f-b257-a5a5aae3cf76/letters?relation=sent",
    "destination": "http://example.org/entities/2eeb8fe2-c1f3-450f-b257-a5a5aae3cf76/letters?relation=destination",
    "origin": "http://example.org/entities/2eeb8fe2-c1f3-450f-b257-a5a5aae3cf76/letters?relation=origin"
  }
}
~~~

