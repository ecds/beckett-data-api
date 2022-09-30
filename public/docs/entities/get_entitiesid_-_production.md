# Entities API



## GET /entities/:id - Production

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

<pre>GET /entities/e7a766b6-169d-4bbe-96fd-a6bc033c9157</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;0e69c86748741998fda1e03002b83343&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 830716fd-fca8-47ca-ac80-79c647492eb2
X-Runtime: 0.731647
Vary: Origin
Content-Length: 3425</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/e7a766b6-169d-4bbe-96fd-a6bc033c9157",
  "type": "production",
  "label": "<i>Die Hard</i>",
  "short_display": "<section><p><strong>Title</strong> <i>Die Hard</i></p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / Whatever your tastes, Magrathea can cater for you. We are not proud.</p>\n<p><strong>Director</strong> The Dude <strong>Theatre, City</strong> Krikkit One, Toneyfurt</p>\n<p><strong>Date(s)</strong> 1969-05-06.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Title</th>\n<td colspan=\"5\"><i>Die Hard</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Proposal</th>\n<td>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</td>\n<th scope=\"row\">Response</th>\n<td>Whatever your tastes, Magrathea can cater for you. We are not proud.</td>\n<th scope=\"row\">Reason</th>\n<td>You're gonna have to fight your own damn war, cause we don't want to fight no more.</td>\n</tr>\n<tr>\n<th scope=\"row\">Date(s)</th>\n<td colspan=\"5\">1969-05-06.</td>\n</tr>\n<tr>\n<th scope=\"row\">Director</th>\n<td colspan=\"5\">The Dude</td>\n</tr>\n<tr>\n<th scope=\"row\">Cast</th>\n<td colspan=\"5\">Reg Nullify and Karl Hungus</td>\n</tr>\n<tr>\n<th scope=\"row\">Personnel</th>\n<td colspan=\"5\">Arthur Dent</td>\n</tr>\n<tr>\n<th scope=\"row\">Theatre, City</th>\n<td colspan=\"5\">Krikkit One, Toneyfurt</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td colspan=\"5\">Swag franzen tattooed tote bag.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td colspan=\"5\"><ul><li><a href=\"http://medhurst.name/risa\" target=\"_blank\" rel=\"noopener\">http://medhurst.name/risa<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Everyday hashtag pitchfork mlkshk lomo.",
  "e_type": "production",
  "legacy_pk": 10716,
  "alternate_names": null,
  "cast": [
    "Reg Nullify",
    "Karl Hungus"
  ],
  "city": "Toneyfurt",
  "date_str": "1969-05-06.",
  "director": "The Dude",
  "links": [
    "http://medhurst.name/risa"
  ],
  "notes": "Swag franzen tattooed tote bag.",
  "personnel": [
    "Arthur Dent"
  ],
  "proposal": "I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.",
  "response": "Whatever your tastes, Magrathea can cater for you. We are not proud.",
  "reason": "You're gonna have to fight your own damn war, cause we don't want to fight no more.",
  "theater": "Krikkit One"
}
~~~

