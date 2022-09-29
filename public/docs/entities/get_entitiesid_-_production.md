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

<pre>GET /entities/88b9d951-7502-4cc0-8f8b-883391156f0c</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;ff6cba51ed746b722ae9102f45d0b843&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: b7969373-d4e0-464f-9787-2e5d81403841
X-Runtime: 0.766482
Vary: Origin
Content-Length: 3786</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/88b9d951-7502-4cc0-8f8b-883391156f0c",
  "type": "production",
  "label": "<i>Star Wars: Episode VIII – The Last Jedi</i>",
  "short_display": "<section><p><strong>Title</strong> <i>Star Wars: Episode VIII – The Last Jedi</i></p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / ...they discovered only a small asteroid inhabited by a solitary old man who claimed repeatedly that nothing was true, though he was later discovered to be lying.</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> Krikkit One, Rolfsonberg</p>\n<p><strong>Date(s)</strong> 1963-10-19.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Title</th>\n<td colspan=\"5\"><i>Star Wars: Episode VIII – The Last Jedi</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Proposal</th>\n<td>Life? Don't talk to me about life.</td>\n<th scope=\"row\">Response</th>\n<td>...they discovered only a small asteroid inhabited by a solitary old man who claimed repeatedly that nothing was true, though he was later discovered to be lying.</td>\n<th scope=\"row\">Reason</th>\n<td>You were so hard to find, the beautiful ones, they hurt you every time.</td>\n</tr>\n<tr>\n<th scope=\"row\">Date(s)</th>\n<td colspan=\"5\">1963-10-19.</td>\n</tr>\n<tr>\n<th scope=\"row\">Director</th>\n<td colspan=\"5\">The Big Lebowski</td>\n</tr>\n<tr>\n<th scope=\"row\">Cast</th>\n<td colspan=\"5\">Zarquon and The Big Lebowski</td>\n</tr>\n<tr>\n<th scope=\"row\">Personnel</th>\n<td colspan=\"5\">Elvis</td>\n</tr>\n<tr>\n<th scope=\"row\">Theatre, City</th>\n<td colspan=\"5\">Krikkit One, Rolfsonberg</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td colspan=\"5\">Quinoa messenger bag 8-bit microdosing pabst freegan pitchfork.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td colspan=\"5\"><ul><li><a href=\"http://weber-feeney.name/cleo_schulist\" target=\"_blank\" rel=\"noopener\">http://weber-feeney.name/cleo_schulist<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Wes <i>anderson listicle tilde muggle magic disrupt tofu pork</i> belly.",
  "e_type": "production",
  "legacy_pk": 3055,
  "alternate_names": null,
  "cast": [
    "Zarquon",
    "The Big Lebowski"
  ],
  "city": "Rolfsonberg",
  "date_str": "1963-10-19.",
  "director": "The Big Lebowski",
  "links": [
    "http://weber-feeney.name/cleo_schulist"
  ],
  "notes": "Quinoa messenger bag 8-bit microdosing pabst freegan pitchfork.",
  "personnel": [
    "Elvis"
  ],
  "proposal": "Life? Don't talk to me about life.",
  "response": "...they discovered only a small asteroid inhabited by a solitary old man who claimed repeatedly that nothing was true, though he was later discovered to be lying.",
  "reason": "You were so hard to find, the beautiful ones, they hurt you every time.",
  "theater": "Krikkit One"
}</pre>
