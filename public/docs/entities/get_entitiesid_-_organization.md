# Entities API



## GET /entities/:id - Organization

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
| profile | HTML String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/29408cf9-b103-4685-a2d9-0a04ff26efb0</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;0e9a35caef579b50a8c7d8b5a4bbcd4d&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 04859bf0-e987-4de6-aefb-f70778b93629
X-Runtime: 0.898545
Vary: Origin
Content-Length: 1935</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/29408cf9-b103-4685-a2d9-0a04ff26efb0",
  "type": "organization",
  "label": "<i>Argabuthon</i>",
  "clean_label": "Argabuthon",
  "description": "I think you ought to know I'm feeling very depressed.",
  "clean_description": "I think you ought to know I'm feeling very depressed.",
  "short_display": "<section><p><strong><i>Argabuthon</i></strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td><i>Argabuthon</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>I think you ought to know I'm feeling very depressed.</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternate Name(s)</th>\n<td>Vanessa Vanjie Mateo</td>\n</tr>\n<tr>\n<th scope=\"row\">Profile</th>\n<td>It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>Life it ain't real funky, unless it's got that pop. Dig it.</td>\n</tr>\n</table>",
  "e_type": "organization",
  "legacy_pk": 884,
  "alternate_names": [
    "Vanessa Vanjie Mateo"
  ],
  "alternate_spellings": null,
  "profile": "It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane."
}</pre>
