# Entities API



## GET /entities/:id - Production

### GET /entities/:id

### Response Fields

| Name | Default | Description | Not Null |
|------|---------|-------------|----------|
| label | HTML String |  | true |
| clean_label | String |  | true |
| description | HTML String |  | true |
| clean_description | String |  | true |
| display_header | HTML String |  | true |
| label | HTML String |  | false |
| description | HTML String |  | false |
| e_type | HTML String |  | false |
| legacy_pk | HTML String |  | false |
| alternate_names | Array |  | false |
| cast | Array |  | false |
| city | HTML String |  | false |
| date_str | HTML String |  | false |
| director | HTML String |  | false |
| links | Array |  | false |
| notes | HTML String |  | false |
| personnel | Array |  | false |
| proposal | HTML String |  | false |
| response | HTML String |  | false |
| reason | HTML String |  | false |
| theater | HTML String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/6b426c1c-e3d3-4d15-88a2-1b2e2f56014e</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;85018600a5355d3bd0b3ed98cc9c6dff&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: d4a797f9-182d-4185-901d-bddaae615902
X-Runtime: 0.900749
Vary: Origin
Content-Length: 4364</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/6b426c1c-e3d3-4d15-88a2-1b2e2f56014e",
  "type": "production",
  "label": "It Happened One Night",
  "clean_label": "It Happened One Night",
  "description": "Bushwick <i>vinyl churchkey swag crucifix street heirloom park</i> cornhole.",
  "clean_description": "Bushwick vinyl churchkey swag crucifix street heirloom park cornhole.",
  "short_display": "<section><p><strong>Title</strong> It Happened One Night</p>\n<p><strong>Proposal/Response</strong> You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level. / If they don’t keep exercising their lips, he thought, their brains start working.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> Vogon Constructor Fleet, Thurmanfort</p>\n<p><strong>Date(s)</strong> 1924-04-20.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Title</th>\n<td colspan=\"5\">It Happened One Night</td>\n</tr>\n<tr>\n<th scope=\"row\">Proposal</th>\n<td>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</td>\n<th scope=\"row\">Response</th>\n<td>If they don’t keep exercising their lips, he thought, their brains start working.</td>\n<th scope=\"row\">Reason</th>\n<td>Paint a perfect picture, bring to life a vision in one's mind. The beautiful ones always smash the picture. Always. Everytime.</td>\n</tr>\n<tr>\n<th scope=\"row\">Date(s)</th>\n<td colspan=\"5\">1924-04-20.</td>\n</tr>\n<tr>\n<th scope=\"row\">Director</th>\n<td colspan=\"5\">Bunny Lebowski</td>\n</tr>\n<tr>\n<th scope=\"row\">Cast</th>\n<td colspan=\"5\">Random Dent and Donny</td>\n</tr>\n<tr>\n<th scope=\"row\">Personnel</th>\n<td colspan=\"5\">Effrafax of Wug</td>\n</tr>\n<tr>\n<th scope=\"row\">Theatre, City</th>\n<td colspan=\"5\">Vogon Constructor Fleet, Thurmanfort</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td colspan=\"5\">Craft beer ugh goth marfa jean shorts lo-fi pop-up.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td colspan=\"5\"><ul><li><a href=\"http://stark.net/elvis_kunde\" target=\"_blank\" rel=\"noopener\">http://stark.net/elvis_kunde<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "e_type": "production",
  "legacy_pk": 92955,
  "alternate_names": null,
  "cast": [
    "Random Dent",
    "Donny"
  ],
  "city": "Thurmanfort",
  "date_str": "1924-04-20.",
  "director": "Bunny Lebowski",
  "links": [
    "http://stark.net/elvis_kunde"
  ],
  "notes": "Craft beer ugh goth marfa jean shorts lo-fi pop-up.",
  "personnel": [
    "Effrafax of Wug"
  ],
  "proposal": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
  "response": "If they don’t keep exercising their lips, he thought, their brains start working.",
  "reason": "Paint a perfect picture, bring to life a vision in one's mind. The beautiful ones always smash the picture. Always. Everytime.",
  "theater": "Vogon Constructor Fleet"
}</pre>
