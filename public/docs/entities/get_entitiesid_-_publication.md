# Entities API



## GET /entities/:id - Publication

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
| authors | Array |  | false |
| notes | HTML String |  | false |
| publication_information | HTML String |  | false |
| translators | HTML String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/80dfc7a9-17bb-4160-a343-29503d50845b</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;8c43ddd83ec6727535dd21d6ca88bf40&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 02350413-b8d6-4d68-81e3-edaf850b2cce
X-Runtime: 0.998861
Vary: Origin
Content-Length: 1703</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/80dfc7a9-17bb-4160-a343-29503d50845b",
  "type": "publication",
  "label": "Charles Scribner's Sons",
  "clean_label": "Charles Scribner's Sons",
  "description": "Brooklyn xoxo tote bag small batch.",
  "clean_description": "Brooklyn xoxo tote bag small batch.",
  "short_display": "<section><p><strong>Author</strong> Walter Sobchak</p>\n<p><strong>Title</strong> Charles Scribner's Sons</p>\n<p><strong>Translator</strong> Slartibartfast</p>\n<p><strong>Publication</strong> Poutine knausgaard leggings biodiesel iphone lo-fi.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Author</th>\n<td>Walter Sobchak</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td>Charles Scribner's Sons</td>\n</tr>\n<tr>\n<th scope=\"row\">Translator</th>\n<td>Slartibartfast</td>\n</tr>\n<tr>\n<th scope=\"row\">Publication</th>\n<td>Poutine knausgaard leggings biodiesel iphone lo-fi.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>I won't enjoy it.</td>\n</tr>\n</table>",
  "e_type": "publication",
  "legacy_pk": 90252,
  "authors": [
    "Walter Sobchak"
  ],
  "notes": "I won't enjoy it.",
  "publication_information": "Poutine knausgaard leggings biodiesel iphone lo-fi.",
  "translators": [
    "Slartibartfast"
  ]
}</pre>
