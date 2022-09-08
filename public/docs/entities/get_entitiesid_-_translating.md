# Entities API



## GET /entities/:id - Translating

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
| translated_into | HTML String |  | false |
| translated_title | HTML String |  | false |
| translators | HTML String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/5187ef64-9209-442a-94a0-a52d10fb2288</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;d9320e9b61b1df1406cc786b50a4f8f7&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 3393065c-cd15-4100-b850-a804f81ea281
X-Runtime: 1.007948
Vary: Origin
Content-Length: 2343</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/5187ef64-9209-442a-94a0-a52d10fb2288",
  "type": "translating",
  "label": "<i>Fair Stood the Wind for France</i>",
  "clean_label": "Fair Stood the Wind for France",
  "description": "Tote bag butcher hella pork belly ugh.",
  "clean_description": "Tote bag butcher hella pork belly ugh.",
  "short_display": "<section><p><strong>Author</strong> Tricia McMillan, <strong>Original Title</strong> <i>Fair Stood the Wind for France</i></p>\n<p><strong>Translated into</strong> Icelandic by Max Quordlepleen</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Original Title</th>\n<td><i>Fair Stood the Wind for France</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Author</th>\n<td>Tricia McMillan</td>\n</tr>\n<tr>\n<th scope=\"row\">Translated into</th>\n<td>Icelandic by Max Quordlepleen</td>\n</tr>\n<tr>\n<th scope=\"row\">Translated Title</th>\n<td>Vogon Constructor Fleet.</td>\n</tr>\n<tr>\n<th scope=\"row\">Publication/Production</th>\n<td>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</td>\n</tr>\n</table>",
  "e_type": "translating",
  "legacy_pk": 86758,
  "authors": [
    "Tricia McMillan"
  ],
  "notes": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
  "translated_into": "icelandic",
  "translated_title": "Vogon Constructor Fleet.",
  "translators": [
    "Max Quordlepleen"
  ]
}</pre>
