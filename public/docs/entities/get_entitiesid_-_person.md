# Entities API



## GET /entities/:id - Person

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
| alternate_spellings | Array |  | false |
| first_name | HTML String |  | false |
| last_name | HTML String |  | false |
| life_dates | HTML String |  | false |
| links | Array |  | false |
| profile | HTML String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/f169095c-6f5f-45ac-ab65-17bcee3c760e</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;36c5cda448ac38aa33bc5733dcf6af81&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 0bb867b7-2d75-4403-8aa5-94ca48dcede9
X-Runtime: 1.187908
Vary: Origin
Content-Length: 1855</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/f169095c-6f5f-45ac-ab65-17bcee3c760e",
  "type": "person",
  "label": "Abernathy, Tarra",
  "clean_label": "Abernathy, Tarra",
  "description": "Life? <i>Don't talk to me about</i> life.",
  "clean_description": "Life? Don't talk to me about life.",
  "short_display": "<section><p><strong>Tarra Abernathy, 1906-1986</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td>Tarra Abernathy</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternative Name(s)</th>\n<td>Pearl</td>\n</tr>\n<tr>\n<th scope=\"row\">Life Dates</th>\n<td>1906-1986</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Life? <i>Don't talk to me about</i> life.</td>\n</tr>\n<tr>\n<th scope=\"row\">Profile</th>\n<td>Don’t Panic</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://beahan.info/gale\" target=\"_blank\" rel=\"noopener\">http://beahan.info/gale<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "e_type": "person",
  "legacy_pk": 74853,
  "alternate_names": [
    "Pearl"
  ],
  "alternate_spellings": [
    "Scarlet Envy"
  ],
  "first_name": "Tarra",
  "last_name": "Abernathy",
  "life_dates": "1906-1986",
  "links": [
    "http://beahan.info/gale"
  ],
  "profile": "Don’t Panic"
}</pre>
