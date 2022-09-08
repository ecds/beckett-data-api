# Entities API



## GET /entities/:id - Writing

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
| date_str | HTML String |  | false |
| links | Array |  | false |
| notes | HTML String |  | false |
| proposal | HTML String |  | false |
| publication_information | HTML String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/0f6ea540-34bf-4a34-8d8d-3f523297df81</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;87ba185a91536731bef6160772e0afde&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 9d16b14c-642a-4905-b835-4de182771bae
X-Runtime: 0.985191
Vary: Origin
Content-Length: 2663</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/0f6ea540-34bf-4a34-8d8d-3f523297df81",
  "type": "writing",
  "label": "Postern of Fate",
  "clean_label": "Postern of Fate",
  "description": "Kogi <i>chambray synth muggle magic organic roof</i> chicharrones.",
  "clean_description": "Kogi chambray synth muggle magic organic roof chicharrones.",
  "short_display": "<section><p><strong>Title</strong> Postern of Fate</p>\n<p><strong>Proposal/Response</strong> He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</p>\n<p><strong>Translator</strong> Deep Thought</p>\n<p><strong>Date</strong> 1951-02-14.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Title</th>\n<td>Postern of Fate</td>\n</tr>\n<tr>\n<th scope=\"row\">Proposal/Response</th>\n<td>He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</td>\n</tr>\n<tr>\n<th scope=\"row\">Date</th>\n<td>1951-02-14.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</td>\n</tr>\n<tr>\n<th scope=\"row\">Archival Information</th>\n<td>New Directions Publishing.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://bode.name/valentine\" target=\"_blank\" rel=\"noopener\">http://bode.name/valentine<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "e_type": "writing",
  "legacy_pk": 10809,
  "date_str": "1951-02-14.",
  "links": [
    "http://bode.name/valentine"
  ],
  "notes": "Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.",
  "proposal": "He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.",
  "publication_information": "New Directions Publishing."
}</pre>
