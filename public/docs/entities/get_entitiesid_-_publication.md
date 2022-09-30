# Entities API



## GET /entities/:id - Publication

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

<pre>GET /entities/882183cc-d3a2-4432-a2e7-c93eb4e70eb5</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;5b9acffc702c9e8e3415db297eac0bd2&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 94b8ccd0-6490-4c31-acd2-c21162791825
X-Runtime: 0.736211
Vary: Origin
Content-Length: 2406</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/882183cc-d3a2-4432-a2e7-c93eb4e70eb5",
  "type": "publication",
  "label": "<i>University of Minnesota Press</i>",
  "short_display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> <i>University of Minnesota Press</i></p>\n<p><strong>Translator</strong> Pizpot Gargravarr</p>\n<p><strong>Publication</strong> Jean shorts kale chips venmo messenger bag wayfarers meditation distillery knausgaard paleo.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Author</th>\n<td>Maude Lebowski</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td><i>University of Minnesota Press</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Translator</th>\n<td>Pizpot Gargravarr</td>\n</tr>\n<tr>\n<th scope=\"row\">Publication</th>\n<td>Jean shorts kale chips venmo messenger bag wayfarers meditation distillery knausgaard paleo.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</td>\n</tr>\n</table>",
  "description": "Trust <i>fund sartorial cronut selvage butcher paleo</i> narwhal.",
  "e_type": "publication",
  "legacy_pk": 88038,
  "authors": [
    "Maude Lebowski"
  ],
  "notes": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
  "publication_information": "Jean shorts kale chips venmo messenger bag wayfarers meditation distillery knausgaard paleo.",
  "translators": [
    "Pizpot Gargravarr"
  ]
}
~~~

